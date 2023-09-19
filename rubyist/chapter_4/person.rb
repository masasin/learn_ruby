class Person
  PEOPLE = []
  attr_reader :name

  def initialize(name)
    @name = name
    PEOPLE << self
  end

  def method_missing(method, *args)
    method_name = method.to_s

    super unless method_name.start_with?('has_')

    attr = method_name[4..]
    list_name = "@#{attr}_list"
    unless instance_variable_defined?(list_name)
      instance_variable_set(list_name, [])
      define_singleton_method("#{attr}_list") { instance_variable_get(list_name) }
    end
    instance_variable_get(list_name) << args[0]
  end

  def respond_to_missing?(method, include_private = false)
    method.to_s.start_with?('has_') || super
  end

  def self.method_missing(method, *args)
    super unless method.to_s.start_with?('all_with_')

    attr = method.to_s[9..]
    list_symbol = "#{attr}_list".to_sym
    raise ArgumentError, "Can't find #{attr}" unless PEOPLE.any? { |person| person.methods.include?(list_symbol) }

    PEOPLE.select { |person| person.respond_to?(list_symbol) && person.send(list_symbol)&.include?(args[0]) }
  end

  def self.respond_to_missing?(method, include_private = false)
    method.to_s.start_with?('all_with_') || super
  end

  def inspect
    "Person(<#{@name}>)"
  end
end

if __FILE__ == $PROGRAM_NAME
  john = Person.new("John")
  paul = Person.new("Paul")
  george = Person.new("George")
  ringo = Person.new("Ringo")

  john.has_friend(paul)
  john.has_friend(george)
  george.has_friend(paul)
  ringo.has_hobby("rings")

  Person.all_with_friend(paul).each do |person|
    puts "#{person.name} is friends with #{paul.name}"
  end

  Person.all_with_hobby("rings").each do |person|
    puts "#{person.name} is into rings"
  end
end
