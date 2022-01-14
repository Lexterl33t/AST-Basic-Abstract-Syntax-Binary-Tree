class AbstractSyntaxTree
        def evaluate(node, x)
                if node.kind_of? AbstractSyntaxTreeX
                        return x
                elsif node.kind_of? AbstractSyntaxTreeConstant
                        return node.value
                elsif node.kind_of? AbstractSyntaxTreeAdd
                        return self.evaluate(node.left, x) + self.evaluate(node.right, x)
                elsif node.kind_of? AbstractSyntaxTreeSub
                        return self.evaluate(node.left, x) - self.evaluate(node.right, x)
                elsif node.kind_of? AbstractSyntaxTreeMul
                        return self.evaluate(node.left, x) * self.evaluate(node.right, x)
                elsif node.kind_of? AbstractSyntaxTreeShl
                        return self.evaluate(node.left, x) << self.evaluate(node.right, x)
                elsif node.kind_of? AbstractSyntaxTreeShr
                        return self.evaluate(node.left, x) >> self.evaluate(node.right, x)
                else
                        return "Unknow data"
                end
        end

        def print_ast(node, x)
                if node.kind_of? AbstractSyntaxTreeX
                        return "x"
                elsif node.kind_of? AbstractSyntaxTreeConstant
                        return "CONSTANT(%d)" % [node.value]
                elsif node.kind_of? AbstractSyntaxTreeAdd
                        return "ADD(%s, %s)" % [print_ast(node.left, x), print_ast(node.right, x)]
                elsif node.kind_of? AbstractSyntaxTreeSum
                        return "SUM(%s, %s)" % [print_ast(node.left, x), print_ast(node.right, x)]
                elsif node.kind_of? AbstractSyntaxTreeMul
                        return "MUL(%s, %s)" % [print_ast(node.left, x), print_ast(node.right, x)]
                end
        end
end