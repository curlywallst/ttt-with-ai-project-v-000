class Board

  attr_accessor :cells

  def initialize
    self.reset!
  end

  def display
    puts " "
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    puts " "
  end

  def position(move)
    @cells[index(move)]
  end

  def index(move)
    move = move.to_i
    move -= 1
  end


  def update(move, player)
    @cells[index(move)] = player.token
# in here I call player.token
  end

  def full?
    @cells.all?{|i| i == "X" || i == "O"}
  end

  def turn_count
     @cells.count {|cell| cell == "X" || cell == "O"}
  end

  def taken?(move)
    position(move) == "X" || position(move) == "O"
  end

  def valid_move?(move)
    move.to_i.between?(1,9) && !taken?(move)
  end

  def reset!
    @cells = Array.new(9, " ")
  end

end
