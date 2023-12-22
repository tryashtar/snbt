$data modify storage snbt:temp context.char set string storage snbt:temp snbt $(start) $(end)
execute if score escape snbt matches 0 if data storage snbt:temp context{char:"\\"} run scoreboard players set escape snbt 2
execute if score escape snbt matches 1 if data storage snbt:temp context{char:"\\"} run scoreboard players set escape snbt 4
execute if score escape snbt matches 3 if data storage snbt:temp context{char:"\\"} run scoreboard players set escape snbt 2
execute if score escape snbt matches 1 run function snbt:prepend_backslash with storage snbt:temp context
execute if score escape snbt matches 4 run function snbt:prepend_backslash with storage snbt:temp context
execute unless score escape snbt matches 2 run function snbt:append_char_single with storage snbt:temp context
execute unless score escape snbt matches 3 if data storage snbt:temp context{char:"'"} run return 1
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
execute if score escape snbt matches 3 run scoreboard players set escape snbt 0
execute if score escape snbt matches 1.. run scoreboard players remove escape snbt 1
function snbt:parse_key_single with storage snbt:temp context
