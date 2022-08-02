# 重複してヒットしない
    tag @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] add ui_temp_attacked_free

# 命中処理ー消滅しない
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/projectile/hit_ent