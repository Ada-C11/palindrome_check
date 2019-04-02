# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n is the number of characters in the array
# Space complexity: O(1)
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  i = 0
  j = my_phrase.length - 1

  #trim white spaces
  while i <= j
    while (my_phrase[i] == " ")
      i += 1
    end

    while (my_phrase[j] == " ")
      j -= 1
    end
    if my_phrase[i] != my_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end

puts palindrome_check("palindrome")
