# append the open bracket
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token

# prepare the new stack entry
data modify storage snbt:temp next_stack set value {text:[],entries:1,open:"{",close:"}"}
execute if data storage snbt:temp {token:"["} run data modify storage snbt:temp next_stack merge value {open:["["],close:"]"}

# check the next tokens to decide what to do
data modify storage snbt:temp peek set from storage snbt:temp text[0]
execute if data storage snbt:temp {peek:{color:"red"}} run function snbt:walk/array
execute if data storage snbt:temp {peek:"}"} run return run function snbt:walk/empty
execute if data storage snbt:temp {peek:"]"} run return run function snbt:walk/empty

# push to the stack
data modify storage snbt:temp stack append from storage snbt:temp next_stack

# start a new line
execute if score #pretty snbt matches 1 run function snbt:walk/indent/in

# proceed to the next token
execute if data storage snbt:temp text[0] run function snbt:walk/next
