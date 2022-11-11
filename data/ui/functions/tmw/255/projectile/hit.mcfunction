# 命中処理
    scoreboard players set $sound ui_temp 0
    data modify storage ui:temp temp.Name set from entity @s ArmorItems.[0].tag.display.Name
    data modify storage ui:temp temp.UUID set from entity @s ArmorItems.[0].tag.uuid
    data modify storage ui:temp temp.Modifiers set from entity @s ArmorItems.[0].tag.modifiers
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/255/projectile/hit_ent
    execute if score $sound ui_temp matches 1 as @a if score @s ui_id = $id ui_temp at @s run playsound entity.snow_golem.shoot player @s ~ ~ ~ 0.7 2 0
    execute if score $sound ui_temp matches 2 as @a if score @s ui_id = $id ui_temp at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 0
    execute if score $sound ui_temp matches 3 as @a if score @s ui_id = $id ui_temp at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

# データ消し
    data remove storage ui:temp temp

# 消失
    tag @s add tmw_255_proj_del