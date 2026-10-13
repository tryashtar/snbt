# entry point: prints collapsed data at path to sender, indented
scoreboard objectives add snbt dummy
# we want to exit early with failure if the path doesn't exist
# but we can't use 'execute if data', because the user may provide a path without a root compound
# so we instead use 'execute store success' while copying to storage
# this will also fail if data is identical, so set it to something unlikely
data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score #found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score #found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
scoreboard players set #pretty snbt 1
scoreboard players set #collapse snbt 1
scoreboard players set #menu snbt 0
function snbt:show/print
scoreboard objectives remove snbt
