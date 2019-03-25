# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the length of my_phrase.  the loop with trigger length of phrase/2 times
# Because the constant /2 is dropped the time complexity is O(n)
# Space complexity: O(1), Constant regardless of the length of the array. same number of constant size int
# variables used each iteration.
def palindrome_check(my_phrase)
  return false if !my_phrase
  first_pointer = 0
  second_pointer = -1
  (my_phrase.length / 2).times do |shift|
    first_pointer += 1 while my_phrase[first_pointer + shift] == " "
    second_pointer -= 1 while my_phrase[second_pointer - shift] == " "
    return false if my_phrase[first_pointer + shift] != my_phrase[second_pointer - shift]
  end
  return true
end
