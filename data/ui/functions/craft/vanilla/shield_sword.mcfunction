#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:iron_sword{display:{Name:'{"text":"シールドソード","color":"aqua","italic":false}',Lore:['[{"text":"持っている時防御力が上がる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:6,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:-0.6,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"arm",Amount:6,Operation:0,UUID:[I;3,1,1,3],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:vanilla/shield_sword
advancement revoke @s only ui:craft/vanilla/shield_sword