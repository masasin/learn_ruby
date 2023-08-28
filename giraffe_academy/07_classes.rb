# frozen_string_literal: true

# Accessors
class Book1
  attr_accessor :title, :author

  def read_book
    puts "Reading #{title} by #{author}"
  end
end

book0 = Book1.new
book0.read_book

book1 = Book1.new
book1.title = 'Harry Potter'
book1.author = 'JK Rowling'
book1.read_book

# Constructors
class Book2
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def read_book
    puts "Reading #{title} by #{author}"
  end
end
book2 = Book2.new('Lord of the Rings', 'JRR Tolkien')
book2.read_book

# Getters and Setters (aka properties?)
class Book3
  attr_accessor :title, :author

  def initialize(title, author, pages)
    @title = title
    @author = author
    self.pages = pages
  end

  def pages=(num)
    puts 'Setting pages...'
    raise ArgumentError, 'Pages must be positive' if num < 0

    @pages = num
  end

  def pages
    puts 'Getting pages...'
    @pages
  end

  def read_book
    puts "Reading #{title} by #{author}, a book of #{pages} pages"
  end
end

book3 = Book3.new('The Hobbit', 'JRR Tolkien', 300)
book3.read_book

# Inheritance
class Chef
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def make_chicken
    puts 'The chef makes chicken'
  end

  def make_salad
    puts 'The chef makes salad'
  end

  def make_special_dish
    puts 'The chef makes bbq ribs'
  end
end

# ItalianChef inherits from Chef
class ItalianChef < Chef
  attr_accessor :country_of_origin

  def initialize(name, age, country_of_origin)
    super(name, age)
    @country_of_origin = country_of_origin
  end

  def make_pasta
    puts 'The chef makes pasta'
  end

  def make_special_dish
    puts 'The chef makes eggplant parm'
  end
end

chef1 = Chef.new('Gordon', 50)
chef1.make_chicken
chef1.make_special_dish

chef2 = ItalianChef.new('Mario', 40, 'Italy')
chef2.make_chicken
chef2.make_pasta
chef2.make_special_dish
