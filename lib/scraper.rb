require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    peeps = []
    doc.each do |item|
      students = doc.css(".student-name")
      location = doc.css(".student-location")
    end


    
    students.each do |student|
      peeps << { :name => student.text.strip}
    end
    peeps
    #binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
