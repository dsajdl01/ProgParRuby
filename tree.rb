class Tree
	attr_accessor :children, :node_name

	def initialize(name, children =[])
		@children = children
		@node_name = name
	end

	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

#Input
irb(main):014:0> ruby_tree.visit{|node| puts node.node.name}
#output
NoMethodError: undefined method `node' for #<Tree:0x0000000251ab60>
	from (irb):14:in `block in irb_binding'
	from /home/david/ruby/tree.rb:15:in `call'
	from /home/david/ruby/tree.rb:15:in `visit'
	from (irb):14
	from /usr/bin/irb:12:in `<main>'
'
#input
irb(main):015:0> ruby_tree.visit_all{|node| puts node.node.name}
#output
NoMethodError: undefined method `node' for #<Tree:0x0000000251ab60>
	from (irb):15:in `block in irb_binding'
	from /home/david/ruby/tree.rb:15:in `call'
	from /home/david/ruby/tree.rb:15:in `visit'
	from /home/david/ruby/tree.rb:10:in `visit_all'
	from (irb):15
	from /usr/bin/irb:12:in `<main>'

#input
irb(main):016:0> ruby_tree.visit{ |n| puts n.node_name }
#output
Ruby
=> nil

#input
irb(main):017:0> ruby_tree.visit_all{ |n| puts n.node_name }
#output
Ruby
Rita
David
=> [#<Tree:0x0000000251acc8 @children=[], @node_name="Rita">, #<Tree:0x0000000251ac00 @children=[], @node_name="David"
