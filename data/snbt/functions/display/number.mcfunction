data modify storage snbt:temp number set string storage snbt:temp value 0 -1
data modify storage snbt:temp suffix set string storage snbt:temp value -1
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute if data storage snbt:temp {suffix:"b"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"b","color":"red"}]'
execute if data storage snbt:temp {suffix:"f"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"f","color":"red"}]'
execute if data storage snbt:temp {suffix:"d"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"d","color":"red"}]'
execute if data storage snbt:temp {suffix:"s"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"s","color":"red"}]'
execute if data storage snbt:temp {suffix:"L"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"L","color":"red"}]'
execute unless data storage snbt:temp {suffix:"b"} unless data storage snbt:temp {suffix:"f"} unless data storage snbt:temp {suffix:"d"} unless data storage snbt:temp {suffix:"s"} unless data storage snbt:temp {suffix:"L"} run data modify entity 0-0-0-0-1 text set value '{"storage":"snbt:temp","nbt":"value","color":"gold"}'
data modify storage snbt:temp display_value set from entity 0-0-0-0-1 text
kill 0-0-0-0-1
