require "pry"
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the length of the phrase. While there are nested loops,
# they use the same iterator as their containing loop
# Space complexity: O(1), variable creation was not proportional to the number of characters in the string.
def palindrome_check(my_phrase)
  if my_phrase
    index = 0
    rindex = my_phrase.length - 1
    # continue to compare characters in front to characters in back until all characters have been compared at least once
    while index < rindex
      front_char = my_phrase[index]
      back_char = my_phrase[rindex]
      # seek next non-whitespace character from front
      if front_char == " " || front_char == "\t" || front_char == "\n"
        until front_char != " " && front_char != "\t" && front_char != "\n"
          index += 1
          front_char = my_phrase[index]
        end
      end
      # seek next non-whitespace character from back
      if back_char == " " || back_char == "\t" || back_char == "\n"
        until back_char != " " && back_char != "\t" && back_char != "\n"
          rindex -= 1
          back_char = my_phrase[rindex]
        end
      end
      # compare characters
      return false if front_char != back_char
      # increment indices
      index += 1
      rindex -= 1
    end
    return true
  else
    return false
  end
end
