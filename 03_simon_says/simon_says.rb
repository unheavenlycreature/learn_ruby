#write your code here
def echo(to_echo)
  to_echo
end

def shout(to_shout)
  to_shout.upcase
end

def repeat(to_repeat, repetitions = 2)
  ((to_repeat + " ") * repetitions).strip
end

def start_of_word(word, prefix_length)
  word[0..prefix_length - 1]
end

def first_word(words)
  words.split[0]
end

def titleize(title)
  little_words = ["and", "over", "the"]
  titleized = []
  words = title.split
  titleized << words.first.capitalize
  words.delete_at 0
  words.each do |word|
    if little_words.include? word
      titleized << word
    else
      titleized << word.capitalize
    end
  end
  titleized.join(" ")
end
