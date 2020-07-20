class Manager
    attr_accessor :name, :department, :age

    @@all = []
    @@all_departments = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
        @@all_departments << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.map do |employees|
            employees.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all_departments
    end

    def average_age
        # age_sum = self.all.count do |age| 
        #     age.manager == self 
        # end
        self.sum(0.0) / self.size
    end

end
