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
  def new_appointment(date, doctor)
    appointment_placeholder = Appointment.new(date, self, doctor)
  end 
  def appointments
    Appointment.all.select do |element|
      element.patient == self 
    end 
  end 
  def doctors 
    appointments.collect do |element|
      element.doctor 
    end 
  end 
end 
    