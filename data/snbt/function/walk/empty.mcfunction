# append the close bracket
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp peek

# proceed to the next token
execute if data storage snbt:temp text[0] run function snbt:walk/next
