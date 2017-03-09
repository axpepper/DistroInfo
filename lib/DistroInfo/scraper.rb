class DistroInfo::Scraper

	attr_accessor :url, :list

	def initialize(url)
		@list=[]
	end

	def scrape_list
		scraped_info = [["ubuntu","http://google.com",2],["mint","http://mint.com",1]]
		
	end

	def scrape_info
		
	end

end