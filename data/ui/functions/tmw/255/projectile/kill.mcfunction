#魔法の弾を削除
tag @s add ui_proj_common_nocol
summon marker ~ ~ ~ {Tags:["tmw255_killeffect","ui_temp"]}
teleport @e[tag=ui_temp] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=ui_temp] ui_hpart = @s ui_hpart
scoreboard players operation @e[tag=ui_temp] ui_team = @s ui_team
scoreboard players operation @e[tag=ui_temp] ui_id = @s ui_id
tag @e[tag=ui_temp] remove ui_temp
scoreboard players set $Cache ui_temp 1
kill @s

#命中・終端時効果を起動する
schedule function ui:tmw/255/projectile/killeffect/loader 1t append