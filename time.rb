time = Time.new
hour = time.strftime("%H").to_i

if hour < 6
	puts "\e[31mIt's late dude"
elsif hour < 12
	puts "\e[31mGood morning William"
elsif hour < 18
	puts "\e[31mGood afternoon William"
elsif hour < 24;
	puts "\e[31mGood evening William"
end

puts "The time is currently #{time.strftime("%I:%M%P, %d-%h %Y")}"
sleep(5)
