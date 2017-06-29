require "pry"

class CreditCheck

  def gets_card_number
    puts "What is the card number?"
    card_number = gets.chomp
    splits_card_number(card_number)
  end

  def splits_card_number(card_number)
    card_number_split = card_number.split(//)
    evaluate_if_odd_or_even(card_number_split)
  end

  def evaluate_if_odd_or_even(card_number_split)
    if card_number_split.count % 2 == 0
      double_second_number_even(card_number_split)
    else
      double_second_number_odd(card_number_split)
    end
  end

  def double_second_number_even(card_number_split)
    doubled_collection = []
    card_number_split.each_with_index do |number, index|
      if index % 2 == 0
        doubled_collection.push(number.to_i * 2)
      else
        doubled_collection.push(number.to_i)
      end
    end
    sum_multi_digit_nums(doubled_collection)
  end

  def double_second_number_odd(card_number_split)
    doubled_collection = []
    card_number_split.each_with_index do |number, index|
      if index % 2 != 0
        doubled_collection.push(number.to_i * 2)
      else
        doubled_collection.push(number.to_i)
      end
    end
    sum_multi_digit_nums(doubled_collection)
  end

  def sum_multi_digit_nums(doubled_collection)
    summed_collection = []
    doubled_collection.each do |num|
      if num.to_s.length >= 2
        summed_collection.push(sum_digits(num))
      else
        summed_collection.push(num)
      end
    end
    sum_all_nums(summed_collection)
  end

  def sum_digits(num)
    single_digit = num.to_s.split("")
    single_digit.inject(0) do |sum, n|
      sum + n.to_i
    end
  end

  def sum_all_nums(summed_collection)
    sum = 0
    summed_collection.each do |digit|
      sum += digit
    end
    sum
    print_valid_invalid_statement(sum)
  end

  def print_valid_invalid_statement(sum)
    if sum % 10 == 0
      puts "The number is valid!"
    else
      puts "The number is not valid!"
    end
  end
end

credit_check = CreditCheck.new

credit_check.gets_card_number
