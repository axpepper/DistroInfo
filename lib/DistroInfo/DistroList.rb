class DistroInfo::DistroList
	attr_accessor :distros
	
	def initialize
		@distros=[]
	end
	
	def names
		["ubuntu","mint","fedora"]
	end

	def add_distro(distro)
		@distros << distro
	end

end