#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:fishing_rod{tmw:{id:218,type:3},display:{Name:'{"text":"ロングフィッシャー","color":"aqua","italic":false}',Lore:['[{"text":"","color":"gray","italic":false}]','[{"text":"利き手に持ったとき:","color":"gray","italic":false}]','[{"text":"加速投射 +50%","color":"blue","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw218_3
advancement revoke @s only ui:craft/tmw/tmw218_3