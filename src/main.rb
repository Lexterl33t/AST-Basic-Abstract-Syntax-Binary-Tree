require_relative '../include/AbstractSyntaxTree'
require_relative '../include/AbstractSyntaxTreeAdd'
require_relative '../include/AbstractSyntaxTreeConstant'
require_relative '../include/AbstractSyntaxTreeX'
require_relative '../include/AbstractSyntaxTreeMul'
require_relative '../include/AbstractSyntaxTreeSub'
require_relative '../include/AbstractSyntaxTreeShl'
require_relative '../include/AbstractSyntaxTreeShr'

def main()
        ast = AbstractSyntaxTree.new()

        # 1 >> 3
        binary_tree = AbstractSyntaxTreeShr.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeConstant.new(3))
        puts ast.evaluate(binary_tree, 1)
end

main()