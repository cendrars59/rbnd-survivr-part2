class Game
  attr_accessor :tribes

  def initialize(tribe1, tribe2)
    @tribes = []
    @tribes.push tribe1
    @tribes.push tribe2
  end

  def add_tribe(tribe)
    @tribes.push tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes.clear
  end

  def merge name
    members_to_merge = []
    @tribes.each do |tribe|
      members_to_merge.push tribe.members
    end
    Tribe.new({ name: name, members: members_to_merge.flatten!})
  end

	def individual_immunity_challenge
    if immunity_challenge == @tribes[0]
      return tribes[1].members.sample
    else
      return tribes[0].members.sample
    end
	end

end
