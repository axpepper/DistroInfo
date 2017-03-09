class DistroInfo::DistroList
	attr_accessor :distros
	
	def initialize
		@distros=[]
	end

	def names
		@distros.each{|distro| puts disto.name}
	end

	def add_distro(distro)
		@distros << distro
	end

end