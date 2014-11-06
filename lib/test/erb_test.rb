require "erubis"

template = <<TEMPLATE
Hello! This is a template

it has a <%= whatever%>
TEMPLATE

eruby = Erubis::Eruby.new(template)
puts eruby.src
puts "========"
puts eruby.result(:whatever => "ponies!")