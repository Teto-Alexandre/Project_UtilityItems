#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:130001,display:{Name:'{"text":"恒星反応発電機","italic":false,"color":"dark_green"}',Lore:['[{"text":"自動的にエネルギーを生み出す","color":"gray","italic":false}]','[{"text":"発電量：1SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：600SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_1"]}}
function ui:craft/common/exp/industry

#レシピおよび進捗消去
recipe take @s ui:industry/solar
advancement revoke @s only ui:craft/industry/solar