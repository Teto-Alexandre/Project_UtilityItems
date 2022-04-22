#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:408},CustomModelData:170008,display:{Name:'[{"text":"スイートベリーサンド","color":"aqua","italic":false}]',Lore:['[{"text":"暗視（1:00）","color":"blue","italic":false}]']}} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw408
advancement revoke @s only ui:craft/tmw/tmw408