class Book 
  
  attr_accessible :author, :title, :genre, :length
  #this creates a getter and setter for each of these attributes

  def initialize(author,title,genre,length, )
    @authur = authur 
    @title = title
    @genre = genre
    @length = length
  end 
  
end 

book1 = Book.new("Susanne Collins", "Hunger Games", "dystopian sci-fi", 375)
book2 = Book.new("Louis Lowery", "The Giver", "dystopian sci-fi", 240)
book3 = Book.new("JK Rowling", "HP and the Prisoner of Azkaban", "fantasy", 435)
book4 = Book.new("Ransom Riggs", "Miss P's Homw for Peculiar Children", "fantasy", 352)

puts book4.authur
puts book4.title
puts book4.length
puts book4.genre

