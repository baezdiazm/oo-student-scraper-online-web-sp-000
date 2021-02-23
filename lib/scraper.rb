require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))

    card = doc.css(".card-text-container")
    peeps = []
    card.each do |item|
    peeps <<  {:name => item.css(".student-name"),
        :location => item.css(".student-location")
      }
    end

    #students = doc.css(".student-name")
    #location = doc.css(".student-location")
    #binding.pry
  end




  def self.scrape_profile_page(profile_url)

  end
end
