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
        binary_tree = ast.addSubNode(
                ast.addAddNode(
                        ast.addMulNode(ast.addConstantNode(2), ast.addConstantNode(2)
                ), 
                ast.addMulNode(
                        ast.addConstantNode(3), ast.addConstantNode(3)
                )), 
                ast.addConstantNode(10)
        )
        puts ast.evaluate(binary_tree, 1)
end

main()