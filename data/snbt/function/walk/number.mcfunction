data remove storage snbt:temp text[0]
data modify storage snbt:temp suffix set from storage snbt:temp text[0]
execute if data storage snbt:temp suffix{color:"red"} run data modify storage snbt:temp token.suffix set from storage snbt:temp suffix.text
execute if data storage snbt:temp suffix{color:"red"} run data remove storage snbt:temp text[0]
execute unless data storage snbt:temp suffix{color:"red"} run data modify storage snbt:temp token.suffix set value ""
function snbt:walk/number.macro with storage snbt:temp token
execute if data storage snbt:temp text[0] run function snbt:walk/next
