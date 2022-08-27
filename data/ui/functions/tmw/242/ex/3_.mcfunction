# 爆発時
function ui:template/explosion.4
particle explosion ~ ~ ~ 0 0 0 0 1 force
kill @s[tag=ex]
effect give @a[scores={ui_tmw_id2=249},distance=..5] glowing 1 0