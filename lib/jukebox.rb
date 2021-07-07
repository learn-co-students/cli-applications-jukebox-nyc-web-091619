# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def prompt
  puts "Please enter a command:"
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(_songs)
  _songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if _songs.find_index(input)
    i = _songs.index(input)
    puts "Playing #{input}"
  elsif _songs[input.to_i] && input.to_i != 0
    puts "Playing #{_songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(_songs)
  prompt
  _choice = gets.strip
  loop do
    case _choice
    when 'h','help'
      help
      prompt
      _choice = gets.strip
    when 'l','list'
      list(_songs)
      prompt
      _choice = gets.strip
    when 'p','play'
      play(_songs)
      prompt
      _choice = gets.strip
    when 'exit'
      exit_jukebox
      break
    else
      puts "Invalid command"
      prompt
      _choice = gets.strip
    end
  end
end
