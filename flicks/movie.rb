class Movie
  attr_reader :rank
  attr_accessor :title
  
  def initialize(title, rank = 0)
    @title = title.capitalize
    @rank = rank
  end
  
  def hit?
    @rank >= 10
  end
  
  def normalized_rank
    @rank / 1
  end
  
  def status
    hit? ? 'Hit' : 'Flop'
  end
  
  def thumbs_up
    @rank += 1
  end
  
  def thumbs_down
    @rank -= 1
  end
  
  def <=>(other_movie)
    other_movie.rank <=> @rank
  end
  def to_s
    "#{@title} has a rank of #{normalized_rank} (#{status})"
  end
end
