class Manager  < Employee 
    attr_reader :employees

    def initialize(name, slary ,title , boss=nil)
        @employee = []

        super(name,salary,title,boss=nil)
    end 

    def add_employee(subordinate)
        employees << subordinate
    
        subordinate
      end

    def bouns(multiplier)
        self * total_subsalary * multiplier
    end 


    protected

    def total_subsalary
        total_subsalary = 0 
        self.employees.each do |i|
            if i.is_a?(Manager)
                total_subsalary += employee.salary + employee.total_subsalary
            else 
                total_subsalary += employee.salary
            end 
        end 
        total_subsalary
    end 


end 

#  p ned.bonus(5) # => 500_000
#  p darren.bonus(4) # => 88_000
#  p david.bonus(3) # => 30_000
