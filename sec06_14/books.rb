class Books
  def self.find(selector, conditions = "", *joins)
    sql = ["SELECT * FROM books"]
    joins.each do |join_table|
      sql << "LEFT OUTER JOIN #{join_table} ON"
      sql << "books.#{join_table.to_s.chop}_id"
      sql << " = #{join_table}.id"
    end
    sql << "WHERE #{conditions}" unless conditions.empty?
    sql << "LIMIT 1" if selector == :first

    connection_find(sql.join(" "))
  end

  def self.connection_find(sql_string)
    sql_string
  end
end 