# frozen_string_literal: true

class MyHashMap
  attr_accessor :buckets

  BUCKETS_COUNT = 10000

  def initialize()
    @buckets = Array.new(BUCKETS_COUNT) { [] }
  end

  def put(key, value)
    bucket = bucket_for(key)
    pair = find_pair_for(key, bucket)
    pair ? pair[1] = value : bucket << [key, value]
  end

  def get(key)
    bucket = bucket_for(key)
    pair = find_pair_for(key, bucket)
    pair ? pair[1] : -1
  end

  def remove(key)
    bucket = bucket_for(key)
    bucket.reject! { |k, _v| k.eql?(key) }
  end

  private

  def bucket_for(key)
    buckets[key.hash.abs % BUCKETS_COUNT]
  end

  def find_pair_for(key, bucket)
    bucket.find { |k, _v| k.eql?(key) }
  end
end