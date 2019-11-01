# frozen_string_literal: true
# todo Not completed. Need to complete
class LRUCache
  def initialize(capacity)
    @cache = {}
    @capacity = capacity
    @cache_keys = []
  end

  def get(key)
    if @cache.has_key?(key)
      return @cache[key]
    end
      return -1
  end

  def put(key, value)
    if @cache.size < @capacity
      @cache[key] = value
      @cache_keys.push(key)
    elsif @cache.size == @capacity
      @cache.delete(@cache_keys.pop)
      @cache[key] = value
      @cache_keys.unshift(key)
    end
  end
end


cache = LRUCache.new(2)
cache.put(1,1)
cache.put(2,2)

puts cache.get(1)
cache.put(3,3)
puts cache.get(2)
cache.put(4, 4)
puts cache.get(1)
puts cache.get(3)
puts cache.get(4)
