class String
def red;
    "\e[31m#{self}\e[0m" 
end

def blue;
    "\e[34m#{self}\e[0m" 
end

def green;
    "\e[32m#{self}\e[0m"
end

def underline;
    "\e[4m#{self}\e[24m" 
end

end

def greeting
    puts "Hello! Welcome to Amazon.".blue
    puts ""
end
greeting

puts "Do you have amazon prime?"
puts "input " + "y ".green + "for yes and " + "n ".red + "for no"

prime = gets.chomp
if prime == "y"
    puts "Your shipping is free"
    shipping = 0.00
    extra = 0.00
else
    puts "Shipping for each item is $2"
    shipping = 1.00
    extra = 9.00
end

puts ""
puts "input an a, b, or c to select item."
puts ""


puts "What would you like to buy for your first item?".blue
puts "a. light bulb (pack of 4)"
puts "b. scooter"
puts "c. notebook"
    
choice1 = gets.chomp
    
if choice1 == "a"
    price1 = shipping + 8.00
elsif choice1 == "b"
    price1 = shipping + 60.00
elsif choice1 == "c"
    price1 = shipping + 10.00
else
    puts "this item is out of stock".upcase.red
    price1 = 0.00
end


puts "What would you like to buy for your second item?".blue
puts "a. bookbag"
puts "b. phone"
puts "c. pens (12-count)"
    
choice2 = gets.chomp
    
if choice2 == "a"
    price2 = shipping + 25.00
elsif choice2 == "b"
    price2 = shipping + 150.00
elsif choice2 == "c"
    price2 = shipping + 15.00
else
    puts "this item is out of stock".upcase.red
    price2 = 0.00
end

puts "What would you like to buy for your third item?".blue
puts "a. giant gummy bear"
puts "b. gum (5-pack)"
puts "c. 7.7 ounce jars of nutella (12-count)"

choice3 = gets.chomp
    
if choice3 == "a"
    price3 = shipping + 35.00
elsif choice3 == "b"
    price3 = shipping + 10.00
elsif choice3 == "c"
    price3 = shipping + 38.00
else
    puts "this item is out of stock".upcase.red
    price3 = 0.00
end


final_cost = price1 + price2 + price3 + extra

puts ""
puts "Your first item costs " + "$#{price1}".underline + "."
puts "Your second item costs " + "$#{price2}".underline + "."
puts "Your third item costs " + "$#{price3}".underline + "."
puts ""
puts "Your final cost is " + "$#{final_cost}".green.underline + "."
puts ""
puts "Thank you for shopping at Amazon! :)".blue