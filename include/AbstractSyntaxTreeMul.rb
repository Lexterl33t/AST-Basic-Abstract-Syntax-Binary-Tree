require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeMul < AbstractSyntaxTree
        def initialize(left, rigth)
                self.left = left
                self.right = right
        end
end