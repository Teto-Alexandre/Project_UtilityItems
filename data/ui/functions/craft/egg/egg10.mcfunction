#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:drowned_spawn_egg{tmw:{egg:10},display:{Name:'{"text":"インスタントエンドポータル","italic":false,"color":"aqua"}',Lore:['[{"text":"その場にポータルを生成する","color":"yellow","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_10"]}} 1
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:egg/egg10
advancement revoke @s only ui:craft/egg/egg10