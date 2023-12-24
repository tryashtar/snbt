data modify storage snbt:temp output append value '"{"'
scoreboard players remove end snbt 1
execute store result score keys snbt run data get storage snbt:temp nbt
execute if score keys snbt matches 1.. run function snbt:display/pairs
data modify storage snbt:temp output append value '"}"'
