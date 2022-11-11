# tmw_256_readtagのタグが付いているならプレイヤーのタグを読み取る
execute if entity @s[tag=tmw_256_tag_ink250] run function ui:tmw/256/tag/ink250
execute if entity @s[tag=tmw_256_tag_inkfill] run function ui:tmw/256/tag/inkfill
execute if entity @s[tag=tmw_256_tag_spdec] run function ui:tmw/256/tag/spdec

# タグ消し
tag @s remove tmw_256_readtag