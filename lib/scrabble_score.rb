require('pry')

class String
  define_method(:scrabble_score) do
    letter_hash = {1 => ['a','e','i','o','u','l','n','r','s','t'], 2 =>['d','g'], 3 => ['b','c','m','p'],4 => ['f','h','v','w','y'], 5 => 'k', 8 => ['j','x'], 10 => ['q','z']}
    word = self.split('')
    score = 0
    word.each_index do |idx|
      letter_hash.each_key do |key|
        if letter_hash[key].include? word[idx]
          score += key
        end
      end
    end
    score
  end
end
