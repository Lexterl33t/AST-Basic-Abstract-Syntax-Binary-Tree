## Abstract Syntax tree

Je me suis récemment lancé dans la conception de mon langage en C++ cependant je n'ai pas encore upload l'AST sur mon github. En attendant je vous propose ma micro implémentation d'AST en ruby.

Je vous propose de vous montrer via des exemples.

Essayons de faire ce calcul:

Calcul: 
```
(1+x)+(1+2)
````

J'ai donc fait un schema de l'AST correspondant à cette formule.

<img src="https://raw.githubusercontent.com/brytonl33t/AST-Basic-Abstract-Syntax-Binary-Tree/master/screenshots/arbre1.png">

voici mon code source utilisant ma librairie:

```ruby

ast = AbstractSyntaxTree.new()

binary_tree = AbstractSyntaxTreeAdd.new(AbstractSyntaxTreeAdd.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeX.new()), AbstractSyntaxTreeAdd.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeConstant.new(2)))

puts ast.evaluate(binary_tree, 1)       
```

Petit exemple de formule via une soustraction:
```
1-(2-3)
````

<img src="https://raw.githubusercontent.com/brytonl33t/AST-Basic-Abstract-Syntax-Binary-Tree/master/screenshots/arbre2.png">

```ruby
ast = AbstractSyntaxTree.new()

# 1-(2-3)
binary_tree = AbstractSyntaxTreeSub.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeSub.new(AbstractSyntaxTreeConstant.new(2), AbstractSyntaxTreeConstant.new(3)))
puts ast.evaluate(binary_tree, 1)
```

J'ai ajouté des fonctions afin d'éviter des instances à tout va.

```ruby
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
```

Cet arbre résoud cette opération:
<img src="https://raw.githubusercontent.com/brytonl33t/AST-Basic-Abstract-Syntax-Binary-Tree/master/screenshots/arbre3.png">
