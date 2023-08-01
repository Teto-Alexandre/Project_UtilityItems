# 弾にデータを込める
teleport @s ^ ^ ^0.5 ~ ~
scoreboard players operation @s ui_bpart = $particle.fly ui_temp
scoreboard players operation @s ui_hpart = $particle.end ui_temp
scoreboard players operation @s ui_bm = $speed ui_temp
scoreboard players operation @s ui_bm += $speed.add ui_temp
scoreboard players operation @s ui_bm_lim = @s ui_bm
scoreboard players operation @s ui_bm_lim /= #4 ui_num
execute if score $range ui_temp matches 1.. run scoreboard players operation @s ui_br = $range ui_temp
scoreboard players operation @s ui_dmg = $mass ui_temp
scoreboard players operation @s ui_autohit = $air_res ui_temp
scoreboard players operation @s ui_bg = $gravity ui_temp
scoreboard players operation @s ui_proj_stat_damage_factor = $damage_factor ui_temp
scoreboard players operation @s ui_bdt = $damage_type ui_temp
scoreboard players operation @s ui_bu = $weak_mult ui_temp
scoreboard players operation @s ui_gms = $back_mult ui_temp
scoreboard players operation @s ui_proj_stat_pierce_entity = $pierce_ent ui_temp
execute if score $pierce_ent ui_temp matches 1.. run scoreboard players set @s ui_proj_stat_pierce_entity.obj_id 0
execute if score $pierce_ent ui_temp matches 1.. run tag @s add ui_proj_pierce_entity
scoreboard players operation @s ui_proj_stat_break_mult = $break_mult ui_temp
scoreboard players operation @s ui_id = $id ui_temp
scoreboard players operation @s ui_team = $team ui_temp
data modify entity @s ArmorItems.[0].tag.display.Name set from storage ui:object_maker temp.DisplayName
data modify entity @s ArmorItems.[0].tag.uuid set from storage ui:object_maker temp.UUID
data modify entity @s ArmorItems.[0].tag.fly_modifiers set from storage ui:object_maker temp.FlyModifiers
data modify entity @s ArmorItems.[0].tag.hit_modifiers set from storage ui:object_maker temp.HitModifiers
execute store result score @s ui_bmods run data get storage ui:object_maker temp.FlyModifiers
execute store result score @s ui_hmods run data get storage ui:object_maker temp.HitModifiers
tag @s remove ui_temp_unpower