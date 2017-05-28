def echo(string)
  "#{string}"
end


def shout(string)
  "#{string.upcase}"
end


def repeat(string, num = 2)
  string_repeat = (string + " ") * num
  string_repeat = string_repeat.rstrip #remove extra space on right side
end


def start_of_word(string, num)
  string[0..num-1]
end


def first_word(string_words)
  string_words.split.first
end


def titleize(string)
  small_words = ["and", "the", "over"]
  title = string.split(" ").map do |word|
    unless small_words.include?(word)   #false for regular words
      word.capitalize!
    else
      word   #return downcase word for small_words
    end
  end
  title[0].capitalize!   #capitalize first word if it was from small_words
  title.join(" ")      #join array into single string
end
