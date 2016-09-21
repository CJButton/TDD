









class Array

  def my_uniq
    results = []
    self.each do |el|
      results << el unless results.include?(el)
    end
    results
  end



end
