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

def gets_card_number
  puts "What is the card number?"
  card_number = gets.chomp
  put_card_in_array(card_number)
end

def put_card_in_array(card_number)
  split_card_number = card_number.split(//)
  double_every_other(split_card_number)
end

def double_every_other(split_card_number)
  second_line = []
  split_card_number.each_with_index do |number, index|
    if index % 2 == 0
      second_line.push(number.to_i * 2)
    else
      second_line.push(number.to_i)
    end
  add_all_two_digits_together(second_line)
  end
end

def add_all_two_digits_together(second_line)
  third_line = second_line.map do |num|
    if num.to_s.length >= 2
      sum_digits(num)
    else
      num
    end
  end
  sum_all_digits(third_line)
end

def sum_all_digits(third_line)
  sum = 0
  third_line.each do |digit|
    sum += digit
  end
  print_valid_invalid_statement(sum)
end


gets_card_number
