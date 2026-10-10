data modify storage snbt:temp peek set from storage snbt:temp text[1]
execute if data storage snbt:temp {peek:{text:"I"}} run function snbt:concat/array
execute if data storage snbt:temp {peek:{text:"B"}} run function snbt:concat/array
execute if data storage snbt:temp {peek:{text:"L"}} run function snbt:concat/array
execute if data storage snbt:temp {peek:"}"} run return run function snbt:concat/empty
execute if data storage snbt:temp {peek:"]"} run return run function snbt:concat/empty
execute if score pretty snbt matches 0 run return 0
data modify storage snbt:temp output append value "\n"
data modify storage snbt:temp indent append value "  "
data modify storage snbt:temp output append from storage snbt:temp indent[]
