
class Wall
  def initialize(count, singular_phrase, plural_phrase)
    @count = count
    @singular_phrase = singular_phrase
    @plural_phrase = plural_phrase
  end

  def verse
    verse_a + verse_b
  end

  private

  def subject
    @count == 0 ? 'it' : 'one'
  end

  def remaining
    @count == 0 ? 'no more' : @count
  end

  def verse_a
    if @count == 0
      format("No more %s on the wall, no more %s.\n", items, items)
    else # count > 0
      format("%d %s on the wall, %d %s.\n", @count, items, @count, items)
    end
  end

  def verse_b
    if @count == 0
      reset_item_count
      format("Go to the store and buy some more, %d %s on the wall.\n", @count, items)
    else # count > 0
      decrement_item_count
      format("Take %s down and pass it around, %s %s on the wall.\n", subject, remaining, items)
    end
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
end
