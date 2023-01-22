# 向き相対x座標に合わせて拡散

#
scoreboard players set $mod ui_calc1 1801
function ui:common/rand

#
execute store result entity @s Rotation[1] float 0.1 run scoreboard players remove $rand ui_calc1 900