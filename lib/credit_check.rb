def sum_digits(num)
  single_digit = num.to_s.split("")
  single_digit.inject(0) do |sum, n|
    sum + n.to_i
  end
end

def print_valid_invalid_statement(sum)
  if sum % 10 == 0
    puts "The number is valid!"
  else
    puts "The number is not valid!"
  end
end

puts "What is the card number?"
card_number = gets.chomp

first_line = card_number.split(//)

second_line = []
first_line.each_with_index do |number, index|
  if index % 2 == 0
    second_line.push(number.to_i * 2)
  else
    second_line.push(number.to_i)
  end
end

third_line = second_line.map do |num|
  if num.to_s.length >= 2
    sum_digits(num)
  else
    num
  end
end

sum = 0
third_line.each do |digit|
  sum += digit
end

print_valid_invalid_statement(sum)
