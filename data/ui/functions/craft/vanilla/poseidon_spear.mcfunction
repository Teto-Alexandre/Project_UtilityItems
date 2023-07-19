#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s trident{display:{Name:'{"text":"ポセイドンの槍","color":"light_purple","italic":false}',Lore:['{"text":"海王の名を冠する矛","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:5s},{id:"minecraft:channeling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:10,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:-0.65,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"kbr",Amount:0.1,Operation:0,UUID:[I;3,1,1,3],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:vanilla/poseidon_spear
advancement revoke @s only ui:craft/vanilla/poseidon_spear