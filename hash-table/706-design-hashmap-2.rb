class MyHashMap
  attr_accessor :buckets

  BUCKETS_AMOUNT = 1000
  def initialize()
    @buckets = Array.new(BUCKETS_AMOUNT) { [] }
  end

  def put(key, value)
    bucket = bucket_for(key)
    pair = pair_for(key, bucket)
    pair ? pair[1] = value : bucket << [key, value]
  end

  def get(key)
    bucket = bucket_for(key)
    pair = pair_for(key, bucket)
    pair ? pair[1] : nil
  end

  def remove(key)
    bucket = bucket_for(key)
    bucket.reject! { |k, _v| k.eql?(key) }
  end

  alias []= put
  alias [] get

  private

  def bucket_for(key)
    buckets[key.hash.abs % BUCKETS_AMOUNT]
  end

  def pair_for(key, bucket)
    bucket.find { |k, _v| k.eql?(key) }
  end
end