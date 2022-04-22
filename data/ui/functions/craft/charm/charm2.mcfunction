#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:pink_dye{tmw:{charm:2,id:-4},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"再生の加護","color":"gold","italic":false}]',Lore:['[{"text":"5秒毎に体力を1回復する","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"自動回復","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm2
advancement revoke @s only ui:craft/charm/charm2