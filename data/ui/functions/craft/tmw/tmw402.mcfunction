#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:402},CustomModelData:170002,display:{Name:'[{"text":"アップビート","color":"aqua","italic":false}]',Lore:['[{"text":"攻撃力上昇（1:00）","color":"blue","italic":false}]','[{"text":"","color":"gray","italic":false}]','[{"text":"効果:","color":"purple","italic":false}]','[{"text":"攻撃力 +3","color":"blue","italic":false}]']}} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw402
advancement revoke @s only ui:craft/tmw/tmw402