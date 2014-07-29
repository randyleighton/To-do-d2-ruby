require './lib/task.rb'
require './lib/list.rb'

@lists = []
@current_list = nil

def main_menu
  loop do
    puts "<== Main Menu ==>"
    puts "[c] create new list"
    puts "[d] display lists"
    puts "press 'x' to exit"
    menu_choice = gets.chomp
    if menu_choice == 'c'
      create_list
    elsif menu_choice == 'd'
      display_lists
    elsif menu_choice == 'x'
      puts "bye"
      exit
    else
      puts "sorry not a valid entry"
    end
  end
end

def create_list
  puts "Enter a new list: "
  inputted_list = gets.chomp
  @current_list = List.new(inputted_list)
  @lists << @current_list
  task_menu
end

def display_lists
  @lists.each_with_index do |list,index|
    puts list.name
  end
  main_menu
end

def task_menu
  loop do
    puts "press 'a' to add a task"
    puts "press 'l' to list tasks"
    #puts "press 'm' to mark task complete and delete"
    puts "press 'x' to exit to main menu"
    menu_choice = gets.chomp
    if menu_choice == 'a'
      add_task
    elsif menu_choice == 'l'
      list_tasks
    elsif menu_choice == 'x'
      puts "\n\n"
      main_menu
    else
      puts "sorry not a valid entry"
    end
  end
end

def add_task
  puts"Enter task here:"
  user_description = gets.chomp
  @current_list.add_task(Task.new(user_description))
  puts "task added.\n\n"
end

def list_tasks
  puts "Here are your tasks:"
  @current_list.tasks.each do |task|
    puts task.description
  end
  puts "\n"
end

def mark_tasks
  puts "Choose task number to mark complete and remove"
  @list.each_with_index do |task,index|
    puts index.to_s + " " + task.description
  end
  puts "\n"
  task_choice = gets.chomp.to_i
  #this has to change
  @list.delete_at(task_choice)
end
main_menu
