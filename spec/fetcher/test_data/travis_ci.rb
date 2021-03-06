require 'json'

module Fetcher
  module TestData
    class TravisCI
      BUILD_DATA = [
        {
          "id" => 1385043,
          "repository_id" => 14871,
          "number" => "29",
          "state" => "finished",
          "result" => 1,
          "started_at" => "2012-05-21T01:03:35Z",
          "finished_at" => "2012-05-21T01:07:11Z",
          "duration" => 1594,
          "commit" => "4fd45c07f559293ab44b069ea82cf9f058e086e9",
          "branch" => "2.2",
          "message" => "Merge pull request #660 from jellehenkens/2.2-http-socket-duplicate-code\n\nRemoving an unnecessary if statement in HttpSocket",
          "event_type" => "push"
        },
        {
          "id" => 1384686,
          "repository_id" => 14871,
          "number" => "28",
          "state" => "finished",
          "result" => 1,
          "started_at" => "2012-05-20T23:41:16Z",
          "finished_at" => "2012-05-20T23:44:57Z",
          "duration" => 1571,
          "commit" => "bb368c569c94b0989c548211d4205d4863599d64",
          "branch" => "2.2",
          "message" => "Merge pull request #659 from tigrang/inputDefaults-setter\n\nInput defaults setter for FormHelper",
          "event_type" => "push"
        },
        {
          "id" => 1384559,
          "repository_id" => 14871,
          "number" => "27",
          "state" => "finished",
          "result" => 1,
          "started_at" => "2012-05-20T23:22:26Z",
          "finished_at" => "2012-05-20T23:26:10Z",
          "duration" => 1557,
          "commit" => "9cceb1553f344442789462c1fe7f67683b7474d8",
          "branch" => "2.2",
          "message" => "Improving ModelValidator::add() to allow multiple rules to be defined at once",
          "event_type" => "push"
        },
      ].freeze

      JSON_DATA = JSON.generate BUILD_DATA

      EXPECTED_DATA = {
        "id" => 1385043,
        "repository_id" => 14871,
        "number" => "29",
        "state" => "finished",
        "result" => 1,
        "started_at" => "2012-05-21T01:03:35Z",
        "finished_at" => "2012-05-21T01:07:11Z",
        "duration" => 1594,
        "commit" => "4fd45c07f559293ab44b069ea82cf9f058e086e9",
        "branch" => "2.2",
        "message" => "Merge pull request #660 from jellehenkens/2.2-http-socket-duplicate-code\n\nRemoving an unnecessary if statement in HttpSocket",
        "event_type" => "push"
      }.freeze
    end
  end
end
