require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What do you say?"

they_said = socket.gets.chomp

until they_said == "quit"

  socket.puts "What do you say?"

  they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

end


socket.close
