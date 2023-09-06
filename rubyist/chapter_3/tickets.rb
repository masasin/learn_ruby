class Ticket
  attr_reader :venue, :date
  attr_accessor :full_price, :discount

  def initialize(venue)
    @venue = venue
    @discount = 0
  end

  def date=(date)
    split_date = date.split("-")
    if split_date.length != 3 || split_date[0].length != 4 || split_date[1].length != 2 || split_date[2].length != 2
      puts "Please submit the date in the format 'YYYY-MM-DD'."
    else
      @date = date
    end
  end

  def price=(price)
    @full_price = price
  end

  def price
    @full_price * (100 - @discount) / 100.0
  end
end

th = Ticket.new("Town Hall")
th.date = "2013-11-12"
th.price = 100
puts "The ticket costs $#{format('%.2f', th.price)}."
th.discount = 15
puts "With a #{format('%.2f', th.discount)}% discount, it will cost $#{format('%.2f', th.price)}."
