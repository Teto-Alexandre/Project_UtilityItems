#=======================================================================================================

tag @s[tag=tmw_drop_s] add tmw_drop_n

#ポーションの装填・置換
#tag @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]}] add tmw_r
execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]}] at @s run function ui:tmw/12/reload
#tag @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]}] add tmw_r
execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]}] at @s run function ui:tmw/12/reload

#旧：情報が書き込まれたポーションを回収（理由：処理が多い）
#execute as @s[tag=tmw_r] at @s run summon item ~ ~ ~ {Tags:["tmw_r_item"],Item:{id:"stone",Count:1b},PickupDelay:0s}
#execute as @s[tag=tmw_r] run data modify entity @e[tag=tmw_r_item,limit=1] Item set from block 0 0 0 RecordItem
#execute as @s[tag=tmw_r] run tag @s remove tmw_r

#新：情報が書き込まれたポーションを回収
#execute as @s[tag=tmw_r] run item replace entity @s weapon.offhand with air
#execute as @s[tag=tmw_r] run execute in overworld run item replace entity @s weapon.offhand from block 0 0 0 container.0
#execute as @s[tag=tmw_r] run tag @s remove tmw_r

#=======================================================================================================