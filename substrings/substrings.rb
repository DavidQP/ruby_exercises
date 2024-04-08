def substrings(sentence, dictionary)
  downcase_sentence = sentence.downcase
  hash = dictionary.reduce(Hash.new(0)) do |accum, item|
    if downcase_sentence.include?(item)
      downcase_sentence.split(' ').each do |word|
        accum[item] += 1 if word.include?(item)
      end
    end
    accum
  end 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)