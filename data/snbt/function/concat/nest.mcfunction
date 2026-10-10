data modify entity 6d657272-7920-6368-7269-73746d617321 text set value [" ",{text:"entries...",color:"gray",italic:true,hover_event:{action:"show_text",value:{storage:"snbt:temp",nbt:"stack[-1]",interpret:true,separator:""}}}," "]
data modify storage snbt:temp stack[-2] append from entity 6d657272-7920-6368-7269-73746d617321 text
data remove storage snbt:temp stack[-1]
data remove storage snbt:temp indent[-1]
