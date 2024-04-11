# Description
# Rock Paper Scissors
# Let's play! You have to return which player won! In case of a draw return Draw!.
# Examples(Input1, Input2 --> Output)
# "scissors", "paper" --> "Player 1 won!"
# "scissors", "rock" --> "Player 2 won!"
# "paper", "paper" --> "Draw!"

rps <- function(p1, p2) {
  r <- "rock"
  s <- "scissors"
  p <- "paper"
  p1won <- "Player 1 won!"
  p2won <- "Player 2 won!"
  
  if (p1==p2) {
    return("Draw!")
  }
  else if ((p1==r&&p2==s)|(p1==s&&p2==p)|(p1==p&&p2==r)) {
    return(p1won)
  }
  else {
    return(p2won)
  }
}