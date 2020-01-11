def translate(sentence)
  words = sentence.split
  words.map! do |word|
    prefix, vowel, suffix = word.partition(/[aeio]|(?<!q)u/)
    if prefix == ""
      vowel + suffix + "ay"
    else
      vowel + suffix + prefix + "ay"
    end
  end
  words.join " "
end
