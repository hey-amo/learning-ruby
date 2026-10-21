#!/usr/bin/ruby -w
puts("hello world")

=begin
print <<EOF
   This is the first way of creating
   here document ie. multiple line string.
EOF

print <<"EOF";                # same as above
   This is the second way of creating
   here document ie. multiple line string.
EOF

print <<`EOC`                 # execute commands
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar"  # you can stack them
	I said foo.
foo
	I said bar.
bar
=end

# Customer object
class Customer
  @@numberOfCustomers = 0
  def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
  end
  def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
  end
  def total_no_of_customers()
      @@numberOfCustomers += 1
      puts "Total number of customers: #@@numberOfCustomers"
  end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Paul", "New Empire road, Khandala")

puts "Customer1: #{cust1.display_details()}"
puts "Customer2#{cust2.display_details()}"

# if statement
x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end

# for each loop
ary = [1,2,3,4,5]
ary.each do |i|
   puts i
end

class Box
  def initialize(w, h)
      @width, @height = w, h
  end
  def printArea
      @area = @width * @height
      puts "Big box area is : #@area"
  end
  
  # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)
puts "Area of the box is: #{box.printArea()}"
box.setWidth = 30
box.setHeight = 50
puts "Area of the box is: #{box.printArea()}"

# threads

count = 0
arr = []

10.times do |i|
   arr[i] = Thread.new {
      sleep(rand(0)/10.0)
      Thread.current["mycount"] = count
      count += 1
   }
end

arr.each {|t| t.join; print t["mycount"], ", " }
puts "count = #{count}"