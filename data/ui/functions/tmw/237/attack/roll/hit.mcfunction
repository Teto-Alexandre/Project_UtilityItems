# 命中処理
    scoreboard players set $temp ui_bdt 1
    scoreboard players operation #temp tds_dmg = $damage ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b}] as @a if score @s ui_id = $Attacker tds_dmg at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    data modify storage ui:temp Name set from storage ui:gun temp.DisplayName
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/attack/roll/hit_ent