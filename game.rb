class Game

  @@number_of_games = 0

  attr_accessor :p1, :p2, :h1, :h2, :result, :current, :answer

  def initialize(boi1,boi2)
    @@number_of_games += 1
    self.p1 = boi1
    self.p2 = boi2
    self.h1 = 3
    self.h2 = 3
    self.current = self.p1
  end

  def question
    num1 = rand(1...20)
    num2 = rand(1...20)
    self.result = num1 + num2
    "#{self.current}: What does #{num1} plus #{num2} equal?"
  end

  def checkResult
    text = ""
    if self.answer == self.result
      text = "YES! You are correct."
      if self.current == self.p1
        self.current = self.p2
      else
        self.current = self.p1
      end
    else
      text = "IDIOT!!"
      if self.current == self.p1
        self.h1 = self.h1 - 1
        self.current = self.p2
      else
        self.h2 = self.h2 - 1
        self.current = self.p1
      end
    end
    text
  end

  def score 
    "#{self.p1}: #{self.h1}/3 vs #{self.p2}: #{self.h2}/3"
  end

  def winner
    winner = self.p1
    winnerScore = self.h1
    if self.h1 < self.h2
      winner = self.p2
      winnerScore = self.h2
    end
    "#{winner} wins with a score of #{winnerScore}/3"
  end
end
