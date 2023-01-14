# @s のターゲットをリセットしてから ui_common_mob_target の攻撃対象化 AEC を出す (複数版)

#
execute as @e[tag=ui_common_mob_crowd] run function ui:common/mob/set_move_mult/each

#
schedule function ui:common/mob/set_target/remove_anti_kb 2t append
