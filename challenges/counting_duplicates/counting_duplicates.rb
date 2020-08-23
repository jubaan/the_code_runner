# frozen_string_literal: true

require 'pry-byebug'

# doctest: Returns an integer representing the total amount of duplicated characters
# >> duplicate_count("")
# => 0
# >> duplicate_count("abcde")
# => 0
# >> duplicate_count("abcdeaa")
# => 1
# >> duplicate_count("abcdeaB")
# => 2
# >> duplicate_count("Indivisibilities")
# >> 2

def duplicate_count(text)
  char_counter =
    text.downcase.split('').each_with_object(Hash.new(0)) do |e, hash|
      hash[e] += 1
    end

  char_counter.select { |_k, v| v > 1 }.length
end

# solution 2

def duplicate_count_2(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end
