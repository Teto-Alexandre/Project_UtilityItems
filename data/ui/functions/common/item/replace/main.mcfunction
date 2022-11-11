#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
summon armor_stand ~ ~ ~ {Tags:["ui_c_replace_item"],ArmorItems:[{id:"minecraft:stone",Count:1b},{},{},{}],Marker:1b,Invisible:1b}
data modify entity @e[tag=ui_c_replace_item,limit=1] ArmorItems[0] set from storage ui:common input.Item
execute if score $num ui_temp matches 0 run item replace entity @s container.0 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 1 run item replace entity @s container.1 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 2 run item replace entity @s container.2 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 3 run item replace entity @s container.3 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 4 run item replace entity @s container.4 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 5 run item replace entity @s container.5 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 6 run item replace entity @s container.6 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 7 run item replace entity @s container.7 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 8 run item replace entity @s container.8 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 9 run item replace entity @s container.9 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 10 run item replace entity @s container.10 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 11 run item replace entity @s container.11 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 12 run item replace entity @s container.12 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 13 run item replace entity @s container.13 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 14 run item replace entity @s container.14 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 15 run item replace entity @s container.15 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 16 run item replace entity @s container.16 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 17 run item replace entity @s container.17 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 18 run item replace entity @s container.18 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 19 run item replace entity @s container.19 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 20 run item replace entity @s container.20 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 21 run item replace entity @s container.21 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 22 run item replace entity @s container.22 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 23 run item replace entity @s container.23 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 24 run item replace entity @s container.24 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 25 run item replace entity @s container.25 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 26 run item replace entity @s container.26 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 27 run item replace entity @s container.27 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 28 run item replace entity @s container.28 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 29 run item replace entity @s container.29 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 30 run item replace entity @s container.30 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 31 run item replace entity @s container.31 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 32 run item replace entity @s container.32 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 33 run item replace entity @s container.33 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 34 run item replace entity @s container.34 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 35 run item replace entity @s container.35 from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 100 run item replace entity @s armor.feet from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 101 run item replace entity @s armor.legs from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 102 run item replace entity @s armor.chest from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches 103 run item replace entity @s armor.head from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches -106 run item replace entity @s weapon.offhand from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
execute if score $num ui_temp matches -1 run item replace entity @s weapon.mainhand from entity @e[tag=ui_c_replace_item,limit=1] armor.feet
kill @e[tag=ui_c_replace_item]
