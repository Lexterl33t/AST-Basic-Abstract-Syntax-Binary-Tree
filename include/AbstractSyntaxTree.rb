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
                else
                        return "Unknow data"
                end
        end
end