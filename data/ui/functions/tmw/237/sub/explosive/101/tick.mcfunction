# スプラッシュボム

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 6 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 1.8 0
    execute if score @s ui_uses matches 8 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 1.9 0
    execute if score @s ui_uses matches 10 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2.0 0
    execute if score @s ui_uses matches 20.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/101/end