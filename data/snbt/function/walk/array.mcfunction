data modify storage snbt:temp next_stack.open append from storage snbt:temp peek
data modify storage snbt:temp next_stack.open append value ";"
data modify storage snbt:temp stack[-1].text append from storage snbt:temp peek
data modify storage snbt:temp stack[-1].text append value ";"
data remove storage snbt:temp text[0]
data remove storage snbt:temp text[0]
execute if score pretty snbt matches 1 run data remove storage snbt:temp text[0]
