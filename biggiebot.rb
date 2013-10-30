require "socket"

server = "chat.freenode.net"
port = "6667"
nick = "BIGdaBOT"
channel = "#bitmaker"
greeting_prefix = "privmsg #{channel} :"
greetings = ["Tupac", "2pac", "Cali", "Notorius", "Communist", "Hello"]


irc_server = TCPSocket.open(server, port)

irc_server.puts "USER bhellobot 0 * BHelloBot"
irc_server.puts "NICK #{nick}"
irc_server.puts "JOIN #{channel}"
irc_server.puts "PRIVMSG #{channel} :Which of my tracks do you like best, TupacBot?"

until irc_server.eof? do
  msg = irc_server.gets.downcase
  puts msg

  # was_greeted = false
  # greetings.each do |g|
  #   was_greeted = true if msg.include?(g)
  # end

  # if msg.include?(greeting_prefix) and was_greeted
  #         response = "If you didn't know, now you know!"
  #         irc_server.puts "PRIVMSG #{channel} :#{response}"

  if msg.include?("shoots")
          response  = "If I wasn't in the rap game. I'd probably have a key knee-deep in the crack game. Because the the streets is a short stop. Either you're slinging crack rock or you got a wicked jump shot."
          irc_server.puts "PRIVMSG #{channel} :#{response}"

  elsif msg.include?("biggie")
          response  = "Who the f*ck is this? Pagin me at 5:46 in the mornin crack a dawnin Now Im yawnin, wipe the cold out my eye See whos this pagin me and why."
          irc_server.puts "PRIVMSG #{channel} :#{response}"

  elsif msg.include?("tupac")
          response  = "I see the gimmicks, the wack lyrics."
          irc_server.puts "PRIVMSG #{channel} :#{response}"

  end

end