# tmw_237_readtagのタグが付いているならプレイヤーのタグを読み取る
execute if entity @s[tag=tmw_237_tag_inkfill] run function ui:tmw/237/tag/inkfill
execute if entity @s[tag=tmw_237_tag_spdec] run function ui:tmw/237/tag/spdec
execute if entity @s[tag=tmw_237_tag_king] run function ui:tmw/237/tag/king
execute if entity @s[tag=tmw_237_tag_unking] run function ui:tmw/237/tag/unking

# タグ消し
tag @s remove tmw_237_readtag