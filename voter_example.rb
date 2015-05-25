### VOTERSIM.RB

class Voter
  attr_accessor :name, :politics
  # @@voters = []

  def initialize(name, politics)
    @name = name
    @politics = politics

    # @@voters << self
  end

  # def self.all
  #   @@voters
  # end
end



