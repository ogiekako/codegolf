#!/usr/bin/env bash
ruby encode.rb | ruby ../../../int_packer.rb > en.txt
cat sol_templ.rb | ruby replacer.rb | ../../../indent_remover > sol.rb
ruby sol.rb | diff - ../ans.txt
wc sol.rb
