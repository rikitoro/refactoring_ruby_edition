class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn

  def initialize(hash)
    @author_id = hash[:author_id]
    @publisher_id = hash[:publisher_id]
    @isbn = hash[:isbn]
  end


  
end