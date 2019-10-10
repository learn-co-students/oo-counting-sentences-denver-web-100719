require 'pry'

class String

  def sentence?
    end_with?(".") ? true : false
  end

  def question?
    end_with?("?") ? true : false
  end

  def exclamation?
    end_with?("!") ? true : false
  end

  def count_sentences
    split(/[.!?]+(?=\s|\z)/).count
    # binding.pry
  end
end