module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(source, target)
    raise ArgumentError unless source.size == target.size
    
    dif = 0

    source.chars.each_index do |i|
      dif += 1 unless source[i] == target[i]
    end
    dif
  end
end