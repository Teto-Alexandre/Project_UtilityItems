##汎用性が高い割合アップ拡張

# スコア化
execute store result score $en_max ui_temp run data get storage ui:rob temp.Front.en_max
execute store result score $en_regen ui_temp run data get storage ui:rob temp.Front.en_regen
execute store result score $en_use_hud ui_temp run data get storage ui:rob temp.Front.en_use_hud
execute store result score $en_use_jet ui_temp run data get storage ui:rob temp.Front.en_use_jet
execute store result score $en_use_speed ui_temp run data get storage ui:rob temp.Front.en_use_speed
execute store result score $s1_max ui_temp run data get storage ui:rob temp.Front.s1_max
execute store result score $s1_regen ui_temp run data get storage ui:rob temp.Front.s1_regen
execute store result score $s2_max ui_temp run data get storage ui:rob temp.Front.s2_max
execute store result score $s2_regen ui_temp run data get storage ui:rob temp.Front.s2_regen
execute store result score $rot_x ui_temp run data get storage ui:rob temp.Front.rot_x
execute store result score $rot_y ui_temp run data get storage ui:rob temp.Front.rot_y
execute store result score $mov ui_temp run data get storage ui:rob temp.Front.mov

# 積算
execute if score $en_max ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_max *= $en_max ui_temp
execute if score $en_max ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_max /= #100 ui_num
execute if score $en_regen ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_regen *= $en_regen ui_temp
execute if score $en_regen ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_regen /= #100 ui_num
execute if score $en_use_hud ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_use_hud *= $en_use_hud ui_temp
execute if score $en_use_hud ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_use_hud /= #100 ui_num
execute if score $en_use_jet ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_use_jet *= $en_use_jet ui_temp
execute if score $en_use_jet ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_use_jet /= #100 ui_num
execute if score $en_use_speed ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_use_speed *= $en_use_speed ui_temp
execute if score $en_use_speed ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_en_use_speed /= #100 ui_num
execute if score $s1_max ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s1_max *= $s1_max ui_temp
execute if score $s1_max ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s1_max /= #100 ui_num
execute if score $s1_regen ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s1_regen *= $s1_regen ui_temp
execute if score $s1_regen ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s1_regen /= #100 ui_num
execute if score $s2_max ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s2_max *= $s2_max ui_temp
execute if score $s2_max ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s2_max /= #100 ui_num
execute if score $s2_regen ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s2_regen *= $s2_regen ui_temp
execute if score $s2_regen ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_s2_regen /= #100 ui_num
execute if score $rot_x ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_rot_x *= $rot_x ui_temp
execute if score $rot_x ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_rot_x /= #100 ui_num
execute if score $rot_y ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_rot_y *= $rot_y ui_temp
execute if score $rot_y ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_rot_y /= #100 ui_num
execute if score $mov ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_mov *= $mov ui_temp
execute if score $mov ui_temp matches 1.. run scoreboard players operation @s ui_tmw501_19_stat_mov /= #100 ui_num
