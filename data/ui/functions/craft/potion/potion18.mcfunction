#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{custom_potion_effects:[{id:"minecraft:levitation",amplifier:0b,duration:3000}],HideFlags:32,CustomPotionColor:14649343,display:{Name:'{"text":"§bここからの素晴らしい眺め§r"}'}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion18
advancement revoke @s only ui:craft/potion/potion18