require 'pry'

class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date)
   # binding.pry 
    Appointment.new(date,self,doctor)
  end 
  
  def appointments
    Appointment.all.select do |app|
      app.patient == self 
    end 
  end
  
  def doctors 
   # binding.pry 
    self.appointments.collect {|app| app.doctor}
  end 
  
end 