require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))

    cards = doc.css(".card-text-container")

    card.each do |item|
      student = Student.new
      student.name = item.css(".student-name").text.strip
      student.location = item.css(".student-location").text.strip
    end

    #students = doc.css(".student-name")
    #location = doc.css(".student-location")
    binding.pry
  end




  def self.scrape_profile_page(profile_url)

  end
end
