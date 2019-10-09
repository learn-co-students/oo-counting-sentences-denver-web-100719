require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end
  
  def count_sentences
    new_self = self.split(/[!.?]/)
    new_self = new_self.delete_if(&:empty?)
    new_self.count
  end
end