def translate(sentence)
  words = sentence.split
  words.map! do |word|
    prefix, vowel, suffix = word.partition(/[aeioAEIOU]|(?<![qQ])[uU]/)
    suffix, punctuation, _ = suffix.partition(/[!?,.;]/)
    if prefix == ""
      vowel + suffix + "ay" + punctuation
    else
      if prefix.capitalize == prefix
        vowel.capitalize!
        prefix.downcase!
      end
      vowel + suffix + prefix + "ay" + punctuation
    end
  end
  words.join " "
end
