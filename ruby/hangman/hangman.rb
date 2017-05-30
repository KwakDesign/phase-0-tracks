# Guess a Word game AKA Hangman

# BUSINESS LOGIC
# create class called GuessAWord.
class Hangman
  # created attr_accessor to get and set various instance variables in the class.
  attr_accessor :word_to_guess, :mask_word, :chances_left, :game_is_over

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

  # define a method called mask_word to mask the @word_to_guess value in # symbols.
  def masked_word
    # take the length of the word_to_guess instance variable and multiply it with a hash symbol to mask each letter of the word to guess and store it in a new variable called masked_word.
    @mask_word = '#' * @word_to_guess.length
  end

  # define a method called start_guessing which takes a letter as an argument.
  def start_guessing(letter)
    # downcase! the letter argument so that it stays consistent throughout the program.
    letter.downcase!
    # grab the index position of the letter in word_to_guess and assign it to variable called index so that we can utilize it to position the included letter correctly.
    index = @word_to_guess.index(letter)

    # IF the letter is included in the word to guess AND NOT included in the masked word...
    if @word_to_guess.include?(letter) && !@mask_word.include?(letter)
      # Split the word to guess by each letter, then go through each letter along with each index position, IF the letter matches the letter in the word to guess, assign the letter to every index position of where it occurs in the masked word.
      this_word = @word_to_guess.split('')
      this_word.each_with_index do |each_letter, idx|
        if each_letter == letter
          @mask_word[idx] = letter
        end
      end
    # ELSIF the letter is included in the word to guess AND included in the masked word notify the user they entered the letter already and to try again.
    elsif @word_to_guess.include?(letter) && @mask_word.include?(letter)
      puts "You already entered this letter. Try Again!"
    # ELSIF the letter is NOT included then notify the user, deduct the number of chances by 1.
    elsif !@word_to_guess.include?(letter)
      puts "WRONG Try again! You have #{@chances_left - 1} left."
      @chances_left = @chances_left - 1
      # IF the player runs out of chances the game ends.
      if @chances_left == 0
        puts "WOMP! WOMP! YOU LOST!"
        @game_is_over = true
      end
    end
    # IF the word to guess is completed end the game.
    if @mask_word == @word_to_guess
      puts "YOU SOLVED THE WORD!"
      puts @mask_word
      @game_is_over = true
    end
  end
end

# DRIVER CODE
# Start the game by having a user enter a word for another user to guess.
puts "Enter a word that you want the other player to guess."
the_word = gets.chomp
game = Hangman.new(the_word)

while !game.game_is_over
  puts "Enter a letter to guess the word: #{game.mask_word}"
  puts "You have #{game.chances_left} chances left!"
  my_guess = gets.chomp
  game.start_guessing(my_guess)
end