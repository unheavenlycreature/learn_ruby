class Book
  def title
    @title
  end

  def title=(title)
    words = title.split
    words[0].capitalize!
    exceptions = ["a", "an", "and", "the", "in", "of"]
    words[1..-1].map do |word|
      if word == "i" or !exceptions.include? word
        word.capitalize!
      end
    end
    @title = words.join(" ")
  end
end
