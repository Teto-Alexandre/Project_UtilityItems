#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:zoglin_spawn_egg{tmw:{egg:5},display:{Name:'{"text":"NovaFurnace","italic":false,"color":"green"}',Lore:['[{"text":"超エネルギー＋高速精錬！","color":"gray","italic":false}]','[{"text":"ごく稀に爆発することがあります","color":"gray","italic":false}]','[{"text":" - Nova Corporation -","color":"dark_purple","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_5"]}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:egg/egg5
advancement revoke @s only ui:craft/egg/egg5