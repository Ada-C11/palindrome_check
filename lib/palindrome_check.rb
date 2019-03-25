# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n equals the length of the string
# Space complexity: O(1), since the iterators are updated without need for extra space.
def palindrome_check(my_phrase)

  return false if my_phrase == nil
  if my_phrase.length == 0 || my_phrase.length == 1
    return true
  end

  b = 0
  e = my_phrase.length - 1

  while b < e

    while  my_phrase[b] == " "
      b += 1
    end

    while my_phrase[e] == " "
     e -= 1
    end

    if my_phrase[b] != my_phrase[e] 
      return false
    end
    b += 1
    e -= 1
  end  
  return true
end

