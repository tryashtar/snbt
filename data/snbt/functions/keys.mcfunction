# entry point: prints all keys of compound to sender
scoreboard objectives add snbt dummy
# "store success" will fail if path doesn't exist, or data is identical
# so set it to something unlikely
data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
data modify storage snbt:temp output set value []
execute store result score keys snbt run data get storage snbt:temp nbt
summon text_display ~ ~ ~ {UUID:[I;1835364978,2032165736,1919513460,1835103009],alignment:"center"}
function snbt:convert/snbt
execute if score keys snbt matches 1.. run function snbt:keys/loop
kill 6d657272-7920-6368-7269-73746d617321
tellraw @s {"storage":"snbt:temp","nbt":"output[]","interpret":true}
