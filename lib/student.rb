class Student
 attr_accessor :name, :grade
 attr_reader :id 
 
 def initialize(name,grade, id = nil)
    @name = name 
    @grade = grade 
    @id = id 
  end 
  
 def self.create_table
   sql = <<-SQL
   CREATE TABLE IF NOT EXISTS students (
   id INTEEGER PRIMARY KEY,
   name TEXT,
   grade INTEEGER);
   SQL
   DB[:conn].execute(sql) 
 end 
 
 def self.drop_table 
 DROP TABLE students
 
 end 
   
   
   
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
