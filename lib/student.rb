class Student
  attr_accessor :name, :grade
  attr_reader :id

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
  end
  
  def self.create_table
    CREATE TABLE students VALUES (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER); 
    
  end
  
  def self.drop_table
    
  end
  
  def save
    DB[:conn] << self
    
  end
  
  def self.create
    
  end
  
  
  
end
