# 検知範囲拡大
tag @s[tag=tmw_drop_s] add tmw_drop_n

# 実行
execute as @s[tag=tmw_drop_n] run particle crit ~ ~ ~ 0 0 0 1 10 force
execute as @s[tag=tmw_drop_n] run playsound block.piston.extend player @a ~ ~ ~ 1 0.8 0
execute as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with air
execute as @s[tag=tmw_drop_n] run loot replace entity @s weapon.mainhand loot ui:single_item/tmw/255/vanilla/mech_bow
