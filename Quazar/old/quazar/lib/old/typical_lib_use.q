:import /q/web/server

basic = server/basic :new port 80, host "localhost"

Website :( :has name "Quazar", admin "Michael"
           :can run )

Website.run: (
   out = "200 OK"
   html = "<html><head /><body><h1>#(~name)</h1>#(~admin)</html>"
   
   :print out + html
) 

basic :serve Website.run
