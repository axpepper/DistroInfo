class DistroInfo::Distro

	@@all = []
	attr_accessor :name, :url, :homepage, :popularity, :info

	def initialize(name, url, popularity, homepage=nil, info=nil)
		@name=name
		@url=url
		@popularity=popularity
		@homepage=homepage
		@info=info
		save
	end	

	def save
		@@all<< self
	end

	def self.new_from_scraper(array)
		self.new(array[0], array[1], array[2])
	end

	def update(array)
		@homepage=array[0]
		@info=array[1]
	end

	def print
		puts @name
		puts @popularity
		puts @homepage
		puts @info		
	end	

end