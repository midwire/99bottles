require 'pry'
require_relative 'wall'

class Bottles
  def verse(count)
    @wall = Wall.new(count, 'bottle of beer', 'bottles of beer')
    @wall.verse
  end

  def verses(start_count, end_count)
    (start_count).downto(end_count).map do |count|
      verse(count)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end
end
