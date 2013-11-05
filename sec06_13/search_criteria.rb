class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn

  def initialize(hash)
    @author_id = 1  
    @publisher_id = 3
    @isbn = "1234567890"
  end


  
end