class DistroInfo::CLI

DISTROS = ["ubuntu","mint","fedora"]

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
			
			input = gets.strip.downcase
			case input
			when "help"
				help
			when "list"
				puts "Top 50 Linux OSs"
			else 
				if DISTROS.include?(input)
					puts "Information about #{input}"
				end
			end
		end
	end

end