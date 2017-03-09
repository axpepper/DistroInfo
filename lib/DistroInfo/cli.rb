class DistroInfo::CLI

	attr_accessor :distrolist,:scraper

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

		@scraper = DistroInfo::Scraper.new("https://distrowatch.com/dwres.php?resource=popularity")
		@distrolist = @scraper.scrape_list

		input=nil
		while input!="exit"
			puts "What Distro would you like information about? Type Help for options or exit to leave."
			
			input = gets.strip.downcase
			case input 
			when "help"
				help
			when "list"
				puts @distrolist.names
			when -> input{@distrolist.names.include?(input)}
				distro = @distrolist.find(input)
				@scraper.scrape_info(distro)
				distro.print
			else  
				puts "Invalid Input!" if input !="exit"
			end

		end
	end

end