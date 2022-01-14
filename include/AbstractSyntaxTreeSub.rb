require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeSub < AbstractSyntaxTree
        def initialize(left, rigth)
                self.left = left
                self.right = right
        end
end