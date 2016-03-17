class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = []
    @tribes.push tribe1
    @tribes.push tribe1
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
    merged_tribe = Tribe.new({ name: name, members: members_to_merge.flatten!})
    merged_tribe
  end

	#def individual_immunity_challenge
		#@tribes[0].members.sample
	#end

end
