class MyHashSet
  attr_accessor :set

  def initialize()
    @set = []
  end

  def add(key)
    set.include?(key) ? nil : set << key
  end

  def remove(key)
    set.delete(key)
  end

  def contains(key)
    set.include?(key)
  end
end

set = MyHashSet.new
set.add(1)
set.add(2)
set.add(3)
set.add(2)
set.add(5)
p set.contains(3)
p set.contains(4)
p set