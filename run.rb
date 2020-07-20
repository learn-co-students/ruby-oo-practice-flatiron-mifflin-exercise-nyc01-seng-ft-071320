require_relative './lib/Manager'
require_relative './lib/Employee'
require 'pry'


#Test your code here
jim = Employee.new("Jim", 40000, "Michael")
dwight = Employee.new("Dwight", 45000, "Michael")
pam = Employee.new("Pam", 75000, "Victor")
# creed = Employee.new("Creed")
# andy = Employee.new("Andy")
# darryl = Employee.new("Darryl")
# ryan = Employee.new("Ryan")
# erin = Employee.new("Erin")
# meredith = Employee.new("Meredith")
# kevin = Employee.new("Kevin")
# angela = Employee.new("Angela")
# oscar = Employee.new("Oscar")
# toby = Employee.new("Toby")
# lexxi = Manager.hire_employee("Victor", 50000)

michael = Manager.new("Michael", "Regional Manager", 40)
victor = Manager.new("Victor", "Coffee Manager", 27)
kevin = Manager.new("Kevin", "Bartender Manager", 27)


binding.pry
puts "done"
