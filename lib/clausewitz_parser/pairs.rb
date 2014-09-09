module ClausewitzParser
  class Pairs < Array
    def inspect
      "{#{self.map(&:inspect).join', '}}"
    end
    alias_method :to_s, :inspect
  end
end