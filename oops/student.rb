require_relative 'hashing'

class Student
include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(firstname, lastname, email, username, password)
        @first_name = firstname
        @last_name = lastname
        @email = email
        @username = username
        @password = password
    end

    def to_s
        "First name : #{@first_name}, Last name : #{@last_name}, Email : #{@email}, Username : #{@username}, Password : #{@password}"
    end
end

student1 = Student.new('Liza', 'Mary', 'liza@gmail.com', 'liza123', 'password1')
student2 = Student.new('Liya', 'Mathews', 'liya@gmail.com', 'liana', 'password2')

hashed_password = student1.create_hash_digest(student1.password)
puts hashed_password
# puts student1

# student1.last_name = student2.last_name
# puts student1
