def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (index)
  position = index.to_i
  position -= 1
end 

def valid_move? (board, index)

  def position_taken?(board, index)
    if board[index] == " "
      false 
    elsif board[index] == ""
      false 
    elsif board[index] == nil 
      false 
    elsif board[index] == "X" || board[index] == "O"
      true 
    end
  end
  
  if position_taken?(board, index) == false && index <=8 && index >=0 
    true 
  else  
    false
  end
  
end

def move (board, index, char = "X")
  board[index] = char
  # return board
end 

def turn(board)
  puts "Please enter 1-9:"
  
  num = gets.chomp 
  
  index = input_to_index(num)
  
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn (board)
  end 
  
end 