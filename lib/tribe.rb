class Tribe
  attr_accessor :name, :members, :immune

  def initialize(options)
    @name = options[:name]
    @members = options[:members]
    @immune = options[:immune]
    puts "#{@name} is created"
  end

 def to_s
     @name
 end

 def tribal_council(options)
  new_members = []
  @members.each_with_index do |member, i|
    if member != options[:immune]
      return @members.delete_at(i)
    end
  end
 end

 def include?
   @members
 end

end
