#使用時

# 選択肢
    execute if entity @e[tag=ui_common_mine_square,distance=..15] run tellraw @s {"text":"付近に別のマインスイーパーがあります","color":"red"}
    execute unless entity @e[tag=ui_common_mine_square,distance=..15] run function ui:tmw/250/use/unless