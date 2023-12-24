data modify storage snbt:temp output append value '"["'
scoreboard players remove end snbt 1
execute store result score values snbt run data get storage snbt:temp nbt
execute if score values snbt matches 1.. run function snbt:display/values
data modify storage snbt:temp output append value '"]"'
