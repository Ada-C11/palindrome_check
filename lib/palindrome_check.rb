# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) with n being the length of the input
# Space complexity: 0(1) Constant
def palindrome_check(my_phrase)
  if my_phrase == ''
    return true
  elsif my_phrase.nil?
    return false
  end

  i = 0
  j = 1
  while i < my_phrase.length
    if my_phrase[i] == ' '
      i += 1
    elsif my_phrase[-j] == ' '
      j += 1
    elsif my_phrase[i] == my_phrase[-j]
      j += 1
      i += 1
    else
      return false
    end
  end
  return true
end

