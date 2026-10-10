data modify storage snbt:temp output append value "\n"
data remove storage snbt:temp indent[-1]
data modify storage snbt:temp output append from storage snbt:temp indent[]
