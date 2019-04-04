# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# For a word of length n,
# Time complexity: O(n)
# Space complexity: O(1)
def palindrome_check(word)
  if word.nil?
    return false
  end
  start = 0
  finish = word.length - 1
  while start < finish do
    if word[start] != word[finish]
      return false
    end
    start += 1
    while start < word.length && word[start] == " "
      start += 1
    end
    finish -= 1
    while finish < word.length && word[finish] == " "
      finish -= 1
    end
  end
  return true
end
