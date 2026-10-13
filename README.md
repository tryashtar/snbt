## SNBT Pack

This is a developer utility data pack for printing SNBT in a nicer form than vanilla `/data get`.

### Usage

All functions are invoked as macros with one argument, `path`, which is specified the same as the end of a `/data get` command.

Example:

```mcfunction
function snbt:full {path: "entity @s"}
```

All functions are variations on `/data get`.

|Function|Difference from `/data get`|
|-|-|
|`snbt:full`|Output is multiline and indented.|
|`snbt:get`|Output has nested values collapsed.|
|`snbt:pretty`|Output is both multiline and has nested values collapsed|
|`snbt:menu`|Output appears in a scrollable dialog instead of chat, and has nested values collapsed.|
|`snbt:menu_full`|Output appears in a scrollable dialog instead of chat.|

You can hover over any nested value to see its contents, or click to print it, allowing you to look deeper into the tree.

All keys and primitive values (numbers, strings) in the output can be clicked to copy them to the clipboard.
