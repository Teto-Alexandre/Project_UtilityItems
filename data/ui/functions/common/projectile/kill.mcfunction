#魔法の弾を削除
tag @s add ui_proj_common_nocol
summon marker ^ ^ ^-0.5 {Tags:["ui_proj_common_part","ui_temp"]}
scoreboard players operation @e[tag=ui_temp] ui_hpart = @s ui_hpart
scoreboard players operation @e[tag=ui_temp] ui_team = @s ui_team
scoreboard players operation @e[tag=ui_temp] ui_id = @s ui_id
tag @e[tag=ui_temp] remove ui_temp
kill @s

#命中・終端時効果を起動する
schedule function ui:common/projectile/kill.effect 1t append