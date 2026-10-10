data modify storage snbt:temp token set from storage snbt:temp text[0]

execute if data storage snbt:temp {token:"}"} run function snbt:concat/unindent
execute if data storage snbt:temp {token:"]"} run function snbt:concat/unindent
data modify storage snbt:temp output append from storage snbt:temp token
execute if data storage snbt:temp {token:"{"} run function snbt:concat/indent
execute if data storage snbt:temp {token:"["} run function snbt:concat/indent
execute if data storage snbt:temp {token:","} run function snbt:concat/comma

data remove storage snbt:temp text[0]
execute if data storage snbt:temp text[0] run function snbt:concat/loop
