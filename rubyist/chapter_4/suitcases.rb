require_relative "stacklike"

class Suitcase
  def inspect
    "Suitcase #{object_id}"
  end

  def to_s
    object_id.to_s
  end
end

class CargoHold
  include Stacklike
  def load(suitcase)
    puts "Loading suitcase #{suitcase}"
    add_to_stack(suitcase)
  end

  def unload
    take_from_stack
  end
end

if __FILE__ == $PROGRAM_NAME
  hold = CargoHold.new
  suitcase1 = Suitcase.new
  suitcase2 = Suitcase.new
  suitcase3 = Suitcase.new

  hold.load(suitcase1)
  hold.load(suitcase2)
  hold.load(suitcase3)

  first_unloaded = hold.unload
  puts "The first suitcase off the plane is #{first_unloaded}"
end
