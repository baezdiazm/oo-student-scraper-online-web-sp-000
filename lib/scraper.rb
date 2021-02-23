require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))

    cards = doc.css(".card-text-container a")
    cards.collect do |item|
      { :name => item.css(".student-name").text,
        :location => item.css(".student-location").text
      }
    end

    #students = doc.css(".student-name")
    #location = doc.css(".student-location")
    #binding.pry
  end




  def self.scrape_profile_page(profile_url)

  end
end
