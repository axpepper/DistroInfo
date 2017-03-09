class DistroInfo::DistroList
	attr_accessor :distros
	
	def initialize
		@distros=[]
	end

	def names
		@distros.map{|distro| distro.name}
	end

	def popularities
		@distros.map{|distro| distro.popularity}
	end

	def print
		@distros.each{|distro| puts distro.name + "\t-\t" + distro.popularity.to_s }
	end

	def find(name)
		@distros.find{|distro| distro.name.downcase == name}
	end

	def add_distro(distro)
		@distros << distro
	end

end