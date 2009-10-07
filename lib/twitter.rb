require 'rexml/document'

class Twitter
  def self.get_tweets(username)
    response = AppEngine::URLFetch.fetch("http://twitter.com/statuses/user_timeline/#{username}.xml")
    xml = REXML::Document.new(response.body)
    returning [] do |res|
      xml.elements.each("//statuses/status") do |status|
        res << status.elements['text']
      end
    end
  end
end
