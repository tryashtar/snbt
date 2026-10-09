# in indented mode, add indents
data modify storage snbt:temp output append value '" "'
scoreboard players remove tabs snbt 1
execute if score tabs snbt matches 1.. run function snbt:display/tabs
