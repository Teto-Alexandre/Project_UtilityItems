#=======================================================================================================

scoreboard players add $5sec ui_tc 1
execute if score $5sec ui_tc matches 6.. run scoreboard players set $5sec ui_tc 1

scoreboard players add $world2 ui_tc 1
execute if score $world2 ui_tc matches 11.. run function ui:10sec

#=======================================================================================================

#障壁
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tmw:{id:-3}}}]}] store result score @s ui_dhpm run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.amount 1
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{tmw:{id:-3}}}]}] run scoreboard players set @s ui_dhpm 0
execute as @a run scoreboard players operation @s ui_dhp < @s ui_dhpm

#再生の加護
execute if score $5sec ui_tc matches 1 as @a[nbt={Inventory:[{Slot:-106b,tag:{tmw:{id:-4}}}]}] run effect give @s regeneration 1 2 true

#反射off
tag @a[tag=ui_c_ref,tag=!ui_c_ref_p] remove ui_c_ref

#刹那
execute if score $bullettime ui_world matches 1 as @e[tag=ui_timestop] run data merge entity @s {NoAI:0b}
execute if score $bullettime ui_world matches 1 as @e[tag=ui_timestop] run tag @s remove ui_timestop
execute if score $bullettime ui_world matches 1.. run scoreboard players remove $bullettime ui_world 1

#クールタイム
scoreboard players remove @a[scores={ui_ct=1..}] ui_ct 1
scoreboard players reset @a[scores={ui_ct=..0}] ui_ct

#=======================================================================================================

scoreboard players set $world ui_tc 1

#=======================================================================================================
