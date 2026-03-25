# RubyVM::InstructionSequence.compile_option = {
#   tailcall_optimization: true,
#   trace_instruction: false
# }
require 'set'
# @param target Integer
# @param list [Integer] 
# @return [Integer]
def find_anwser_in_list(target,list,seen)
  return [] if list.empty?
  current = list[0]
  remain = target-current
  return [remain,current] if seen.include?(remain)
  seen.add(current)
  find_anwser_in_list(target,list[1..-1],seen)
end

def filter_more_than_target(target,list)
  list.select {|num|num<=target}
end

input =File.read('input.txt')
target = 2020
puts find_anwser_in_list(target,filter_more_than_target(target,input.split.map{|n|n.to_i}),Set.new).reduce(1) {|state,num|num*state}
