# not an entry point, wrapped by others to do setup and printing
data modify storage snbt:temp output set value []
data modify storage snbt:temp stack set value []
data modify storage snbt:temp nested set value []
data modify storage snbt:temp size_stack set value []
# if the path leads to a string, the "nbt" component strips the quotes, which makes parsing and display annoying
# so instead, wrap it in a list and suppress drawing the brackets
data modify storage snbt:temp char set value "."
execute store success score string snbt run data modify storage snbt:temp char set string storage snbt:temp nbt 0 0
execute if score string snbt matches 1 run data modify storage snbt:temp wrapped set value []
execute if score string snbt matches 1 run data modify storage snbt:temp wrapped append from storage snbt:temp nbt
execute if score string snbt matches 1 run data modify storage snbt:temp nbt set from storage snbt:temp wrapped
summon text_display ~ ~ ~ {UUID:[I;1835364978,2032165736,1919513460,1835103009],alignment:"center"}
scoreboard players set nested snbt 0
function snbt:convert/snbt
scoreboard players set end snbt 0
function snbt:parse/next
scoreboard players set depth snbt 0
function snbt:display/value
kill 6d657272-7920-6368-7269-73746d617321
tellraw @s {"storage":"snbt:temp","nbt":"output[]","interpret":true,"separator":""}
