basic-interaction: pointa :Mix, pointb :Mix (
	pointa.x += pointb.x * pointb.y
	pointa.y -= pointb.x * pointb.y
	
	pointb.x /= pointa.x * pointa.y
	pointb.y *= pointa.x * pointa.y
)

Atom :(
	:has.private x, y, mechanism
	:can.public  new, interact-with
	
	:set mechanism (
		@mechanism
	)
	
	:get mechanism (
		@mechanism
	)
)

Atom new: x :Float, y :Float (
	@x = x
	@y = y
@)

Atom interact-with: atom :Atom (
	:@mechanism @x, @y; atom.x, atom.y
)

print: atom :Atom (
	/q/io/print "Atom is at (#(atom.x), #(atom.y))"
)

Atom.mechanism = basic-interaction

a = Atom :new 3.0, 4.0
a = Atom :new x 3.2, y 4.1
b = Atom :new y 1.0, x 2.0

a :interact-with b

:print a

//hello
