print.messages: str :String ()

print.messages: object :Object (
    if messages ? analyse (
        object.properties* :for.each property ()
    )
)

puts: string :String! (
    #(string)
)
