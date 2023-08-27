# https://www.youtube.com/watch?v=7RD8_KcJ9S8
class Money
  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def to_s
    "#{@amount} #{@currency}"
  end

  def +(other)
    if @currency != other.currency
      raise ArgumentError, "Currencies don't match"
    end
    Money.new(@amount + other.amount, @currency)
  end
end

object_1 = Money.new(5, "USD")
puts object_1
object_2 = Money.new(10, "USD")
puts object_2
object_3 = object_1 + object_2
puts object_3

# Method missing
class Hashie
  def initialize
    @inner_store = {}
  end

  def each
    @inner_store.each do |key, value|
      yield(key, value)
    end
  end

  def inspect
    @inner_store.inspect
  end

  def method_missing(method_name, *args)
    if method_name.to_s.end_with?("=")
      property_name = method_name.to_s[0...-1]
      @inner_store[property_name] = args[0]
    else
      @inner_store[method_name.to_s]
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    true
  end
end

hash = Hashie.new
hash.name = "John"
hash.age = 30
puts "#{hash.name} is #{hash.age} years old"

p hash
hash.each do |key, value|
  puts "#{key} => #{value}"
end

puts hash.respond_to?(:name)
