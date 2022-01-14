require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeShl < AbstractSyntaxTree
        attr_accessor :left, :right
        
        def initialize(left, right)
                self.left = left
                self.right = right
        end
end