class Ticket
  attr_reader :venue, :date

  def initialize(venue)
    @venue = venue
    @_discount = 0
  end

  def date=(date)
    split_date = date.split("-")
    if split_date.length != 3 || split_date[0].length != 4 || split_date[1].length != 2 || split_date[2].length != 2
      puts "Please submit the date in the format 'YYYY-MM-DD'."
    else
      @date = date
    end
  end

  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @_original_price = amount.to_f
    else
      puts "The price seems to be malformed."
    end
  end

  def price
    @_original_price * (100 - @_discount) / 100.0
  end

  def discount=(percent)
    @_discount = percent
  end
end

th = Ticket.new("Town Hall")
th.date = "2013-11-12"
th.price = 100
puts "The ticket costs $#{format('%.2f', th.price)}."
th.discount = 15
puts "With a 15% discount, it will cost $#{format('%.2f', th.price)}."
