
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

  def verse_a
    if @count == 0
      "No more #{items} on the wall, no more #{items}.\n"
    else # count > 0
      "#{@count} #{items} on the wall, #{@count} #{items}.\n"
    end
  end

  def verse_b
    if @count == 0
      reset_item_count
      "Go to the store and buy some more, #{@count} #{items} on the wall.\n"
    else # count > 0
      subject = @count == 1 ? 'it' : 'one'
      decrement_item_count
      remaining = @count == 0 ? 'no more' : @count
      "Take #{subject} down and pass it around, #{remaining} #{items} on the wall.\n"
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
