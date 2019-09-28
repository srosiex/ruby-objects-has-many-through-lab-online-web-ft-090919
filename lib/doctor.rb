class Doctor
  @@all_doc = []
    attr_accessor :name, :appointment, :patient
    def initialize(name)
      @name = name
      @@all_doc << self
    end

    def self.all
      @@all_doc
    end
    def new_appointment(patient, date)
      Appointment.new(patient, self, date)
    end

    def appointments
      Appointment.all.select do |appointment|
        appoinment.doctor == self
      end
    end

    def patients
      appointments.map do |appointment|
        appointment.patients
      end
    end
end
