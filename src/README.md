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