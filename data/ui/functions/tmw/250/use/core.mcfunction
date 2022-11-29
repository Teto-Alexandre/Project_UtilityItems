#使用時

# 選択肢
    execute unless entity @e[tag=ui_common_mine_square,distance=..15] run data merge storage ui:common {input:{Mode:"generate",Size:7,Bomb:62}}
    execute unless entity @e[tag=ui_common_mine_square,distance=..15] run function ui:common/mine_square