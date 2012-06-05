require 'geocoder'
require 'geocoder/ext/result_google'
require 'api_key'

module Fetcher
  class MapQuestTraffic < Base
    include APIKey

    api_key_param_name :key

    TRAFFIC_INCIDENTS_URI = "/incidents"

    base_uri "http://www.mapquestapi.com/traffic/v1"
    format :json

    def fetch
      @data = http_request(traffic_incident_uri, traffic_options) do |data|
        count_sever_incidents data
      end
    end

    private
    def traffic_incident_uri
      TRAFFIC_INCIDENTS_URI
    end

    def find_zip_bounding_box( order )
      Geocoder.search(@cue)[0].bounding_box(order).join(',')
    end

    def traffic_options
      order = [:north_lat, :west_lng, :south_lat, :east_lng]
      as_query boundingBox: find_zip_bounding_box(order),
               filters:     :incidents,
               outFormat:   :json
    end

    def count_sever_incidents( response_body )
        response_body["incidents"].count{ |incident| incident["severity"] == 4 }
    end

    def as_query( options )
      {
        query: api_key_option.merge(options)
      }
    end
  end
end
