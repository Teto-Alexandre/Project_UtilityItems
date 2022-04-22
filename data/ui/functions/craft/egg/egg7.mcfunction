#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:evoker_spawn_egg{tmw:{egg:7},display:{Name:'{"text":"大きな石の塊","italic":false,"color":"white"}'},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_7"]}}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:egg/egg7
advancement revoke @s only ui:craft/egg/egg7