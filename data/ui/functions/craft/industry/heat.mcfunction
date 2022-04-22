#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:130002,display:{Name:'{"text":"熱源生成器","italic":false,"color":"dark_green"}',Lore:['[{"text":"エネルギーから熱源を生み出す","color":"gray","italic":false}]','[{"text":"電力消費：15SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：2000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_2"]}}
function ui:craft/common/exp/industry

#レシピおよび進捗消去
recipe take @s ui:industry/heat
advancement revoke @s only ui:craft/industry/heat