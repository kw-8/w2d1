require "byebug"
# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.empty?
    largest = self.inject{|acc, el| acc < el ? el : acc}
    smallest = self.inject{|acc, el| acc > el ? el : acc}
    largest - smallest
  end

  def average
    return nil if self.empty?
    self.sum / self.length.to_f
  end

  def median
    return nil if self.empty?
    sorted = self.sort
    # debugger
    self.length.even? ? sorted[self.length/2-1..self.length/2].sum/2.0 : sorted[self.length/2]
  end

  def counts
    hash = Hash.new{0} # {|h, k| h[k] = 0}
    self.each{|el| hash[el] += 1}
    hash
  end

  # part 2!!!!!!
  def my_count(num)
    counts[num]
  end

  def my_index(num)
    self.each_with_index{|el, i| return i if num == self[i]}
    nil
  end

  def my_uniq
    new_arr = []
    self.each{|el| new_arr << el if !new_arr.include?(el)}
    new_arr
  end

  def my_transpose
    return nil if self.empty?
    new_arr = Array.new( self.length ){ Array.new(self.length) }
    self.each_with_index do |sub_arr, i|
        sub_arr.each_with_index do |el, j|
            new_arr[j][i] = self[i][j]
        end
    end
    new_arr
  end


end
