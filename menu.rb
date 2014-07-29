require './lib/task.rb'
# require './lib/list.rb'

@list = []

def main_menu
  loop do
    puts "press 'a' to add a task"
    puts "press 'l' to list tasks"
    puts "press 'x' to exit"
    menu_choice = gets.chomp
      if menu_choice == 'a'
        add_task
       elsif menu_choice == 'l'
        list_tasks
      elsif menu_choice == 'x'
        puts "bye"
        exit
      else
        puts "sorry not a valid entry"
      end
   end
end

def add_task
  puts"Enter task here:"
  user_description = gets.chomp
  @list << Task.new(user_description)
  puts "task added.\n\n"
end

def list_tasks
  puts "Here are your tasks:"
  @list.each do |task|
    puts task.description
  end
  puts "\n"
end

main_menu
