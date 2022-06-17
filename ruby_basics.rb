print "Hello World"  # no newline after printing string
puts "Hello World"  # does not return anything
p "Hello World"  # returns the string passed

def say_hello(thing_to_say) # syntax - 'def' and 'end'
    puts thing_to_say
end

say_hello "Hello World"

### OUTPUT ###
=begin
Hello WorldHello World
"Hello World"
Hello World
=end

# STRING CONCATENATION
f_name = 'Liza Mary'
puts f_name.class  # String
puts f_name.length  # 9 (includes spaces)
puts f_name.reverse  # yraM aziL
puts f_name.capitalize  #Liza mary
puts f_name.empty?  # false
puts "".empty?  # true
puts "".nil?  # false
puts nil.nil?  # true

puts 10.to_s.class  # String

# puts f_name.methods  # gives the list of all string methods available
l_name = 'Mathews'
puts f_name + " " + l_name
# Liza Mary Mathews

# STRING INTERPOLATION -- only for double quotes strings
puts "My first name is #{f_name} and last name is #{l_name}."
# My first name is Liza Mary and last name is Mathews.
puts 'My first name is #{f_name} and last name is #{l_name}.'
# My first name is #{f_name} and last name is #{l_name}.

puts l_name.sub('Mathews', "Mathew")  # Mathew
puts l_name  # Mathews
# sub substitutes parts of the string; gsub substitutes all occurrences in say a paragraph

# IMPORTANT
fname = "liza"
newname = fname
puts fname + ' ' + newname  # liza liza
fname = "Liza"
puts fname + ' ' + newname  # Liza liza

puts "Enter your name"
name = gets.chomp
puts name
puts "Enter your age"
age = gets.chomp.to_i  # for int we must convert
puts age.class

puts 'liza' * 3  # lizalizaliza
3.times {puts rand(10)}
# 6
# 8
# 7
20.times {print '-'}
print "\n"  # --------------------
puts 3.even?  # false

COMPARISON OPERATORS
puts "" == " "  # false - nil is not equal to space
a, b = 2, 3
puts a <=> b  # -1
puts 'hello' <=> 0  # returns nothing (nil)
# Combined comparison operator.x <=> y : =
# if x < y then return -1
# if x =y then return 0
# if x > y then return 1
# if x and y are not comparable then return nil
puts (1...6) === 8  # false
puts (1...8) === 8  # true
puts 10 == 10.0  # true
puts 10.eql?(10.0)  # false -- THIS CHECKS VALUE AND TYPW
a, b = 2, 3
print "#{a.object_id} + " " + #{b.object_id}"