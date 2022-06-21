# print "Hello World"  # no newline after printing string
# puts "Hello World"  # does not return anything
# p "Hello World"  # returns the string passed

# def say_hello(thing_to_say) # syntax - 'def' and 'end'
#     puts thing_to_say
# end

# say_hello "Hello World"

# ### OUTPUT ###
# =begin
# Hello WorldHello World
# "Hello World"
# Hello World
# =end

# # STRING CONCATENATION
# f_name = 'Liza Mary'
# puts f_name.class  # String
# puts f_name.length  # 9 (includes spaces)
# puts f_name.reverse  # yraM aziL
# puts f_name.capitalize  #Liza mary
# puts f_name.empty?  # false
# puts "".empty?  # true
# puts "".nil?  # false
# puts nil.nil?  # true

# puts 10.to_s.class  # String

# # puts f_name.methods  # gives the list of all string methods available
# l_name = 'Mathews'
# puts f_name + " " + l_name
# # Liza Mary Mathews

# # STRING INTERPOLATION -- only for double quotes strings
# puts "My first name is #{f_name} and last name is #{l_name}."
# # My first name is Liza Mary and last name is Mathews.
# puts 'My first name is #{f_name} and last name is #{l_name}.'
# # My first name is #{f_name} and last name is #{l_name}.

# puts l_name.sub('Mathews', "Mathew")  # Mathew
# puts l_name  # Mathews
# # sub substitutes parts of the string; gsub substitutes all occurrences in say a paragraph

# # IMPORTANT
# fname = "liza"
# newname = fname
# puts fname + ' ' + newname  # liza liza
# fname = "Liza"
# puts fname + ' ' + newname  # Liza liza

# puts "Enter your name"
# name = gets.chomp
# puts name
# puts "Enter your age"
# age = gets.chomp.to_i  # for int we must convert
# puts age.class

# puts 'liza' * 3  # lizalizaliza
# 3.times {puts rand(10)}
# # 6
# # 8
# # 7
# 20.times {print '-'}
# print "\n"  # --------------------
# puts 3.even?  # false

# COMPARISON OPERATORS
# puts "" == " "  # false - nil is not equal to space
# a, b = 2, 3
# puts a <=> b  # -1
# puts 'hello' <=> 0  # returns nothing (nil)
# # Combined comparison operator.x <=> y : =
# # if x < y then return -1
# # if x =y then return 0
# # if x > y then return 1
# # if x and y are not comparable then return nil
# puts (1...6) === 8  # false
# puts (1...8) === 8  # true
# puts 10 == 10.0  # true
# puts 10.eql?(10.0)  # false -- THIS CHECKS VALUE AND TYPW
# # .equal? returns true if both operands point to the same object
# a = 'xyz'
# b = 'xyz'
# print "#{a.object_id} #{b.object_id}\n"
# puts a.equal? b
# a = 'xyz'
# b = a
# puts a.equal? b
# # === checks if RHS belongs to or is a member of the LHS group
# puts String === "zen"  # Output: => true
# puts Range === (1..2)   # Output: => true
# puts Array === [1,2,3]   # Output: => true
# puts Integer === 2   # Output: => true

# ## IF, ELSIF, ELSE - END
# choice1, choice2 = true, true
# if choice1 == true && choice2 == true
#     puts 'Success'
# elsif choice1 == true && choice2 == false
#     puts 'Only one true'
# else
#     puts 'Both false'
# end

# # ARRAYS ordered list of elements of any datatype
# a = [1,2,3,4,5]  # same as print and then puts (just puts prints them in separate lines)
# p a
# p a.reverse, a  # returns a new object
# p a.reverse!, a  # reverses in place
# =begin
# [1, 2, 3, 4, 5]
# [5, 4, 3, 2, 1]
# [1, 2, 3, 4, 5]
# [5, 4, 3, 2, 1]
# [5, 4, 3, 2, 1]
# =end
# p a.shuffle, a  
# p a.shuffle!, a
# =begin
# [1, 5, 4, 3, 2]
# [5, 4, 3, 2, 1]
# [3, 5, 2, 4, 1]
# [3, 5, 2, 4, 1]
# =end
# a = 1..10
# puts a.class  # Range
# p a.to_a.reverse, a
# p a.to_a.reverse!, a
# =begin
# [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
# 1..10
# [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
# 1..10
# =end

# a = "aa".."cz"
# p a.to_a
# =begin
# ["aa", "ab", "ac", "ad", "ae", "af", "ag", "ah", "ai", "aj", "ak", "al", "am", "an", "ao", "ap", "aq", "ar", "as", "at", "au", "av", "aw", "ax", "ay", "az", "ba", "bb", "bc", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bk", "bl", "bm", "bn", "bo", "bp", "bq", "br", "bs", "bt", "bu", "bv", "bw", "bx", "by", "bz", "ca", "cb", "cc"]
# =end

