#amazon_cart = [7.89, 6.88, 159.99, 40.08]
  
  #count = 1
  
#amazon_cart.each do |price|
  
  #puts "item #{count} costs #{price}"
  #count += 1 
#end 







amazon_cart = [7.89, 6.88, 159.99, 40.08]

tax_of_each_item = [ ]

count = 1 

amazon_cart.each do |price|
  
  tax_of_item = price * 0.17
  
  tax_of_each_item.push(tax_of_item)
  puts "item #{count} has a tax of #{tax_of_item}"
  
  count += 1 
end 

