#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:407},CustomModelData:170007,display:{Name:'[{"text":"畑の野菜サンド","color":"aqua","italic":false}]'}} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw407
advancement revoke @s only ui:craft/tmw/tmw407