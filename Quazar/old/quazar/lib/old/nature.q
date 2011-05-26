module: nature


Animal ?( //interface
   needs: height
   must:  grow 
)

Mammal :(
  is.abstract: Animal

  has.public: height, weight

  can.public:   grow
  can.public.static:  mate
)

Dog :(
  is: Mammal
  has: colour = 'black'
  can: bark
)

Mammal.grow: height; (
    ~height += height
)

 
Spot = new.empty: Dog
Pipa = Dog mate: Spot

dogs = male Spot, female Pipa

dogs.male bark: 

dogs for.each: dog (
   if: dog.first == female ( 
      dog bark:
   )
)

