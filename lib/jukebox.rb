# Add your code here
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

def list (songs)
  songs.each_with_index {|songs, index|
    puts "#{index + 1}. #{songs}"
  }
end 

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i >= 1 && user_input.to_i <= songs.length
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{songs.find{|song| song == user_input}}"
  else
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run (input)
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
  puts "Please enter a command:"
  input = gets.chomp
  if input == "help"
    help
  elsif input == "list"
    list(songs)
  elsif input == "play" 
    play(songs)
  elsif input == "exit"
    exit_jukebox
  else 
    puts "Invalid entry"
  end 
end 