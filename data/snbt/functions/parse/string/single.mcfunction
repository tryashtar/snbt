function snbt:parse/peek with storage snbt:temp context
execute if score escape snbt matches 0 if data storage snbt:temp {char:"\\"} run scoreboard players set escape snbt 2
execute if score escape snbt matches 0 if data storage snbt:temp {char:"'"} run return 1
execute if score escape snbt matches 1.. run scoreboard players remove escape snbt 1
function snbt:parse/next
function snbt:parse/string/single
