summon armor_stand ~ ~ ~ {Tags:["ui_temp_item"]}

item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s weapon.mainhand

item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s armor.head

item replace entity @s weapon.mainhand from entity @e[tag=ui_temp_item,limit=1] weapon.offhand

item replace entity @s armor.head from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand

kill @e[tag=ui_temp_item,limit=1]
