class Manager

    attr_accessor :name, :department, :age, :employee

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department 
        @age = age
        @employee = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        self.employee << Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        agg_age = self.all.sum {|manager| manager.age}
        no_managers = self.all.count
        age = agg_age/no_managers
        age  = age.to_f
    end



end
