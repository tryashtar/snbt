# append this text and proceed to the next token
data modify storage snbt:temp stack[-1].text append from storage snbt:temp text[0]
data remove storage snbt:temp text[0]
execute if data storage snbt:temp text[0] run function snbt:walk/next
