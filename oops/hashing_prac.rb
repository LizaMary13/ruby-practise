require_relative 'hashing'

# $LOAD_PATH << '.'   # if module Crud is not in the same directory
# require 'crud'

users = [
    { :username => "Liza", :password => 'password1'},
    { :username => 'Liya', :password => 'password2'},
    { :username => 'Irene', :password => 'password3'},
    { :username => 'Gopika', :password => 'password4'},
    { :username => 'Charis', :password => 'password5'}
]

hashed_users = Crud.create_secure_user_list(users)
puts hashed_users