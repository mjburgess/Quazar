//this is in default.config.q 
import.all: q.io

//next
print "Hello World!"

//next
say_hello: (
   print "Hello World!"
)

//next
say_hello: (
  print "Hello World!"
)

//next
say_hello: ( print "Hello World!" )

//next
Sayings :(
   :has hello = "Hello World!"
   :can say = print
)

Sayings :say Sayings.hello

//next
Sayings :(
   :has hello = "Hello World!"
   :can say_hello
)
Sayings.say_hello: (
   print @hello
)
Sayings :say_hello

//next
 
Sayings :(
   :has hello
   :can new, say_hello
)
 
Sayings.new: message (
   @hello = message
)
Sayings.say_hello: (
   print @hello
)
says = Sayings :new "Hello World!" 
says :say_hello

//next
 
 
Sayings :(
   :has hello
   :can new, say_hello
)
 
Sayings.new: message (
   @hello = message 
   @Sayings
)
Sayings.say_hello: (
   print @hello
)
Sayings :new "Hello World!" :say_hello

//next
Message :(
  :is.abstract 
  :has.private msgs = greeting "Hello World!"
)
Greeter :(
  :is Message
  :can.public.static greet
)
Greeter.greet: (
  print @msgs.greeting
)

Greeter :greet

//next
Greeting :(
  :has message = "Hello World!"
)

greeter: msg :Greeting (
   print msg.message
)

//next
hello = 'h', 'e', 'l', 'l', 'o'
world = 'w', 'o', 'r', 'l', 'd'
:print.mix hello, world

//next
:print -Hello- -World!-

//next
hello = 'h', 'e', 'l', 'l', 'o'
world = 'w', 'o', 'r', 'l', 'd'
msg = :join hello, world 
for: msg (
   print @
)
:for.count letter, msg (
   print msg.letter
)
msg :for.each letter (
   print letter
)

//next
greet: type -standard (
   print "Hello!"
)
greet: type -full (
  print "Hello World!"
)
:greet -full

//next
message = "Hello World!"
@ :( print message ) //close over scope
message :( print @ ) //close over message
message :( print @message )
