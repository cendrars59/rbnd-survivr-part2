class Jury

  attr_reader :members

  def initialize
    @members = []
    @finalists = {}
  end

  def members
    @members
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    finalistshash = {}
    
    return finalistshash
  end

end
