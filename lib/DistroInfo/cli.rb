class DistroInfo::CLI

	def call
		commands = <<-DOC
			list - lists the top 50 Distros this month on DistroWatch.com
			info("Distro") - Returns Info about a given "distro"
			
		DOC
		puts "This program has the following utilities:\n #{commands}"

	end

end