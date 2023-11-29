#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{custom_potion_effects:[{id:"minecraft:glowing",amplifier:1b,duration:3000}],CustomPotionColor:65535,display:{Name:'{"text":"§b発光液§r"}'},HideFlags:32}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion14
advancement revoke @s only ui:craft/potion/potion14