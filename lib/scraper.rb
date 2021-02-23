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
    hashy = {}
    social_media = doc.css(".vitals-container .social-icon-container a")

    social_media.collect do |social|
      if social.attr("href").include?("twitter")
        hashy [:twitter] = social.attr("href")
      elsif social.attr("href").include?("github")
        hashy[:github] = social.attr("href")
      elsif social.attr("href").include?("linkedin")
        hashy[:linkedin] = social.attr("href")
      elsif social.attr("href").include?("blog")
        hashy[:blog] = social.attr("href")

      end

    end
    hashy
    #binding.pry
  end
end
