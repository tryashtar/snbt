execute store result storage snbt:temp context.start int 1 run scoreboard players add end snbt 1
execute store result storage snbt:temp context.beginning int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:display/key
data modify storage snbt:temp context.key set from storage snbt:temp value
data modify storage snbt:temp output append value '": "'
execute store result storage snbt:temp context.start int 1 run scoreboard players add end snbt 1
execute store result storage snbt:temp context.beginning int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:display/value with storage snbt:temp context

scoreboard players remove keys snbt 1
execute if score keys snbt matches 1.. run data modify storage snbt:temp output append value '", "'
execute if score keys snbt matches 1.. run function snbt:display/pairs
