class Venue
  attr_reader :name,
              :capacity,
              :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @patrons_caps = []
    @over_capacity = false
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.each do |patron|
      @patrons_caps << patron.upcase
    end
    @patrons_caps
  end

  def venue_over_capacity?
    if(@patrons.length > @capacity)
      @over_capacity = true
    else
      @over_capacity = false
    end
  end

  def kick_out
    until(@patrons.length == @capacity) do
      @patrons.pop
    end
  end
end
