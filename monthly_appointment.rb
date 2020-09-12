require_relative 'appointment'

class MonthlyAppointment < Appointment
  attr_accessor :day
  def initialize(location, purpose, hour, min, day)
    super(location, purpose, hour, min)
    @day = day
  end

  def occurs_on?(day)
    return day === @day
  end

  def to_s
    puts "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{min}."
  end
end