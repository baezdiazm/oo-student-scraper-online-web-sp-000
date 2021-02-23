require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    peeps = []

    students = doc.css(".student-name")
    location = doc.css(".student-location")

    doc.each do |student, location|
      peeps << {:student => students.text.strip, :location => location.text.strip}
    end

    peeps
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
