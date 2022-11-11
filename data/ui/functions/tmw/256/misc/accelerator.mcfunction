#射程を３倍にし、弾速を２倍にする
    scoreboard players operation @s ui_br *= #2 ui_num
    scoreboard players operation @s ui_bm *= #3 ui_num
    scoreboard players operation @s ui_bm /= #2 ui_num
    tag @s add ui_accd