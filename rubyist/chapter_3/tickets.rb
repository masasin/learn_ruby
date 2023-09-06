class Ticket
  def initialize(venue)
    @venue = venue
  end

  def venue
    @venue
  end

  def date=(date)
    split_date = date.split("-")
    if split_date.length != 3 or split_date[0].length != 4 or split_date[1].length != 2 or split_date[2].length != 2
      puts "Please submit the date in the format 'YYYY-MM-DD'."
    else
      @date = date
    end
  end

  def date
    @date
  end

  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount.to_f
    else
      puts "The price seems to be malformed."
    end
  end

  def price
    @price
  end

  def discount!(percent)
    @price = @price * (100 - percent) / 100.0
  end
end

th = Ticket.new("Town Hall")
th.date = "2013-11-12"
th.price = 100
puts "The ticket costs $#{format('%.2f', th.price)}."
puts "With a 15% discount, it will cost $#{format('%.2f', th.discount!(15))}."
