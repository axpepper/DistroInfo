class DistroInfo::CLI

	attr_accessor :distrolist

DISTROS = ["ubuntu","mint","fedora"]

	def call
		introduction		
		menu
	end

	def help
		puts <<~DOC

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
		@distrolist = DistroInfo::DistroList.new

		input=nil
		while input!="exit"
			puts "What Distro would you like information about? Type Help for options or exit to leave."
			
			input = gets.strip.downcase
			case input 
			when "help"
				help
			when "list"
				DistroInfo::Scraper.new("https://distrowatch.com/dwres.php?resource=popularity").scrape_list
			when -> input{@distrolist.names.include?(input)}
				puts "Information about #{input}"
			else  
				puts "Invalid Input!" if input !="exit"	
			end

		end
	end

end