# require 'bundler/inline'

# gemfile do
#   source 'https://rubygems.org'
#   gem 'bcrypt'
# end



# my_password = BCrypt::Password.create("my password")

# puts my_password  # $2a$12$HScVjDURDtnWo.Jg45q/vuY8fMIXqR/yfXJO4ZrpuKxOZHXQjEvSy
# puts my_password.version  # 2a
# puts my_password.cost  # 12
# puts my_password == "my password"  # true
# puts my_password == "My password"  # false

# my_password = BCrypt::Password.new("$2a$12$HScVjDURDtnWo.Jg45q/vuY8fMIXqR/yfXJO4ZrpuKxOZHXQjEvSy")
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

# users = [
#     { :username => "Liza", :password => 'password1'},
#     { :username => 'Liya', :password => 'password2'},
#     { :username => 'Irene', :password => 'password3'},
#     { :username => 'Gopika', :password => 'password4'},
#     { :username => 'Charis', :password => 'password5'}
# ]

module Crud

    require 'bcrypt'

    puts "Module CRUD activated"

    def create_hash_digest(password)  # in this case include Crud was done in the student.rb
        BCrypt::Password.create(password)  # used to hash passwords
    end

    def Crud.verify_hash_digest(password)
        BCrypt::Password.new(password)  # used to check if hashed password matches the original password
    end

    def Crud.create_secure_user_list(users)
        users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
        end
        users
    end

    # new_users = create_secure_user_list(users)
    # puts new_users

    def Crud.authenticate_user(username, password, list_of_users)
        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_hash_digest(user_record[:password])==password
                return user_record
            end
        end
        "Credentials not correct!"
    end

end
# p authenticate_user('Gopika', 'password4', new_users)  # {:username=>"Gopika", :password=>"$2a$12$qIpMyu785MUyoR7a6evuWu9Q72eLky8IH1YQiPkHK7hAvMk32D3gW"}
# p authenticate_user('Liza', 'password2', new_users)  # "Credentials not correct!"














