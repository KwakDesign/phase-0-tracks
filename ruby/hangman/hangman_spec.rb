# The Hangman Game should...
# Should return the word you want to guess.
# Game over should be set to true when the number of chances run out.
# Game over should be set to true when the word is guessed correctly.

require_relative 'hangman'

describe Hangman do

  it "adds the word you want to guess." do
    game = Hangman.new("HELLO")
    expect(game.word_to_guess).to eq("hello")
  end

  it "game over should be set to true when guessing chances run out." do
    game = Hangman.new("HELLO")
    while game.chances_left != 0
      game.start_guessing("z")
      game.chances_left - 1
    end
    expect(game.game_is_over).to eq true
  end

  it "game over should be set to true when the word is guessed." do
    game = Hangman.new("HELLO")
    game_word = "hello".split('')
    game_word.each { |letter| game.start_guessing(letter) }
    expect(game.game_is_over).to eq true
  end

end