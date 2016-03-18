class Tribe
  attr_accessor :name, :members

  def initialize(options)
    @name = options[:name]
    @members = options[:members]
    puts @members
  end

 def to_s
  @name
 end

 def tribal_council(options)
    unlucky_guy = @members.sample
    while unlucky_guy == options[:immune]
      unlucky_guy = @members.sample
    end
    unlucky_guy
 end
end
