class Currency
  @@repos = {}
  attr_reader :code

  def initialize(code)
    @code = code
  end

  def self.get(code)
    @@repos[code] = Currency.new(code) if @@repos[code].nil?
    @@repos[code]
  end

  def eql?(other)
    self == (other)
  end

  def ==(other)
    other.equal?(self) ||
    (other.instance_of?(self.class) && other.code == @code)
  end

  def hash
    @code.hash
  end
end
