class Doctor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def patients
    appointments.map do |app|
      app.patient
    end
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end


end
