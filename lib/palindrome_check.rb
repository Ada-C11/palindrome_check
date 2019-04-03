# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the length of my_phrase, because in the worst-case scenario, 
# the algorithm will loop through the length of the string 1/2 times its length, so the time 
# complexity is dependent on the string's length.
# Space complexity: O(1) because the variables used are consistent and no new data structure is created.
def palindrome_check(my_phrase)
  if my_phrase == ""
    return true
  elsif my_phrase == nil
    return false
  end
  i = 0
  j = my_phrase.length - 1
  while i < j
    if my_phrase[i] == " " || my_phrase[j] == " "
      if my_phrase[i] == " "
        i += 1
      end
      if my_phrase[j] == " "
        j -= 1
      end
    elsif my_phrase[i] != my_phrase[j]
      return false
    else
      i += 1
      j -= 1
    end
  end
  return true
end
