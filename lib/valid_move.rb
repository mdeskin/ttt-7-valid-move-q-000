# code your #valid_move? method here

board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
position = "5"
# position = pos1.to_i - 1

def position_taken?(board,position)
  taken = nil
  if board[position] == " " || board[position] == "" || board[position] == nil
    taken = false
  elsif board[position] == "X" || board[position] == "O"
    taken = true
   end
#  puts taken
  taken
end

def valid_move?(board, position)
  taken1 = nil
  if position.to_i.between?(1,9)
    if !position_taken?(board,position.to_i-1)
      taken1 = true
  else
      taken1 = false
    end
  end
  taken1
end
