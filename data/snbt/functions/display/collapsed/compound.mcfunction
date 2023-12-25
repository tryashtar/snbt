data modify storage snbt:temp stack append from storage snbt:temp output
data modify storage snbt:temp output set value []
scoreboard players remove depth snbt 1
function snbt:display/value/compound
data modify storage snbt:temp nested append from storage snbt:temp output
data modify storage snbt:temp output set from storage snbt:temp stack[-1]
data remove storage snbt:temp stack[-1]
data modify storage snbt:temp output append value '"{"'
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute store result storage snbt:temp context.index int 1 run scoreboard players get nested snbt
scoreboard players add nested snbt 1
function snbt:display/collapsed/hover with storage snbt:temp context
execute if score entries snbt matches 1.. run data modify storage snbt:temp output append value '" "'
execute if score entries snbt matches 1.. run data modify storage snbt:temp output append from entity 0-0-0-0-1 text
execute if score entries snbt matches 1.. run data modify storage snbt:temp output append value '" "'
kill 0-0-0-0-1
data modify storage snbt:temp output append value '"}"'
scoreboard players add depth snbt 1
