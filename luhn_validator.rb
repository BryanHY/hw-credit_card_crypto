# frozen_string_literal: true

# Validates credit card number using Luhn Algorithm
# arguments: none
# assumes: a local String called 'number' exists
# returns: true/false whether last digit is correct
module LuhnValidator
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)

    # TODO: use the integers in nums_a to validate its last check digit
    multipled_nums = nums_a.reverse_each.map.with_index { |num, i| i.odd? ? num * 2 : num }.reverse
    (multipled_nums.map { |element| element > 9 ? element - 9 : element }.sum % 10).zero?
  end
end
