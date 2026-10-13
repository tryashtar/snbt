# pop from the stack
execute if score #collapse snbt matches 1 if data storage snbt:temp stack[2] run return run function snbt:walk/nest/add
data modify storage snbt:temp stack[-2].text append from storage snbt:temp stack[-1].text
data remove storage snbt:temp stack[-1]

# start a new line
execute if score #pretty snbt matches 1 run function snbt:walk/indent/out

# append the close bracket
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token

# proceed to the next token
execute if data storage snbt:temp text[0] run function snbt:walk/next
