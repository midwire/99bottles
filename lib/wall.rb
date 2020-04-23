
class Wall
  def initialize(count, singular_phrase, plural_phrase)
    @count = count
    @singular_phrase = singular_phrase
    @plural_phrase = plural_phrase
  end

  def decrement_item_count
    @count -= 1
  end

  def reset_item_count
    @count = 99
  end

  def items
    if @count == 1
      @singular_phrase
    else
      @plural_phrase
    end
  end

  def verse_a
    if @count == 0
      format("No more %s on the wall, no more %s.\n", items, items)
    elsif @count == 1
      format("%d %s on the wall, %d %s.\n", @count, items, @count, items)
    else # count > 1
      format("%d %s on the wall, %d %s.\n", @count, items, @count, items)
    end
  end

  def verse_b
    if @count == 0
      reset_item_count
      format("Go to the store and buy some more, %d %s on the wall.\n", @count, items)
    elsif @count == 1
      decrement_item_count
      format("Take it down and pass it around, no more %s on the wall.\n", items)
    else # count > 1
      decrement_item_count
      format("Take one down and pass it around, %d %s on the wall.\n", @count, items)
    end
  end
end
