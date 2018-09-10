def display_board(board)
end
def turn(board)
  puts "Please enter 1-9:"
end
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  def input_to_index(move)
   index = move.to_i - 1
   index
end


	def valid_move?(board, position)
	  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
	end


	def turn(board)
	  puts "Please enter 1-9:"
	  input = gets.strip
	  if valid_move?(board, input)
	    move(board, input, current_player(board))
	  else
	    turn(board)
	  end
	  display_board(board)
	end


	def turn_count(board)
	  counter = 0
	  board.each do |i|
	    if i == "X" || i == "O"
	      counter += 1
	    end
	  end
	  return counter
	end