module main

struct Tree {
	value u8
mut:
	left  Node
	right Node
}

struct Empty {}

[params]
struct TreeConfig {
	value u8
	left  Node = Empty{}
	right Node = Empty{}
}

type Node = Empty | Tree

pub fn new_tree_node(config TreeConfig) &Node {
	return &Tree{config.value, config.left, config.right}
}

fn (n &Node) invert() &Node {
	if n is Tree {
		return &Tree{n.value, n.right.invert(), n.left.invert()}
	}
	return &Empty{}
}

fn btree_main() {
	mut hi := new_tree_node(
		value: 5
		left: new_tree_node(value: 1)
		right: new_tree_node(value: 9)
	)
	hi = hi.invert()
    print(hi)
}
