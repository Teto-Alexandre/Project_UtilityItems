# 落下する

scoreboard players operation $fall_damage ui_temp = @s ui_tmw501_19_test_fd
scoreboard players remove $fall_damage ui_temp 300

#
#tellraw @s [{"text":"受けたダメージ: "},{"score":{"name": "$fall_damage","objective": "ui_temp"}}]
#scoreboard players operation $fall_damage ui_temp /= #2 ui_num
#tellraw @s [{"text":"└ 回復したダメージ: "},{"score":{"name": "$fall_damage","objective": "ui_temp"}}]

#
execute if score @s ui_tmw501_19_now_shock_absorber matches 1.. if score $fall_damage ui_temp matches 1.. run function ui:tmw/501/19/battle/fall/shock_absorber

#
scoreboard players set @s ui_tmw501_19_test_fd 0
scoreboard players set @s ui_tmw501_19_test_dt 0