#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:ravager_spawn_egg{tmw:{egg:3},display:{Name:'{"text":"インスタントタワー","italic":false,"color":"light_purple"}',Lore:['[{"text":"その場に塔を建てその頂点に立つ","color":"yellow","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_3"]}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:egg/egg3
advancement revoke @s only ui:craft/egg/egg3