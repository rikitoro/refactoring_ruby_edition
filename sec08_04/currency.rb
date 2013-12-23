class Currency
  @@repos = {}

  def initialize(code)
    @code = code
  end

  def self.get(code)
    @@repos[code] = Currency.new(code) if @@repos[code].nil?
    @@repos[code]
  end

end
