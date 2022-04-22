#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s cookie{tmw:{id:401},CustomModelData:170001,display:{Name:'[{"text":"異界渡りの果実","color":"light_purple","italic":false}]',Lore:['[{"text":"異世界に転移するが、移動には危険が伴うだろう","color":"gray","italic":false}]','[{"text":"その世界での一歩はこちらの五十歩に相当する","color":"gray","italic":false}]','[{"text":"オーバーワールドでのみ使用可能","color":"yellow","italic":false}]']}} 1
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw401
advancement revoke @s only ui:craft/tmw/tmw401