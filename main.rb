
# Defining a function
def print_user(user)  # Has a parameter `user` (Hash)
  puts "(  #{user[:name]} :: #{user[:age]} )"  # Printing a string "interpolated" with user's values
end

# Defining a function
def print_all_users(users)  # Has a parameter `users` (Array)
  puts "USERS:\n"  # Printing a string with a new line
  users.each do |user|  # "For" loop? But not really... Iterating over array.
    # Block of code "function lite"
    print_user(user)  # Calling function, passing in user
  end
end

# Defining a function
def main_loop(users_array)  # Has a parameter `users_array`
  user = {}  # set to a new Hash
  puts 'What is your name?'  # print to console
  user[:name] = gets.chomp  # Get user input, set to `name` key of `user` hash
  puts 'How old are you?'  #print to console
  user[:age] = gets.chomp.to_i  # Get user input, cast it to an integer, set to `age` key of `user` hash
  users_array << user  # pushing `user` hash to `users_array`

  puts "Select Option \n  1) Add another user\n  2) Print all users"  # Printing to console with newlines
  choice = gets.chomp.to_i  # getting user input, casting to integer
  if choice == 1  # `if` statement, comparing with ==
    main_loop(users_array)  # recurse on function
  elsif choice == 2  # else if statement
    print_all_users(users_array)  # calling `print_all_users` function
  end
end

users = []  # creating array
main_loop(users)  # triggering main loop
