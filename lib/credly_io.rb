#require "credly_io/version"
require "httparty"

module CredlyIo
  include HTTParty
  base_uri "animatedgif.me"

  def self.gif_by_id(id)
    retrieve_url get("/gifs/#{id}.json")
  end

  def self.gif_by_tag(tag)
    retrieve_url get("/#{tag}.json")
  end

  private

    def retrieve_url(response)
      response.parsed_response["url"]
    end

end
