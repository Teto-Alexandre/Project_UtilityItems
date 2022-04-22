#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:fishing_rod{tmw:{id:218,type:7},CustomModelData:160003,display:{Name:'{"text":"ポセイドン","color":"gold","italic":false}',Lore:['[{"text":" 獲物にかかれば数秒で命を奪う","color":"gray","italic":false}]','[{"text":" 一針で二度おいしい魔法の釣り竿","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]','[{"text":"利き手に持ったとき:","color":"gray","italic":false}]','[{"text":"生命の釣り","color":"green","italic":false}]','[{"text":"ドロップ増加 +100%","color":"blue","italic":false}]']},Unbreakable:1b,HideFlags:5}
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw218_7
advancement revoke @s only ui:craft/tmw/tmw218_7