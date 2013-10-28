class Select

  def options
    @options ||= []
  end

  def self.with_option(option)
    select = self.new
    select.options << option
    select
  end

  def add_option(arg)
    options << arg
    self
  end
end