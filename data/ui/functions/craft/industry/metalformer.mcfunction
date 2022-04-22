#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:130010,display:{Name:'{"text":"金属加工機","italic":false,"color":"dark_green"}',Lore:['[{"text":"電気を使って金属を加工する","color":"gray","italic":false}]','[{"text":"消費電力：4SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：2000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_10"]}} 1
function ui:craft/common/exp/industry

#レシピおよび進捗消去
recipe take @s ui:industry/metalformer
advancement revoke @s only ui:craft/industry/metalformer