true  = 1 ? 1
false = 1 ? 0

__compound = "" 0
__class :( :is.empty )
__abstract :( :is.abstract )
__interface ?()
__callable: ()
__code = -()

All :()   //null context / universal Object
Object   = All.basic_type*
Class    = __class.basic_type*
Code	 = __code.basic_type*
Abstract = __abstract.basic_type*
Interface = __interface.basic_type*
Callable = __callable.basic_type*
Mixture  = [].basic_type*
Compound = __compound.basic_type*
Bool     = true.basic_type*
Int       = 0.basic_type*
Float    = 0.1.basic_type*
String   = "".basic_type*

@module: name (
   @working_scope* += name
)

@import: path (
   :path //exectue path, which imports & evals
   @working_scope += path
)


if: condition, code (
   condition ?
      true ([] :code true),
      false (false)
)

Bool else: code (
   Bool ?
      true ([] :code true),
      false (false)
)
 
clear: obj (
   obj.properties* = []
)

clone.messages: Object (
   rtn :( :is.empty )
   Object.properties :for.each property (
      :if messages ? -empty (
         rtn.properties* += property.label
      ) :else (
         rtn.properties* += property.label, property.value
      )
      :if property.events.size > 0 (
         rtn.events* += property.events
      )
   )
) 

 :can Object.methods 
)

new.messages: type ( 
   :if messages ? -empty (
      :clone.empty type
   ) :else (
      :clone type
   )
) 


check_access: name, value, scope, ...options (
   options.receiver == scope.name :or name.visibility == -public  
)

All size: (
   All.size*
)

All retype: type (
   All.complex_type* += type
)

@is.messages: ...using (

)

@has.messages: ...attributes (
   @ retype: -Class

   :if messages :size > 0 (
      visibility = messages.first
   )

   attributes :for.each attr (
      @properties* += name =  -label attr.label, 
                              -value attr.value, 
                              -visibility visiblity

      name.events* += -on_assignment, check_access visibility 
   ) 
)

@can.messages: ...methods (
   :if messages :size > 0 (
      visibility = messages.first
   ) :else (
      visibility = -public
   )

   messages :remove.first

   methods :for.each method (
      @methods* += method.label, visibility, messages
   )
)

@set: property, code (
	@properties*.property.events* += on_assignment, run code
)

@get: property, code (
	@properties*.property.events* += on_access, run code
)

@nb: str :String (
   @comments* += str
)

:throw exception-type :Exception, message :String, location :String (
	/q/io/:print.analyse exception-type new: message, location
&&)

:break (
	:break 0
)

:break num (
	
)

