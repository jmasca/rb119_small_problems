system 'clear'
# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# original solution #
=begin
The returned String will be a different/new/it's own object. This is because the method String#split will create an Array of substrings from the passed in String, meaning, the original passed in String is no longer being referenced.

# LS answer #
As soon as we have converted String into an Array by calling #split method on it, it is no longer possible for us to get back the original object again. Even just doing str.split.join(" ") returns a different object since you are splitting the String into an Array and then joining that Array back into a new String, with the same sequence of characters but still, a different object.
=end
