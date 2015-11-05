# https://leetcode.com/problems/bulls-and-cows/
# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  bull = 0
  cow = 0
    secret.scan(/[0-9]/).each_with_index do |char, index|
        break if index == guess.size
        if char == guess[index, 1]
            secret[index, 1] = guess[index, 1] = "."
            bull += 1
        end
    end
    secret.scan(/[0-9]/).each do |char|
        if index = guess.index(char)
            guess[index, 1] = "."
            cow+=1
        end
    end
  "#{bull}A#{cow}B"
end