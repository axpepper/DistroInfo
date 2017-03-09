class DistroInfo::Distro

	@@all = []
	attr_accessor :name, :url, :homepage, :popularity, :info

	def initialize(name, url, homepage=nil, popularity=nil, info=nil)
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

end