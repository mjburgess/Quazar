
//single line\\
//multi line
comment
hmm\\

name:
:name mixture

name (code)
name = name
name = mixture
larg ? barg
name name
name, 

x, y :(
   dosomething:
)

Tree :(
  has: -height
  can: -grow
)

Tree def: -grow x:meters, y:years; (
   height += x * y
   fnc: @eight 
   height = x
)

int name(int x) { } 

Tree def: grow, [x, y] (

)

Tree grow does: x, y (
)


factorial does: x ? 0, 1 ( x )

factorial does: x (
   factorial x * (x - 1)
)
 

greet def: x = q.time.now, y = q.string.ucfirst; (

)   

Complex add def: x, y, z; ( 
	Complex get: -real += x get: -real
	Complex get: -img  += x get: -img
	Complex.real += x.real

	Complex.real
)


fnc_with_optionals does: x, y ( x + y )

for: apples, apple, (
    eat: apple
    eat: @ 3
)

a: [5, 6], happy 'sad', b: 'k' Tree grow does: x ()

for: x  ( x * 3 )

if: x ? 1, 2, 3 (

) else: (

)

myMix = 1, 'a', 3

myMix: 2 // 'a'

x ? 
  a ( print x ),
  b ( print y )


x: x, y
x: x, y; a, b


myMix = 'a', 'b', 'c'

myMix: -first = 'z'
myMix: -second = 'd'
myMix: 0 = 'z'
myMix: 1 = 'd'

Tree :(
   has! x, y, z
)

alphaMix = 'a' 1, 'b' 2

alphaMix: 'a'  

labelMix = name 'Michael', age 22

key = name
labelMix.key = 'John'


