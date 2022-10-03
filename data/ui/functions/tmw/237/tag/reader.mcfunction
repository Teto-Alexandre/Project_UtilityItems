# tmw_237_readtagのタグが付いているならプレイヤーのタグを読み取る
execute if entity @s[tag=tmw_237_tag_ink250] run function ui:tmw/237/tag/ink250
execute if entity @s[tag=tmw_237_tag_inkfill] run function ui:tmw/237/tag/inkfill
execute if entity @s[tag=tmw_237_tag_spdec] run function ui:tmw/237/tag/spdec

# タグ消し
tag @s remove tmw_237_readtag