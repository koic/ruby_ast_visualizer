require 'graphviz'

module RubyAstVisualizer
  class Core
    def initialize(ast)
      @node_id = 0
      @ast = ast
    end

    def visualize
      GraphViz.new(:G, type: :digraph) {|g|
        reconfigure(g, @ast)
      }
    end

    private

    def reconfigure(g, node)
      self_node = g.add_nodes(fetch_node_id(node), label: node.type)

      node.children.each {|node|
        label = case node
                when Integer; node
                when NilClass; 'nil'
                when String; "\"#{node}\""
                when Symbol; ":#{node}"
                else
                  node.type.to_s
                end

        self_node << g.add_nodes(fetch_node_id(node), label: label)

        reconfigure(g, node) if node.respond_to? :children
      }
    end

    def fetch_node_id(node)
      case node
      when Integer, NilClass, String, Symbol
        (@node_id += 1).to_s
      else
        node.object_id.to_s
      end
    end
  end
end
