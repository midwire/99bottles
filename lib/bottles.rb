require 'pry'
require_relative 'wall'

class Bottles
  VERSE_A = "%d %s of beer on the wall, %d %s of beer.\n"
  VERSE_B = "Take one down and pass it around, %d %s of beer on the wall.\n"

  def verse(count)
    @wall = Wall.new(count, 'bottle of beer', 'bottles of beer')
    output = @wall.verse_a
    output << @wall.verse_b
    output
  end

  def verses(start_count, end_count)
    output = []
    (start_count).downto(end_count).each do |count|
      output << verse(count)
    end
    output.join("\n")
  end

  def song
    verses(99, 0)
  end
end
