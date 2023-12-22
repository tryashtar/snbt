data modify storage snbt:temp context.path set from storage snbt:temp context.key
function snbt:get/count with storage snbt:temp context
data modify storage snbt:temp display_value set value '["{ ",{"score":{"name":"count","objective":"snbt"},"color":"gray","extra":[" entries..."]}," }"]'
