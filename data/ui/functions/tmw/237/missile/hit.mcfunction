# 命中処理
    scoreboard players operation $temp ui_bdt = @s ui_bdt
    scoreboard players operation #temp tds_dmg = @s ui_dmg
    scoreboard players operation $Knockback tds_dmg = @s ui_kb
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance] as @a if score @s ui_id = $Attacker tds_dmg at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/missile/hit_ent

# 消失
    tag @s add tmw_237_proj_del