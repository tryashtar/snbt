# resolving the "nbt" component stringifies our NBT, but also wraps it in a text component "{key:\"value\"}"
# luckily, simple text components now serialize by simply wrapping in quotes
# this means we can feed it directly to a "/data modify set value" command with a macro to unwrap it, and get a pure SNBT string
data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '{"storage":"snbt:temp","nbt":"nbt"}'
data modify storage snbt:temp context.snbt set from entity 6d657272-7920-6368-7269-73746d617321 text
function snbt:convert/flatten with storage snbt:temp context
execute store result score length snbt run data get storage snbt:temp context.snbt
