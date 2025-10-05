# frozen_string_literal: true

class MyHashMap
  attr_accessor :buckets

  BUCKETS_COUNT = 10000

  def initialize()
    @buckets = Array.new(BUCKETS_COUNT) { [] }
  end

  def put(key, value)
    bucket_index = key.hash.abs % BUCKETS_COUNT
    bucket = buckets[bucket_index]

    existing_pair = bucket.find { |k, _v| k.eql?(key) }
    existing_pair ? existing_pair[1] = value : bucket << [key, value]
  end

  def get(key)
    bucket_index = key.hash.abs % BUCKETS_COUNT
    bucket = buckets[bucket_index]

    existing_pair = bucket.find { |k, _v| k.eql?(key) }
    existing_pair ? existing_pair[1] : -1
  end

  def remove(key)
    bucket_index = key.hash.abs % BUCKETS_COUNT
    bucket = buckets[bucket_index]

    bucket.reject! { |k, _v| k.eql?(key) }
  end
end