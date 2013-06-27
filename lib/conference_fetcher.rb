require "conference_fetcher/version"
require 'pry'
require 'faraday'
require 'json'

module ConferenceFetcher
  extend self

  def get_conference(conference_slug)
    conference_request(conference_slug)
  end

  def get_track(track_id)
    track_request(track_id)
  end

private

  def conference_request(conference_slug)
    return nil if !conference_slug

    response = connection.get(conferences_uri(conference_slug))
    parse_response(response)
  end

  def track_request(track_id)
    return nil if !track_id

    response = connection.get(track_uri(track_id))
    parse_response(response)
  end

  def connection
    Faraday
  end

  def parse_response(response)
    if response.status == 200
      JSON.parse(response.body)
    else
      nil
    end
  end

  def conferences_uri(conference_slug)
    "#{base_uri}/conferences/#{conference_slug}"
  end

  def track_uri(track_id)
    "#{base_uri}/tracks/#{track_id}"
  end

  def base_uri
    'http://localhost:3001'
  end
end
