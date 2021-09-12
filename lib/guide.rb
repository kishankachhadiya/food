require 'restaurent'

class Guide

  def initialize(path=nil)
    Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "found restaturent file"
    elsif Restaurant.create_file
      puts "file created"
    else
      puts "Exists"
      exit!
    end
  end

  def launch
    introduction
    puts "please select your Action => list, find, add, quit"
    result = nil
    until result == :quit
    print "> "

    user_response = gets.chomp.downcase.strip

    result = do_action(user_response)
    end
    conclusion
  end

  def do_action(action)

    case action

      when 'list'
        puts "list ....."

      when 'find'
        puts "finding ....."

      when 'add'
        puts "adding ...."

      when 'quit'
        return :quit

      else
        puts "\n I dont understand that command.\n"
        puts "\n please select your Action => list, find, add, quit\n\n\n"

    end

  end

  def introduction

    puts "\n\n <<<< Welcome to the food Finder >>>> \n\n"
    puts "This is an interactive guide to help you find the food you crave. \n\n"

  end

  def conclusion
      puts "\n<<<< Goodbye Thank you for Using this App. :) >>>> \n\n\n"
  end

end