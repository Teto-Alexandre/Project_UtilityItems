#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s green_dye{tmw:{charm:17,id:216},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"暗視の加護","color":"gold","italic":false}]',Lore:['[{"text":"暗いところがよく見える","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"暗視","color":"green","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:charm/charm17
advancement revoke @s only ui:craft/charm/charm17