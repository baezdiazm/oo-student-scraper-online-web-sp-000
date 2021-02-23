require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    cards = doc.css(".student-card a")

    cards.collect do |item|
      { :name => item.css(".student-name").text,
        :location => item.css(".student-location").text,
        :profile_url => item.attr('href')
      }
    end
  end

  def self.scrape_profile_page(profile_url)

    doc = Nokogiri::HTML(open(profile_url))
  end
end
