require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    if self.size == 0
      0
    elsif self.size != 0
      self.split(/[.?!]+/).grep(/\S/).count
    end
  end
end
