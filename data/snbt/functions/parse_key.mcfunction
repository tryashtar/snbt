$data modify storage snbt:temp context.char set string storage snbt:temp snbt $(start) $(end)
execute if score escape snbt matches 0 if data storage snbt:temp context{char:"\\"} run scoreboard players set escape snbt 2
execute if score escape snbt matches 0 if data storage snbt:temp context{char:":"} run return 1
execute if score escape snbt matches 0..1 if score quote snbt matches 0..1 run function snbt:append_char_single with storage snbt:temp context
execute if score escape snbt matches 0..1 if score quote snbt matches 2 run function snbt:append_char_double with storage snbt:temp context
execute if score escape snbt matches 1.. run scoreboard players remove escape snbt 1
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:parse_key with storage snbt:temp context