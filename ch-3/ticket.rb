class Ticket
  def initialize(venue)
    @venue = venue
    @price = 100.00
  end
  def date=(date)
    year, month, day = date.split("-")
    err = "Please submit the date in the format 'yyyy-mm-dd'."
    if year.to_i < 1000 or year.to_i > 9999
      puts err
    elsif month.to_i < 1 or month.to_i > 12
      puts err
    elsif day.to_i > 31 or day.to_i < 1
      puts err
    else
      @date = date
    end
  end
  def venue
    @venue
  end
  def date
    @date
  end
  def event
    "Can't really be specified yet..."
  end
  def discount(pct)
    @price = @price * ((100.00 - pct) / 100)
  end
end

th = Ticket.new("Town Hall")
th.date = "2013-11-12"
cc = Ticket.new("Convention Center")
cc.date = "2014-12-13"
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}"
puts "The second is for an event on #{cc.date} at #{cc.venue}"
puts "The ticket for #{th.venue} has been discounted 15% to #{"%.2f" % th.discount(15)}"
