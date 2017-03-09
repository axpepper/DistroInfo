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

	def self.new_from_scraper(array)
		self.new(array[0], array[1], array[3])
	end


end