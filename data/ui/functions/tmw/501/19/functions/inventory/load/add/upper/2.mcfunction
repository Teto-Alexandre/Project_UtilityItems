##汎用性が高い固定値アップ拡張

# スコア化
execute store result score $shock_absorber ui_temp run data get storage ui:rob temp.Front.shock_absorber
execute store result score $en_max ui_temp run data get storage ui:rob temp.Front.en_max
execute store result score $en_regen ui_temp run data get storage ui:rob temp.Front.en_regen
execute store result score $en_use_hud ui_temp run data get storage ui:rob temp.Front.en_use_hud
execute store result score $en_use_jet ui_temp run data get storage ui:rob temp.Front.en_use_jet
execute store result score $en_use_speed ui_temp run data get storage ui:rob temp.Front.en_use_speed
execute store result score $jet_type ui_temp run data get storage ui:rob temp.Front.jet_type
execute store result score $speed_type ui_temp run data get storage ui:rob temp.Front.speed_type
execute store result score $s1_max ui_temp run data get storage ui:rob temp.Front.s1_max
execute store result score $s1_regen ui_temp run data get storage ui:rob temp.Front.s1_regen
execute store result score $s2_max ui_temp run data get storage ui:rob temp.Front.s2_max
execute store result score $s2_regen ui_temp run data get storage ui:rob temp.Front.s2_regen
execute store result score $rot_x ui_temp run data get storage ui:rob temp.Front.rot_x
execute store result score $rot_y ui_temp run data get storage ui:rob temp.Front.rot_y
execute store result score $mov ui_temp run data get storage ui:rob temp.Front.mov
execute store result score $ilv ui_temp run data get storage ui:rob temp.Front.ilv
execute store result score $hudt ui_temp run data get storage ui:rob temp.Front.hudt

# 加算
scoreboard players operation @s ui_tmw501_19_now_shock_absorber += $shock_absorber ui_temp
scoreboard players operation @s ui_tmw501_19_stat_en_max += $en_max ui_temp
scoreboard players operation @s ui_tmw501_19_stat_en_regen += $en_regen ui_temp
scoreboard players operation @s ui_tmw501_19_stat_en_use_hud += $en_use_hud ui_temp
scoreboard players operation @s ui_tmw501_19_stat_en_use_jet += $en_use_jet ui_temp
scoreboard players operation @s ui_tmw501_19_stat_en_use_speed += $en_use_speed ui_temp
scoreboard players operation @s ui_tmw501_19_stat_jet_type += $jet_type ui_temp
scoreboard players operation @s ui_tmw501_19_stat_speed_type += $speed_type ui_temp
scoreboard players operation @s ui_tmw501_19_stat_s1_max += $s1_max ui_temp
scoreboard players operation @s ui_tmw501_19_stat_s1_regen += $s1_regen ui_temp
scoreboard players operation @s ui_tmw501_19_stat_s2_max += $s2_max ui_temp
scoreboard players operation @s ui_tmw501_19_stat_s2_regen += $s2_regen ui_temp
scoreboard players operation @s ui_tmw501_19_stat_rot_x += $rot_x ui_temp
scoreboard players operation @s ui_tmw501_19_stat_rot_y += $rot_y ui_temp
scoreboard players operation @s ui_tmw501_19_stat_mov += $mov ui_temp
scoreboard players operation @s ui_tmw501_19_stat_ilv += $ilv ui_temp
scoreboard players operation @s ui_tmw501_19_stat_hudt += $hudt ui_temp
