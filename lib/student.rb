require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash) # We pass in the array as soon as we make a new student
    @name = student_hash[:name]
    @location = student_hash[:location]

    @@all << self
  end

  def self.create_from_collection(students_array)
    #binding.pry
    students_array.each do |info|
        student = Student.new(info)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each {|key,value| self.send(("#{key}="), value)}
  end

  def self.all
    @@all
  end
end
