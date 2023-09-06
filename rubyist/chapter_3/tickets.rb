class Ticket
  attr_reader :venue, :date
  attr_accessor :full_price, :discount

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(price)
    @full_price = price
  end

  def price
    @full_price * (100 - (@discount or 0)) / 100.0
  end
end

th = Ticket.new("Town Hall", "2013-11-12")
th.price = 100
puts "The ticket costs $#{format('%.2f', th.price)}."
th.discount = 15
puts "With a #{format('%.2f', th.discount)}% discount, it will cost $#{format('%.2f', th.price)}."
