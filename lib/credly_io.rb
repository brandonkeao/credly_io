require "credly_io/version"
require "httparty"

module CredlyIo
  include HTTParty
  base_uri "animatedgif.me"

  def self.find(id)
    get("/gifs/#{id}.json")
  end
end
