#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:406},CustomModelData:170006,display:{Name:'[{"text":"天使の祝福","color":"green","italic":false}]',Lore:['[{"text":"永続的に幸運が増加する","color":"blue","italic":false}]','[{"text":"","color":"gray","italic":false}]','[{"text":"効果:","color":"purple","italic":false}]','[{"text":"幸運 +1","color":"blue","italic":false}]']}} 1
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw406
advancement revoke @s only ui:craft/tmw/tmw406