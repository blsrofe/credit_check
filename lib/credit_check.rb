
#create method to add digits together for third line
def sum_digits(num)
  num.to_s.split("").inject(0) do|sum, n| {sum + n.to_i}
end

#get credit card number
puts "What is the card number?"
card_number = gets.chomp
#put card number into array
first_line = card_number.split(//)
#iterate through array and create second line array
second_line = []
first_line.each_with_index do |number, index|
  if index % 2 == 0
    #multiply by number by 2 and send to second_line array
    second_line.push(number.to_i * 2)
  else
    #send original number to seond_line array
    second_line.push(number.to_i)
  end
end

#make third line array
third_line = second_line.map do |num|
  if num.to_s.length >= 2
    sum_digits(num)
  else
    num
  end
end
#add all third line values together
sum = 0
final_sum = third_line.each {|digit| sum += digit}
#if all third line values % 10 == 0 then puts "The number is valid!"
if sum % 10 == 0
  puts "The number is valid!"
#if all third line values % 10 != 0 then puts "The number is not valid!"
else
  puts "The number is not valid!"
end
