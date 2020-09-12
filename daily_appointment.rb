require_relative 'appointment'

class DailyAppointment < Appointment
  def occurs_on?(hour, min)
    return hour == @hour && min == @min
  end

  def to_s
    puts "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{min}."
  end
end