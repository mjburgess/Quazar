Exception :(
	:has message, location
	:can new
)

Exception new: message, location (
	@message = message
	@location = location
@)

foo: (
	:throw Exception, "Oops", "#(here.file*), #(here.line*)"
)

bar: ( foo() )
baz: ( bar() )


:baz


