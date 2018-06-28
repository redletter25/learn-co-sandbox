class String
def black;          "\e[30m#{self}\e[0m" end
def red;            "\e[31m#{self}\e[0m" end
def green;          "\e[32m#{self}\e[0m" end
def brown;          "\e[33m#{self}\e[0m" end
def blue;           "\e[34m#{self}\e[0m" end
def pink;        "\e[35m#{self}\e[0m" end
def cyan;           "\e[36m#{self}\e[0m" end
def gray;           "\e[37m#{self}\e[0m" end

def bg_black;       "\e[40m#{self}\e[0m" end
def bg_red;         "\e[41m#{self}\e[0m" end
def bg_green;       "\e[42m#{self}\e[0m" end
def bg_brown;       "\e[43m#{self}\e[0m" end
def bg_blue;        "\e[44m#{self}\e[0m" end
def bg_pink;     "\e[45m#{self}\e[0m" end
def bg_cyan;        "\e[46m#{self}\e[0m" end
def bg_gray;        "\e[47m#{self}\e[0m" end

def bold;           "\e[1m#{self}\e[22m" end
def italic;         "\e[3m#{self}\e[23m" end
def underline;      "\e[4m#{self}\e[24m" end
def blink;          "\e[5m#{self}\e[25m" end
def reverse_color;  "\e[7m#{self}\e[27m" end
end

class String
  def capitalize_words
    string.split.map(&:capitalize).join(' ')
    # or:     .map(&:capitalize)
  end
end

puts  "What's your name?".underline
    name = gets.chomp
    puts ""
    puts "Welcome #{name}! Today, we're exposing Disney characters, where their happily ever afters aren't so black and white. Let's test if your childhood was worth it; NAME! THAT! DISNEY! CHARACTER! Hit enter to start.".underline
    ready = gets.chomp
        if ready == ""
            puts "Let's go!".underline
        else 
            puts "Error... RESTART!".underline
        end
puts ""

class Disney
    def initialize(description, name)
        @description = description
        @name = name
    end
    
    def description
        @description
    end
    
    def name 
        @name
    end

end 

class Quizzer

    @@disney_character = [ ]
    
    def self.add_description(description)
        @@disney_character << description
    end
    
    def self.quiz_description(character)
        puts "Who is #{character.description}?".cyan
        puts " "
        answer = gets.chomp.downcase.capitalize.split.map(&:capitalize)*' '
        puts " "
            if answer == character.name
                puts "WOOHOO; WE HAVE A TRUE DISNEY FAN IN OUR HANDS!".pink
                puts "Keep up the good work :)".green
            else 
                puts "YIKES! It was actually #{character.name}. Please brush up on your knowledge ASAP -- it's a disgrace.".pink
                puts "SMH; redeem your childhood...".red
            end
        puts " "
    end 
    
    def self.start_quiz
        @@disney_character.each do |description|
            self.quiz_description(description)
    end
    
    puts "Yer DONE!".bg_gray
    end
end

Quizzer.add_description(Disney.new("a neglected young girl who deals with her lack of family and imagines a monster who ends up destroying her sister's life.", "Lilo"))
Quizzer.add_description(Disney.new("an abandoned and abused animal forced to live for human entertainment... PETA's comin'", "Dumbo"))
Quizzer.add_description(Disney.new("a delusional teen - rejected by sister, dealing with hardship through a talking snowman. #feminism", "Anna"))
Quizzer.add_description(Disney.new("an adult man dressed in a leotard befriends a narcissistic woman to abduct 3 children and force them to jump off of the roof.", "Peter Pan"))
Quizzer.add_description(Disney.new("a runaway cleaning up other men's mess and waits to get saved by a man. Oh how the times have changed.", "Snow White"))

# Quizzer.quiz_description(Disney.new("a neglected young girl who deals with her lack of family and imagines a monster who ends up destroying her sister's life.", "Lilo"))
# Quizzer.quiz_description(Disney.new("an abandoned and abused animal forced to live for human entertainment... PETA's comin'", "Dumbo"))
# Quizzer.quiz_description(Disney.new("a delusional teen - rejected by sister, dealing with hardship through a talking snowman. #feminism", "Anna"))
# Quizzer.quiz_description(Disney.new("an adult man dressed in a leotard befriends a narcissistic woman to abduct 3 children and force them to jump off of the roof.", "Peter Pan"))
# Quizzer.quiz_description(Disney.new("a runaway cleaning up other men's mess and waits to get saved by a man. Oh how the times have changed.", "Snow White"))

Quizzer.start_quiz
