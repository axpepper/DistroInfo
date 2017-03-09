class DistroInfo::Scraper

	attr_accessor :url, :list

	def initialize(url)
		@url=url
	end

	def scrape_list
		scraped_info = [["ubuntu","http://google.com",2],["mint","http://mint.com",1]]
		@list = DistroInfo::DistroList.new
		scraped_info.each{|attributes| @list.add_distro(DistroInfo::Distro.new_from_scraper[attributes])}	
	end

	def scrape_info
		
	end

end