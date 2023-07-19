#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:diamond_hoe{display:{Name:'{"text":"農業用のクワ","color":"light_purple","italic":false}',Lore:['[{"text":"農業のために作られたので攻撃には向かない","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:1,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:0,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"spd",Amount:1,Operation:1,UUID:[I;3,1,1,3],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"kbr",Amount:0.1,Operation:0,UUID:[I;3,1,1,4],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"hel",Amount:10,Operation:0,UUID:[I;3,1,1,5],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"arm",Amount:5,Operation:0,UUID:[I;3,1,1,6],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:vanilla/agricultural_hoe
advancement revoke @s only ui:craft/vanilla/agricultural_hoe