require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeAdd < AbstractSyntaxTree
        attr_accessor :left, :right

        def initialize(left, right)
                self.left = left
                self.right = right
        end
end