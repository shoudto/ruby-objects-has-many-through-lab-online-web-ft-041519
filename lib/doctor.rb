class Doctor 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, patient)
     Appointment.new(patient, date, self)
  end 
  
  def appointments
    #binding.pry 
    Appointment.all.select do |app|
      app.doctor == self 
    end 
  end 
  
  def patients 
    appointments.map do |app|
      app.patient 
    end 
  end 
end 
