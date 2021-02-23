require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-name")
    peeps = []
    students.each do |student|
      peeps << student.text.strip
    end
    peeps
    #binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
