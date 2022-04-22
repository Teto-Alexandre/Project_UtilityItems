#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:405},CustomModelData:170005,display:{Name:'[{"text":"生命の実","color":"gold","italic":false}]',Lore:['[{"text":"最大HPが上昇する","color":"blue","italic":false}]','[{"text":"（この効果は重複する）","color":"blue","italic":false}]','[{"text":"","color":"gray","italic":false}]','[{"text":"効果:","color":"purple","italic":false}]','[{"text":"最大体力 +4","color":"blue","italic":false}]']}} 1
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw405
advancement revoke @s only ui:craft/tmw/tmw405