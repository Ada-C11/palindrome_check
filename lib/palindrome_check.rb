# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: ?
# Space complexity: ?

def palindrome_check(my_phrase)
  leftindex = 0
  rightindex = my_phrase.length - 1

  while leftindex < rightindex
    l_char = my_phrase[leftindex]
    r_char = my_phrase[rightindex]

    if l_char == " "
      until l_char != " "
        leftindex += 1
        l_char = my_phrase[leftindex]
      end
    end

    if r_char == " "
      until r_char != " "
        rightindex -= 1
        r_char = my_phrase[rightindex]
      end
    end

    return false if l_char != r_char

    leftindex += 1
    rightindex -= 1
  end

  return true
else
  return false
end