# a = [1,2,3,4,5]
# p a.first, a.last  # 1 <newline> 2
# p a<<'Liza'  # [1, 2, 3, 4, 5, "Liza"]  --> used to append
# p a.unshift('Mary')  # ["Mary", 1, 2, 3, 4, 5, "Liza"]  --> used to add at the beginning of the array
# p a.append('Mary')  # ["Mary", 1, 2, 3, 4, 5, "Liza", "Mary"]
# p a.uniq!  # ["Mary", 1, 2, 3, 4, 5, "Liza"]  --> used to remove duplicates
# p a.include?('Liza')  # true
# p a.push("Liya")  # ["Mary", 1, 2, 3, 4, 5, "Liza", "Liya"]
# b = a.pop
# p a,b  # ["Mary", 1, 2, 3, 4, 5, "Liza"]  <newline> "Liya"

# a = [1,2,3,4,5]
# b = a.join("-")
# p b  # "1-2-3-4-5"
# c = b.split("-")
# p c  # ["1", "2", "3", "4", "5"]
# d  = %w(Liza Mary Mathews)
# p d  # ["Liza", "Mary", "Mathews"]

# a = [1,2,3,4,5]
# a.each do |food|
#     print food.to_s + ' '
#     end
# puts
# a.each {|num| print num.to_s+" "}
# puts
# puts a.select {|n| n.even?}
# =begin
# 1 2 3 4 5 
# 1 2 3 4 5 
# 2
# 4
# =end

# ## HASHES (DICTIONARY)
# first = {'a'=>1, 'b'=>2, 'c'=>3}
# p first['a']  # 1
# second = {a:1, b:2, c:4}  # a, b and c here are symbols
# p second  # {:a=>1, :b=>2, :c=>4}
# p second[:c]  # 4
# second.each do |key, value|
#     puts "The key is #{key} and the value is #{value}"
# end
# second.select {|k,v| puts v.is_a?(Integer)}
# =begin
# The key is a and the value is 1
# The key is b and the value is 2
# The key is c and the value is 4
# true
# true
# true
# =end
# second.each {|k,v| second.delete(k) if v.even?}
# puts second  # {:a=>1}

# puts 40.to_s(10)  # 40
# puts 40.to_s(2)  # 101000
# puts (7>>2).to_s(2)  # 1
# puts (7<<2).to_s(2)  # 11100

# # RANGE OPERATOR
# p (1..10).to_a  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] --> Both inclusive
# p (1...10).to_a  # [1, 2, 3, 4, 5, 6, 7, 8, 9]

# ## defined? OPERATOR
# a = 10
# puts defined? a  # local-variable
# puts defined? puts  # method
# puts defined? new_var  # <nil>

# =begin
# Ruby Operators Precedence
# The following table lists all operators from highest precedence to lowest.
# Method	Operator	              Description
# Yes	::	                    Constant resolution operator
# Yes	[ ] [ ]=	            Element reference, element set
# Yes	**	                    Exponentiation (raise to the power)
# Yes	! ~ + -	                Not, complement, unary plus and minus (method names for the last two are +@ and -@)
# Yes	* / %	                Multiply, divide, and modulo
# Yes	+ -	                    Addition and subtraction
# Yes	>> <<	                Right and left bitwise shift
# Yes	&	                    Bitwise 'AND'
# Yes	^ |	                    Bitwise exclusive `OR' and regular `OR'
# Yes	<= < > >=	            Comparison operators
# Yes	<=> == === != =~ !~	    Equality and pattern match operators (!= and !~ may not be defined as methods)
#       &&                      Logical 'AND'
#       ||	                    Logical 'OR'
#       .. ...	                Range (inclusive and exclusive)
#       ? :	                    Ternary if-then-else
#       = %= { /= -= += |= &= 
#       >>= <<= *= &&= ||= **=	Assignment
#       defined?	            Check if specified symbol defined
#       not	                    Logical negation
#       or and	                Logical composition
# =end

# # UNLESS STATEMENT -> executes code if the condition is false, else executes the else-block
# x = 1
# unless x>=2
#     puts "Lesser than 2"
# else
#     puts "Not"
# end

# # UNLESS MODIFIER
# x = 1
# puts '1' unless !x

# # CASE STATEMENT - compares expressions using the === operator
# $age = 5
# case $age
# when 0..2
#     puts "Baby"
# when 3..6
#     puts "Little child"
# when 7..12
#     puts "Child"
# when 13..18
#     puts "Youth"
# else
#     puts "Adult"
# end

# for i in (1..10) do
#     print "#{i} "
# end
# puts

# i = 5
# while i>=0 do
#     puts i
#     i-=1
# end

# # class names: CamelCase
# # file names, method names and variable names: snake_case









