class JsonbSerializers
  require 'active_support/core_ext/hash/indifferent_access'
  def self.dump(hash)
    # hash.to_json
    hash
  end

  def self.load(hash)
    (hash || {}).with_indifferent_access
  end
  # def self.dump(hash)
  #   hash.to_json
  # end

  # def self.load(hash)
  #   if hash.nil?
  #     {}
  #   elsif hash.is_a?(Hash) && hash.empty?
  #     hash
  #   else
  #     JSON.parse(hash)
  #   end.with_indifferent_access
  # end
end