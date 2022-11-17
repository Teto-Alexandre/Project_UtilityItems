# スコア化
    #data merge storage ui:common {input:{Damage:10}}

#
    #execute store result score $common.armor_damage ui_temp run data get storage ui:common input.Damage

# みがわり
    summon armor_stand ~ ~ ~ {Tags:["ui_temp_armor_tester"],Marker:1b,NoGravity:1b,Invisible:1b}

# 装備移動
    item replace entity @e[tag=ui_temp_armor_tester] armor.head from entity @s armor.head
    item replace entity @e[tag=ui_temp_armor_tester] armor.chest from entity @s armor.chest
    item replace entity @e[tag=ui_temp_armor_tester] armor.legs from entity @s armor.legs
    item replace entity @e[tag=ui_temp_armor_tester] armor.feet from entity @s armor.feet

# 耐久度ダメージ
    #頭
    execute if data entity @e[tag=ui_temp_armor_tester,limit=1] ArmorItems[3].Count run function ui:common/armor_damage/head
    #胴
    execute if data entity @e[tag=ui_temp_armor_tester,limit=1] ArmorItems[2].Count run function ui:common/armor_damage/chest
    #脚
    execute if data entity @e[tag=ui_temp_armor_tester,limit=1] ArmorItems[1].Count run function ui:common/armor_damage/legs
    #足
    execute if data entity @e[tag=ui_temp_armor_tester,limit=1] ArmorItems[0].Count run function ui:common/armor_damage/feet

#
    kill @e[tag=ui_temp_armor_tester]