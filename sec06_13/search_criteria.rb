class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn

  def self.hash_initialier(*attribute_names)
    define_method(:initialize) do |*args|
      data = args.first || {}
      attribute_names.each do |attribute_name|
        instance_variable_set "@#{attribute_name}", data[attribute_name]
      end
    end
  end
  
  hash_initialier :author_id, :publisher_id, :isbn
end