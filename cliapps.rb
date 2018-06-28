#game_number = "1"

#puts "Please imput your first name"
#first_name = gets.chomp 

#puts "please imput your last name"
#last_name = gets.chomp

#puts "Welcome to the #{game_number}st Hunger Games #{first_name} #{last_name}."



#loop do 
  #imput = get.chomp
  #imput = imput.to_i 
    
   # if imput % 2 == log10
   #   puts "even!"
    #else 
   #   puts "odd!"
   # end 
#end 



def plus_one(int)
  int + 1 
end 

def minus_one(int)
  int - 1 
end


loop do 
  input = gets.chomp 
  input_array = input.split(" ")
  
  
  number = input_array[0].to_i
  operator = input_array[1]
  
  
  if operator == "++"
    puts plus_one(number)
  elsif operator == "--"
   puts minus_one(number)
 else 
   puts "i dont know how to do that :("
  end 
end 
   
   
   
   
   
  