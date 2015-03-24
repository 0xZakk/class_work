require 'pry'
require_relative 'lib/person'
require_relative 'lib/task'

tasks = [Task.new("Make new friends"), Task.new("Slap the bag") ]

personal_info = Person.new("Adam", 50, "Founder, AMAco Global Enterprises", "Burritos")

# andy = Person.new("Andy", 19, "Founder, AMAco Global Enterprises", "Korean")
# binding.pry


loop do

  # Main Menu
  puts("-----------------------------------------")
  puts("Welcome to AMAco PDA")
  puts("Type 1 to Convert temperatures")
  puts("Type 2 for the Task Manager")
  puts("Type 3 for PieDrop (TM) - Drone Delivery of Pizza")
  puts("Type 4 to view Personal Info")
  puts("Type 5 for the Titlizer")
  puts("Type 0 to quit")
  puts("-----------------------------------------")

  puts("Enter a number:")
  user_input = gets().chomp()

  # Temperature Converter
  if user_input == "1"

    loop do
      #Temperature Menu
      puts("---------------------------------------")
      puts("Temperature Converter")
      puts("---------------------")
      puts("1. Convert Fahrenheit to Celsius")
      puts("2. Convert Celsius to Fahrenheit")
      puts("0. Back")
      puts("Enter a number:")
      conversion_input = gets().chomp()

      # Fahrenheit to Celsius
      if conversion_input == "1"
        puts("---------------------------------------")
        puts("F --> C | Enter temperature in Fahrenheit:")
        temperature_input = gets().chomp().to_i

        converted_temp = 5 * (temperature_input - 32) / 9
        puts("#{temperature_input}F = *** #{converted_temp}C ***")

      # Celsius to Fahrenheit
      elsif conversion_input == "2"
        puts("---------------------------------------")
        puts("C --> F | Enter temperature in Celsius:")
        temperature_input = gets().chomp().to_i()

        converted_temp = 9 * (temperature_input) / 5 + 32
        puts("#{temperature_input}C = *** #{converted_temp}F ***")

      # Back
      elsif conversion_input == "0"
        break

      # Invalid temperature menu option
      else
        puts("Invalid choice made.")
      end
    end
  # Task Manager
  elsif user_input == "2"
    completed_tasks = tasks.select{|task| task.completed()}
    incomplete_tasks = tasks.select{|task| task.completed() == false}
    loop do
      # Tasks Menu
      puts("---------------------------------------")
      puts("Tasks")
      puts("------------")

      completed_tasks.each do |task|
        puts "DONE: #{completed_tasks.description}"
      end
#
# This part isn't working yet!!!
#
      if incomplete_tasks.length == 0
        puts("No tasks to complete")
      else
        incomplete_tasks.each_with_index do |task, idx|
            puts("#{idx}. #{task.description}")
        end
      end
      puts("")
      puts("Options")
      puts("-------")
      puts("1. Add task")
      puts("2. Finish task")
      puts("0. Back")
      puts("Enter a number:")
      task_input = gets().chomp()

      # Add task
      if task_input == "1"
        puts("Enter new task:")
        new_task = Task.new(gets().chomp())
        incomplete_tasks.push(new_task)
        puts("Task created!")

      # Finish task
      elsif task_input == "2"
        puts("Enter task number to finish:")
        task_number = gets().chomp().to_i()
        incomplete_tasks[task_number].mark_completed
      # Back
      elsif task_input == "0"
        break
      else
        puts("Invalid choice made.")
      end
    end

  # PieDrop
  elsif user_input == "3"
    puts("PieDrop (TM) - Drone Delivery of Pizza is currently in private beta...")

  # Personal info
  elsif user_input == "4"
    loop do
      # Personal Info Menu
      puts personal_info.menu_info

      puts("")
      puts("Options")
      puts("-------")
      puts("1. Edit name")
      puts("2. Edit age")
      puts("3. Edit occupation")
      puts("4. Edit favorite food")
      puts("0. Back")
      puts("Enter a number:")
      info_input = gets().chomp()

      # Edit Name
      if info_input == "1"
        puts("Enter new name:")
        new_name = gets().chomp()
        personal_info.name = new_name
        puts("Success! New name is #{personal_info.name}")

      # Edit Age
      elsif info_input == "2"
        new_age = gets().chomp()
        personal_info.age = new_age
        puts("Success! New age is #{personal_info.age}")

      # Edit Occupation
      elsif info_input == "3"
        new_occupation = gets().chomp()
        personal_info.occupation = new_occupation
        puts("Success! New occupation is #{personal_info.occupation}")

      # Edit Favorite Food
      elsif info_input == "4"
        new_favorite_food = gets().chomp()
        personal_info.favorite_food = new_favorite_food
        puts("Success! New favorite food is #{personal_info.favorite_food}")

      # Back
      elsif info_input == "0"
        break

      # Invalid Option
      else
        puts("Invalid choice made.")
      end
    end
  # Titlizer
  elsif user_input == "5"
    puts("Please enter the text you'd like titlized")
    user_text = gets.chomp

    # convert text
    word_array = user_text.split()

    capital_word_array = word_array.map{|word| word.capitalize}

    # capital_word_array = []
    # word_array.each do |word|
    #   capital_word_array << word.capitalize
    # end


    titlized_text = capital_word_array.join(" ")

    # display text
    puts("Titlized Text:")
    puts(titlized_text)
    puts("press enter to continue")
    gets.chomp

  # Quit
  elsif user_input == "0"
    puts("Goodbye!")
    exit

  # Invalid main menu option
  else
    puts("Please choose a valid menu option")
  end
end