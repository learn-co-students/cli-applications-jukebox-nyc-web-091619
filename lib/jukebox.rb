# def say_hello(name)
#  "Hi #{name}!"
#end
#
#puts "Enter your name:"
#
#users_name = gets.chomp!
#
#puts say_hello(users_name)

require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs_array)
  puts "Please enter a song name or number:"
  choice = gets.chomp

  if choice.to_i > 0   
    if choice.to_i > songs_array.length
      puts "Invalid input, please try again"
    else
      puts "Playing #{songs_array[choice.to_i-1]}"
    end
  else 
    songs_array.each_with_index do |s,i|
      if "#{i+1}. #{s}" == choice 
        puts "Playing #{choice}"
      elsif "#{s}" == choice 
        puts "Playing #{choice}"
      else 
        puts "Invalid input, please try again"
      end
    end
  end
end


def list (songs_list)
  songs_list.each_with_index do |s,i|
    puts "#{i+1}. #{s}"
  end
end



def exit_jukebox
  puts "Goodbye"
end



def run(song_list)
  help

  command_input = 1

  while command_input != "exit" do
    puts "Please enter a command:"
    command_input = gets.chomp!

    if command_input == "list"
      list(song_list)
    elsif command_input == "play"
      play(song_list)
    elsif command_input == "help"
      help 
    elsif command_input == "exit"
      exit_jukebox
      return
    else
      puts "Invalid command"
    end
  end
  exit_jukebox
end





