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

