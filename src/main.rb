require_relative '../include/AbstractSyntaxTree'
require_relative '../include/AbstractSyntaxTreeAdd'
require_relative '../include/AbstractSyntaxTreeConstant'
require_relative '../include/AbstractSyntaxTreeX'
require_relative '../include/AbstractSyntaxTreeMul'
require_relative '../include/AbstractSyntaxTreeSub'




def main()
        ast = AbstractSyntaxTree.new()

        # 1-(2-3)
        binary_tree = AbstractSyntaxTreeSub.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeSub.new(AbstractSyntaxTreeConstant.new(2), AbstractSyntaxTreeConstant.new(3)))
        puts ast.evaluate(binary_tree, 1)
end

main()