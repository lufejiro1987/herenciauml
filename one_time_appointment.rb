require_relative 'appointment'

class OneTimeAppointment < Appointment
  attr_accessor :day, :month, :year
  def initialize(location, purpose, hour, min, day, month, year)
    super(location, purpose, hour, min)
    @day = day
    @month = month
    @year = year
  end

  def occurs_on?(day, month, year)
    return day === @day && month === @month && year === @year
  end

  def to_s
    puts "Reunión única en #{@location} sobre #{@purpose} el #{"%02d" % @day}/#{"%02d" % @month}/#{year} a la(s) #{@hour}:#{min}."
  end
end

