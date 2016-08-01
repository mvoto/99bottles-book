class Bottles
  def verse(number)
    if (number - 1) > 1
      "#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    elsif (number - 1) == 1
      "#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    elsif (number - 1) == 0
      "#{number} bottle of beer on the wall, #{number} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif (number - 1) < 0
      "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(number1, number2)
    output = ""

    number1.downto(number2) do |number|
      output << "#{verse(number)}"
      output << "\n" unless number == number2
    end

    output
  end

  def song
    verses(99, 0)
  end
end
