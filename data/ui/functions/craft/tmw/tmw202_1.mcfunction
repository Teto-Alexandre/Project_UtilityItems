#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stone_axe{tmw:{id:202},display:{Name:'{"italic":false,"color":"aqua","text":"石の上級斧"}'}}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw202_1
advancement revoke @s only ui:craft/tmw/tmw202_1