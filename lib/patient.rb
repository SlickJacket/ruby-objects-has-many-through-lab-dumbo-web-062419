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
        Appointment.new(self, date, doctor)
    end

    def appointments
        Appointment.all.select do|app|
            app.patient == self
        end
    end

    def doctors
        Appointment.all.collect do|app|
            app.doctor
        end
    end


end

# binding.pry