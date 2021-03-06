module LED
export ShowLED

	function Lines(number, line1, line2, line3)
	    line1 *= number[1]
	    line2 *= number[2]
	    line3 *= number[3]
	    line1, line2, line3
	end

	function ShowLED(Num::Integer)
		zero = [1=> " _  ", 2=> "| | ", 3=> "|_| "]
		one = [1=> "  ", 2=> "| ", 3=> "| "]
		two = [1=> " _  ", 2=> " _| ", 3=> "|_  "]
		three = [1=> "_  ", 2=> "_| ", 3=> "_| "]
		four = [1=> "    ", 2=> "|_| ", 3=> "  | "]
		five = [1=> " _  ", 2=> "|_  ", 3=> " _| "]
		six = [1=> " _  ", 2=> "|_  ", 3=> "|_| "]
		seven = [1=> "_   ", 2=> " |  ", 3=> " |  "]
		eight = [1=> " _  ", 2=> "|_| ", 3=> "|_| "]
		nine = [1=> " _  ", 2=> "|_| ", 3=> " _| "]
	
		num_lines = [0=> zero, 1=> one, 2=> two, 3=> three, 4=> four,
		             5=> five, 6=> six, 7=> seven, 8=> eight, 9=> nine]

		line = ""; line1 = ""; line2 = ""; line3 = ""

		Num = string(Num)
		len = length(Num)

		for i in [1:len]
	  	  line = Lines(num_lines[parseint(Num[i])],line1,line2,line3)
	  	  line = Lines(num_lines[parseint(Num[i])],line1,line2,line3)
	  	  line1 = line[1]; line2 = line[2]; line3 = line[3]
		end

		println(line1)
		println(line2)
		println(line3 * "\n")
	end

end # module
