# ササッ、防具立てを介してお前のインベントリに素早く戻す
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @e[tag=ui_temp_item,limit=1] Item
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    kill @e[tag=ui_temp]
    kill @e[tag=ui_temp_item]

# 付与
    execute as @s[scores={ui_st=..0}] run tag @s add tmw_drop_n
    execute as @s[scores={ui_st=1..}] run tag @s add tmw_drop_s