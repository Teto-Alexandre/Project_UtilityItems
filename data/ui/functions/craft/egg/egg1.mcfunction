#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:bat_spawn_egg{tmw:{egg:1},display:{Name:'{"text":"インスタントブロック","italic":false,"color":"aqua"}',Lore:['[{"text":"すぐに壊れる簡易ブロックを置く","color":"yellow","italic":false}]','[{"text":"10秒経つと自壊する","color":"yellow","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_1"]}} 12
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:egg/egg1
advancement revoke @s only ui:craft/egg/egg1