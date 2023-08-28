# frozen_string_literal: true

# https://www.youtube.com/watch?v=yCXaylzHqU0
# define_method
class MyClassDefine
  def self.create_new_method(method_name)
    define_method(method_name) do
      puts "Define: Hello from #{method_name}"
    end
  end
  create_new_method(:defined_in_class)
end

MyClassDefine.create_new_method(:defined_after_class)

MyClassDefine.new.defined_in_class
MyClassDefine.new.defined_after_class

# block
class MyClassBlock
  def self.create_new_method(method_name, &block)
    define_method(method_name, &block)
  end
end

MyClassBlock.create_new_method('defined_after_class') do
  puts 'Block: Hello from the block'
end

MyClassBlock.new.defined_after_class

# method_missing
class MyClassMissing
  def method_missing(method_name, *args, **kwargs, &block)
    super unless method_name.to_s.start_with?('say_')
    puts "Missing: Hello from #{method_name}"
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('say_') || super
  end
end

p MyClassMissing.new.object_id
MyClassMissing.new.say_hello
