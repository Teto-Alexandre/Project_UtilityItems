#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:409},CustomModelData:170009,display:{Name:'[{"text":"はちみつサンド","color":"aqua","italic":false}]',Lore:['[{"text":"状態異常解除","color":"blue","italic":false}]']}} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw409
advancement revoke @s only ui:craft/tmw/tmw409