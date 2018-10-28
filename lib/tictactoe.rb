require_relative 'board'
require_relative 'player'

class TicTacToe
  WinConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

  attr_reader :board, :current_player

  def initialize
    board = Board.new
    @board = board.grid
    @x = Player.new('x')
    @o = Player.new('o')
    @current_player = @x
  end

  def move(slot)
    raise 'Not a valid number' unless slot =~ /^-?[0-9]+$/
    new_slot = slot.to_i
    raise 'Invalid slot' if new_slot > @board.size - 1
    raise 'Slot is in use' if @board[new_slot] != nil
    @board[new_slot] = @current_player.piece
  end

  def switch_player
    if @current_player == @x
      @current_player = @o
    else
      @current_player = @x
    end
  end

  def print_board
    board.each_slice(3).to_a.each do |i|
      puts i.to_s.tr(',', '|').tr('[', '|').tr(']', '|')
    end
  end
end

tictactoe = TicTacToe.new
tictactoe.print_board