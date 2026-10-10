data modify entity 6d657272-7920-6368-7269-73746d617321 text set value [" ",[{storage:"snbt:temp",nbt:"stack[-1].entries",plain:true,color:"gray",italic:true,hover_event:{action:"show_text",value:{storage:"snbt:temp",nbt:"stack[-1].text",interpret:true,separator:""}}}," entries..."]," "]
data modify storage snbt:temp stack[-2].text append from entity 6d657272-7920-6368-7269-73746d617321 text
data remove storage snbt:temp stack[-1]
execute if score pretty snbt matches 0 run return 0
data remove storage snbt:temp indent[-1]
