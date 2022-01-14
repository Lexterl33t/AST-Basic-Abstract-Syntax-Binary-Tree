require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeShr < AbstractSyntaxTree
        attr_accessor :left, :right
        
        def initialize(left, right)
                self.left = left
                self.right = right
        end
end