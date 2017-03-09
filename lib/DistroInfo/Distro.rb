class DistroInfo::Distro

	@@all = []
	attr_accessor :name, :url, :homepage, :popularity, :info

	def initialize(name, url, popularity, homepage=nil, info=nil)
		@name=name
		@url=url
		@homepage=homepage
		@popularity=popularity
		@info=info
		save
	end	

	def save
		@@all<< self
	end

	def self.new_from_scraper(name, url, popularity)
		self.new(name, url, popularity)
	end


end