# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  return s.length if s == s.reverse

  freq = Hash.new(0)
  s.chars.each do |char|
    freq[char] += 1
  end

  memo = []
  core = false
  result = 0

  freq.each do |key, value|
    if value.odd? && core == false
      core = true
      result += 1 
    end
    if value > 1 && value.odd?
      result += value - 1
    elsif value > 1 && value.even?
      result += value
    end
  end
  result
end

s = "jglknendplocymmvwtoxvebkekzfdhykknufqdkntnqvgfbahsljkobhbxkvyictzkqjqydczuxjkgecdyhixdttxfqmgksrkyvopwprsgoszftuhawflzjyuyrujrxluhzjvbflxgcovilthvuihzttzithnsqbdxtafxrfrblulsakrahulwthhbjcslceewxfxtavljpimaqqlcbrdgtgjryjytgxljxtravwdlnrrauxplempnbfeusgtqzjtzshwieutxdytlrrqvyemlyzolhbkzhyfyttevqnfvmpqjngcnazmaagwihxrhmcibyfkccyrqwnzlzqeuenhwlzhbxqxerfifzncimwqsfatudjihtumrtjtggzleovihifxufvwqeimbxvzlxwcsknksogsbwwdlwulnetdysvsfkonggeedtshxqkgbhoscjgpiel"
p longest_palindrome(s)