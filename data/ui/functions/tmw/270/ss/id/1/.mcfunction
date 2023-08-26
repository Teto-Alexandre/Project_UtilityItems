# バルカンもどき

#
    execute store result score $time ui_temp in overworld run time query gametime
    scoreboard players operation $time ui_temp += @s ui_is2
    scoreboard players operation $time ui_temp %= #20 ui_num

#ダメージ計算
    execute store result score $temp ui_temp run data get entity @e[tag=ui_temp_obj,tag=tmw_270_hitbox,limit=1] Health 10
    scoreboard players remove $temp ui_temp 10000
    scoreboard players operation @s ui_dhp += $temp ui_temp
    data merge entity @e[tag=ui_temp_obj,tag=tmw_270_hitbox,limit=1] {Health:1000f}

# 射撃
    tag @e[distance=..50,tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] add ui_temp_target
    execute unless entity @e[tag=ui_temp_target] run teleport @s ~ ~ ~ ~2 0
    execute if entity @e[tag=ui_temp_target] if entity @s[tag=!tmw_270_ud] run function ui:tmw/270/ss/id/1/fire_d
    execute if entity @e[tag=ui_temp_target] if entity @s[tag=tmw_270_ud] run function ui:tmw/270/ss/id/1/fire_u

# モデル
    execute if entity @s[tag=!tmw_270_ud] run function ui:tmw/270/ss/id/1/model_d
    execute if entity @s[tag=tmw_270_ud] run function ui:tmw/270/ss/id/1/model_u

# 処理終了（消える）
    execute if score @s ui_dhp matches ..0 run function ui:tmw/270/ss/kill
    tag @e[tag=ui_temp_target] remove ui_temp_target