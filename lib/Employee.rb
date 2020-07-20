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

    def paid_over(int)
        if salary.self > int
           @@all 
        end
    end

    def find_by_department(department)
        self.find { |employee| employee.manager == self }
    end

    # def tax_bracket
    #     self.salary <=> 
    # end

end
