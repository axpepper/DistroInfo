class DistroInfo::CLI

	def call
		introduction		
		menu
	end

	def help
		puts <<-DOC
		This program has the following utilities:
			list - lists the top 50 Distros this month on DistroWatch.com
			distro - Returns Info about a given distrobution
			help - lists commands
		DOC
	end

	def introduction
		puts "Welcome to DistroInfo"
	end

	def menu
		input=nil
		while input!="exit"
			puts "What Distro would you like information about? Type Help for more options."
			input = gets.strip
			help
		end
	end

end