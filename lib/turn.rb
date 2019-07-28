def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if index <= 8 && index >= 0 && !position_taken?(board, index)
  true
else
  false
end
end

def position_taken?(board, index)
  !(board[index] == "" || board[index] == " " || board[index] == nil)
end

def input_to_index(playerMove)
index = playerMove.to_i
index = index - 1
end

def move(board, index, character = "X")
  board[index] = character
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    puts "This is a valid move."
    move(board, input)
    display_board(board)
  else
    puts "Please enter a valid number"
    turn(board)
  end
end