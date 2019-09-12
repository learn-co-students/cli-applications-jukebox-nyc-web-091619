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
  binding.pry
  case song_request
  when song_request == ("1" || "Phoenix - 1901")
    puts "#{songs[0]}"
    binding.pry
  when song_request == ("2" || "Tokyo Police Club - Wait Up")
    puts "#{songs[1]}"
  when song_request == ("3" || "Sufjan Stevens - Too Much")
    puts "#{songs[2]}"
  when song_request == ("4" || "The Naked and the Famous - Young Blood")
    puts "#{songs[3]}"
  when song_request == ("5" || "(Far From) Home - Tiga")
    puts "#{songs[4]}"
  when song_request == ("6" || "The Cults - Abducted")
    puts "#{songs[5]}"
  when song_request == ("7" || "Phoenix - Consolation Prizes")
    puts "#{songs[6]}"
  when song_request == ("8" || "Harry Chapin - Cats in the Cradle")
    puts "#{songs[7]}"
  when song_request == ("9" || "Amos Lee - Keep It Loose, Keep It Tight")
    puts "#{songs[8]}
  end
end


# def list(songs)
#   songs.each_with_index do |value, index|
#     puts "#{index + 1}. #{value}"
#   #binding.pry
# end
# end