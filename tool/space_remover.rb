#!/usr/bin/env ruby
require 'rubygems'
require 'ripper'
require 'pp'

def same_tree(tree1, tree2)
    return true if tree1 == nil && tree2 == nil
    return false if tree1 == nil || tree2 == nil
    return false if tree1.class != tree2.class

    case tree1
    when String, Symbol, FalseClass, TrueClass
        #p "str #{tree1.to_s} #{tree2.to_s}"
        return tree1 == tree2
    when Fixnum
        #p "num #{tree1.to_s} #{tree2.to_s}"
        return true
    when Array
        tree1.zip(tree2).all?{|cs|
            same_tree(cs[0],cs[1])
        }
    else
        p tree1.class
        raise "assert"
    end
end

def remove_spaces(src)
    tree = Ripper.sexp(src)
    src.size.times{|i|
        n_src = src[0...i] + src[i+1..-1] 
        n_tree = Ripper.sexp(n_src)
        return remove_spaces(n_src) if same_tree(tree, n_tree)
    }
    return src
end

src = $<.read
#pp Ripper.sexp(src)
src = remove_spaces(src)
print src
