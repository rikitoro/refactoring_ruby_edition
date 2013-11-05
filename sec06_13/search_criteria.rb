require_relative 'custom_initializers'

class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn
  hash_initializer :author_id, :publisher_id, :isbn
end