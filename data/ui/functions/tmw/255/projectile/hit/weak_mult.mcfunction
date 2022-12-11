# 弱点特攻

# これヘッドショット？
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=armor_stand,tag=ui_temp_this,dx=0] run scoreboard players set $headshot ui_temp 1

# ヘッドショット成功
    execute if score $headshot ui_temp matches 1 run data merge storage ui:common {input:{Mode:"create",Var:2}}
    execute if score $headshot ui_temp matches 1 at @e[tag=ui_temp_this] run function ui:common/particle
    execute if score $headshot ui_temp matches 1 at @e[tag=ui_temp_this] run playsound entity.player.hurt_freeze neutral @a ~ ~ ~ 1 1.2 0
    execute if score $headshot ui_temp matches 1 run scoreboard players operation $damage ui_temp *= $weak_mult ui_temp
    execute if score $headshot ui_temp matches 1 run scoreboard players operation $damage ui_temp /= #100 ui_num
    execute if score $headshot ui_temp matches 1 run scoreboard players add $damage ui_temp 1