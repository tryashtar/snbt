$data modify storage snbt:temp context.char set string storage snbt:temp snbt $(start) $(end)
# plain strings can't contain spaces, backslashes, quotes, or colons
# so reading until the first colon guarantees we're at the end
execute if data storage snbt:temp context{char:":"} run return 1
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:parse/string/plain with storage snbt:temp context
