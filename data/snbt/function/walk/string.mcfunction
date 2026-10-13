# append the quotes, and save them to quote the macro correctly
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token
data modify storage snbt:temp string set from storage snbt:temp text[0].text
data remove storage snbt:temp text[0]

# append the quoted string as copyable text
function snbt:walk/string.macro with storage snbt:temp
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token

# proceed to the next token
execute if data storage snbt:temp text[0] run function snbt:walk/next
