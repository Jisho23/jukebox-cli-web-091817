require "pry"

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
  puts "I accept  the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"

   song_to_play = gets.chomp

  if !songs[song_to_play.to_i]
    puts "Invalid input, please try again"
  elsif song_to_play.to_i.to_s == song_to_play
     puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
     puts "Playing #{song_to_play}"
   else
     puts "Invalid input, please try again"
   end
 end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}" }
end

def exit_jukebox
  puts "Goodbye"
  exit
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    user_command = gets.chomp.downcase.strip
    if user_command == 'list'
        list(songs)
    elsif user_command == 'play'
        list(songs)
        play(songs)
    elsif user_command == 'help'
        help
    elsif user_command == 'exit'
        exit_jukebox
        break
    else
        puts "Invalid input, please try again"
    end
  end
end
