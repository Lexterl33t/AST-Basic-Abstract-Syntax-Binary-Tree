require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeMul < AbstractSyntaxTree
        attr_accessor :left, :right
        def initialize(left, right)
                self.left = left
                self.right = right
        end
end