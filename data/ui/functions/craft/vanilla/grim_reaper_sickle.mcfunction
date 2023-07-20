#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:netherite_hoe{display:{Name:'{"text":"死神の鎌","color":"light_purple","italic":false}',Lore:['{"text":"圧倒的攻撃力を誇る","color":"gray","italic":false}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:20,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:5,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"spd",Amount:0,Operation:1,UUID:[I;3,1,1,3],Slot:"mainhand"}],Damage:214748364,RepairCost:32767} 1
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:vanilla/grim_reaper_sickle
advancement revoke @s only ui:craft/vanilla/grim_reaper_sickle