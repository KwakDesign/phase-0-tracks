# Guess a Word game AKA Hangman

# BUSINESS LOGIC
# create class called GuessAWord.
class GuessAWord
  # created attr_accessor to get and set various instance variables in the class.
  attr_accessor :mask_word, :chances_left, :game_is_over

  # define a initializer instance method that takes an argument which is the word to guess.
  def initialize(word)
    # downcase! the word argument so that it stays consistent throughout the program.
    word.downcase!
    # create a instance variable called @word_to_guess that stores the word to guess that that the user provides and call a downcase method to lowercase each letter in case the user happens to add any mix of upper and lower case letters.
    @word_to_guess = word

    # create a instance variable called @mask_word which is an empty string that stores the users guessed letters of the word they are trying to guess correctly.
    @mask_word = ''

    # create a instance variable called @chances_left which holds the number of chances left to guess the word. This number is determined by length of the word to guess.
    @chances_left = @word_to_guess.length

    # create a instance variable called game_is_over which holds a boolean value false to indicate that the game is not over yet.
    @game_is_over = false

    # call masked_word to mask the word to guess when the GuessAWord class is initialized.
    masked_word
  end
end