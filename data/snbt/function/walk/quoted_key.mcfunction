data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token.text
data modify storage snbt:temp token.string set from storage snbt:temp token.extra[0].text
function snbt:walk/quoted_key.macro with storage snbt:temp token
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token.text
execute if data storage snbt:temp text[0] run function snbt:walk/next
