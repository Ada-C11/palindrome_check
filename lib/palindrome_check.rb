# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: 0(n) where n is length of my_phrase
# Space complexity: 0(1)
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  if my_phrase.length == 0
    return true
  end

  i = 0
  j = my_phrase.length - 1

  while i < j
    until my_phrase[i] != " " || i >= j
      i += 1
    end

    until my_phrase[j] != " " || i >= j
      j -= 1
    end

    unless my_phrase[i] == my_phrase[j]
      return false
    end

    i += 1
    j -= 1
  end
  return true
end
