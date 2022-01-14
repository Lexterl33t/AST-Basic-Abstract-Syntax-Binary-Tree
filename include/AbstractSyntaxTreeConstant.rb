require_relative 'AbstractSyntaxTree'

class AbstractSyntaxTreeConstant < AbstractSyntaxTree
        attr_accessor :value
        
        def initialize(value)
                self.value = value
        end
end