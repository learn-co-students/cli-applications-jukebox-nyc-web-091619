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

def list(songs)
  songs.each {|song| puts "#{songs.rindex(song)+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number: "
  song_request = gets.strip
  if song_request.to_i.between?(1, songs.length)
    puts "Playing #{songs[song_request.to_i-1]}"
      elsif songs.include?(song_request)
        puts "Playing #{songs.find {|s| s == song_request}}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  if command != 'exit'
    case
    when command == 'help'
      help
      run(songs)
      when command == 'list'
        list(songs)
        run(songs)
        when command == 'play'
          play(songs)
          run(songs)
          when command == 'exit'
            exit_jukebox
    end
  end
  exit_jukebox
end











# def play(songs)
#   puts "Please enter a song name or number: "  
#   song_request= gets.strip
#   if song_request.to_i.between?(1, songs.length)
#     puts "Playing #{songs[song_request.to_i-1]}"
#   elsif songs.include?(song_request)
#     puts "Playing #{songs.find{|s| s == song_request}}"
#   else 
#     puts "Invalid input, please try again"
#   end
# end

# def play(songs)
#   puts "Please enter a song name or number: "  
#   song_request = gets.strip
#   case
#     when (song_request == "1" || song_request == "Phoenix - 1901")
#       puts "Playing #{songs[0]}"
#     when song_request == ("2" || "Tokyo Police Club - Wait Up")
#       puts "Playing #{songs[1]}"
#     when song_request == ("3" || "Sufjan Stevens - Too Much")
#       puts "Playing #{songs[2]}"
#     when song_request == ("4" || "The Naked and the Famous - Young Blood")
#       puts "Playing #{songs[3]}"
#     when song_request == ("5" || "(Far From) Home - Tiga")
#       puts "Playing #{songs[4]}"
#     when song_request == ("6" || "The Cults - Abducted")
#       puts "Playing#{songs[5]}"
#     when song_request == ("7" || "Phoenix - Consolation Prizes")
#       puts "Playing #{songs[6]}"
#     when song_request == ("8" || "Harry Chapin - Cats in the Cradle")
#       puts "Playing #{songs[7]}"
#     when song_request == ("9" || "Amos Lee - Keep It Loose, Keep It Tight")
#       puts "Playing #{songs[8]}"
#     else 
#       puts "Invalid input, please try again"
#   end
# end

# def list(songs)
#   songs.each_with_index do |value, index|
#     puts "#{index + 1}. #{value}"
#   #binding.pry
# end
# end