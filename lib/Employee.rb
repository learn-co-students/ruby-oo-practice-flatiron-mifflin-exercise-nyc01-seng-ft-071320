class Employee


    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end    

    def self.paid_over(number)
        self.all.select {|empl| empl.salary > number}
    end

    def self.find_by_department(dept)
        Manager.all.map {|manager| manager.employee[0] if manager.department == dept}
    end

    def tax_bracket
        Employee.all.map do |emp|
            if emp.salary <= self.salary + 1000 && emp.salary >= self.salary - 1000
                emp.name
            end
        end

    end



end
