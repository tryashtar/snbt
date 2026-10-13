$data modify storage snbt:temp stack[-1].text append value {text:"$(text)",color:"gold",click_event:{action:"copy_to_clipboard",value:"$(text)$(suffix)"},extra:[{text:"$(suffix)",color:"red"}]}
