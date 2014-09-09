module ClausewitzParser
  class Pair
    attr_accessor :key
    attr_accessor :value

    def self.[](key, value)
      Pair.new key, value
    end

    def initialize(key, value)
      @key = key
      @value = value
    end

    def to_a
      [@key, @value]
    end

    def to_h
      { @key => @value }
    end

    def inspect
      str = key.inspect
      str << '=>'
      str << value.inspect
      str
    end

    alias_method :to_s, :inspect
  end
end