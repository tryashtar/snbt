# show suffix in red if it exists
# bytes appear with capital B in byte arrays, lowercase B elsewhere
execute if data storage snbt:temp {suffix:"b"} run return run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"b","color":"red"}]'
execute if data storage snbt:temp {suffix:"B"} run return run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"B","color":"red"}]'
execute if data storage snbt:temp {suffix:"f"} run return run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"f","color":"red"}]'
execute if data storage snbt:temp {suffix:"d"} run return run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"d","color":"red"}]'
execute if data storage snbt:temp {suffix:"s"} run return run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"s","color":"red"}]'
execute if data storage snbt:temp {suffix:"L"} run return run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '[{"storage":"snbt:temp","nbt":"number","color":"gold"},{"text":"L","color":"red"}]'
data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '{"storage":"snbt:temp","nbt":"value","color":"gold"}'
