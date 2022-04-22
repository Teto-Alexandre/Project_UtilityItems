#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:404},CustomModelData:170004,display:{Name:'[{"text":"グリッターキャンディ","color":"aqua","italic":false}]',Lore:['[{"text":"発光（1:00）","color":"red","italic":false}]']}} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw404
advancement revoke @s only ui:craft/tmw/tmw404