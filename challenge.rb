# # Assessment :: Ruby Basics


# # Question 1: Ruby objects and classes.
# # How would one find the class of the below objects.

# # "Hello World"
# # 33
# # 65.89

# a) You would call name on the objects class, ala "Hello World".class.name

# # Question 2: Booleans
# # What would be the result of executing the below statements

# # if "hello" && 4.5
# #   puts "it's true"
# # else
# #   puts "it's false"
# # end

# # a) It would be true because there is no comparison

# # 2.1 Substitue "hello" && 4.5 for 33 && 55 above. What's the output?
# a) "It's true"
# # 2.2 Substitue nil && 88 for 33 && 55 above. What's the output?
# a) It would be false
# # 2.4 Substitue 63.4 < 64. What's the output?
# a) "It's true"

# # Question 3 :Strings

# # How would you (Yes, you can look up the String methods!):

# # # 3.1. determine if a string is included another string?
# a) "string".include?('rin')
# # # 3.2. determine if the length of a string?
# a) "string".length
# # # 3.3. Go from the string "eels in my hovercraft" to "fish in my sink" but don't
# # # change the string "eels in my hovercraft"
# a) eels = "eels in my hovercraft"
# fish = eels.gsub(/eels/, 'fish').gsub!(/hovercraft/, 'sink')


# # Question 4 : Variables
# # Change the below string, do NOT make copies of the string. All changes
# # to the string should be made in-place. (Unless told otherwise, like in 4.3.)

# # # vehicle = "4 wheel Bus"

# # # 4.1 to "6 wheel Bus"
# a) vehicle.gsub(/6/, '4')
# # # 4.2 to "6 wheel tank"

# a) vehicle.gsub(/bus/, 'tank')

# # # 4.3 Create a NEW string from the string in 4.2 that will be
# # # "6 wheel tank that shoots rainbow bunnnies"
# a) vehicle += "that shoots rainbow bunnies"

# # Question 5 : Loop
# # - write a loop that guesses your age.
# # - Only allow 4 guesses
# # - Notify the user if they guess correctly OR if they run out of turns to guess
# # - Get mad and curse the fingers that thought you where that old,
# # - aaaah maaan c'mon, huh, WTF
# # - I'm not kidding, say unkind works to a user that thinks your 10 years older
# #   than you are.

age = 27
max_guess = 4
guess_number = 4
guess = 1
user_guess = nil

while user_guess != age
  puts "Please guess my age! Choose wisely, as you have only #{guess_number} guesses to get it right "
  user_guess = gets.chomp.to_i
  if guess >= max_guess
  puts "Sorry, you have run out of guesses"
  break
  if user_guess > 37
  puts "C'mon, I don't look THAT old!"
    break
  end
  end
  guess += 1
  guess_number -= 1
end
puts "Great job, I am #{age}, but only for a couple more weeks" if age == user_guess
# Bonus Question: Who said this?

# The great enemy of the truth is very often not the lie -- deliberate, contrived
# and dishonest, but the myth, persistent, persuasive, and unrealistic.
# Belief in myths allows the comfort of opinion without the discomfort of thought.
