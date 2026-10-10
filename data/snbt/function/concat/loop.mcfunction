data modify storage snbt:temp token set from storage snbt:temp text[0]

execute if data storage snbt:temp {token:"}"} run function snbt:concat/close
execute if data storage snbt:temp {token:"]"} run function snbt:concat/close
data modify storage snbt:temp stack[-1] append from storage snbt:temp token
execute if data storage snbt:temp {token:"{"} run function snbt:concat/open
execute if data storage snbt:temp {token:"["} run function snbt:concat/open
execute if data storage snbt:temp {token:","} run function snbt:concat/comma

data remove storage snbt:temp text[0]
execute if data storage snbt:temp text[0] run function snbt:concat/loop
