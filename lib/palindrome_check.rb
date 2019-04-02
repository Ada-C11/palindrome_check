# Time complexity: O(n), where n represents the length of
# my_phrase.
# Space complexity: O(1) because you're just comparing the
# string characters to eachother, then returning either
# true or false.

def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end
  len = my_phrase.length
  i = 0
  j = 0
  low = nil
  high = nil
  (len / 2).times do
    if my_phrase[i] != " "
      low = my_phrase[i]
    else
      i += 1
    end
    if my_phrase[len - 1 - j] != " "
      high = my_phrase[len - 1 - j]
    else
      j += 1
    end
    if low != nil && high != nil
      if low != high
        return false
      end
      low = nil
      high = nil
      i += 1
      j += 1
    end
  end
  return true
end
