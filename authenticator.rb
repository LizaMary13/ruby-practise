puts "Welcome to the Authenticator"
50.times {print "-"}
puts
puts "This program takes in a username and password"
puts "If password matches an existing username, the user details are returned"

users = [
    { :username => "Liza", :password => 'password1'},
    { :username => 'Liya', :password => 'password2'},
    { :username => 'Irene', :password => 'password3'},
    { :username => 'Gopika', :password => 'password4'},
    { :username => 'Charis', :password => 'password5'}
]

def authenticate_user(username, password, user_list)
    user_list.each do |user|
        if user[:username] == username && user[:password] == password
            return user
        end
    end
    puts "Credentials are wrong!"
end

attempts = 1
while attempts < 4
    puts "Please enter the username and password"
    print "Username : "
    username = gets.chomp
    print "Password : "
    password = gets.chomp
    auth = authenticate_user(username, password, users)
    puts auth
    print "Press n to exit or any other key to continue : "
    key = gets.chomp.downcase
    break if key=='n'
    attempts += 1
end
puts "You have exceeded the maximum number of attempts!"
