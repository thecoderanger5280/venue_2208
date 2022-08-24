class Venue
  attr_reader :name,
              :capacity,
              :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @patrons_caps = []
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
end
