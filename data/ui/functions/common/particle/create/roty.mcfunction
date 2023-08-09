# 向き相対x座標に合わせて拡散

#
scoreboard players set $mod ui_calc1 1801
execute if data storage ui:common input.Rand{RotY:2} run scoreboard players set $mod ui_calc1 901
function ui:common/rand

#
execute if data storage ui:common input.Rand{RotY:2} run scoreboard players add $rand ui_calc1 450
execute store result entity @s Rotation[1] float 0.1 run scoreboard players remove $rand ui_calc1 900