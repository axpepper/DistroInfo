class DistroInfo::Scraper

	attr_accessor :url, :list

	def initialize(url)
		@url=url
	end

	def scrape_list
		scraped_list = [["ubuntu","http://google.com",2],["mint","http://mint.com",1]]
		@list = DistroInfo::DistroList.new
		scraped_list.each do |attributes|
			new_distro = DistroInfo::Distro.new_from_scraper(attributes) 
			@list.add_distro(new_distro)
		end
		@list	
	end

	def scrape_info(distro)
		scraped_info = ["http://www.dummy-homepage1.com", "Dumb information"]
		distro.update(scraped_info)	
	end

end