#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:130003,display:{Name:'{"text":"簡易蓄電機","italic":false,"color":"dark_green"}',Lore:['[{"text":"隣接4ブロックから給電する","color":"gray","italic":false}]','[{"text":"給電速度：10SU/t","color":"gray","italic":false}]','[{"text":"送電速度：40SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：10000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_3"]}}
function ui:craft/common/exp/industry

#レシピおよび進捗消去
recipe take @s ui:industry/battery
advancement revoke @s only ui:craft/industry/battery