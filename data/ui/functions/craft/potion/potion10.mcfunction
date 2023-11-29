#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:splash_potion{HideFlags:32,custom_potion_effects:[{ambient:0b,show_particles:1b,duration:500,id:"minecraft:poison",amplifier:0b}],CustomPotionColor:9881169,display:{Name:'{"italic":false,"color":"green","text":"毒のポーション"}',Lore:['[{"text":"毒による持続ダメージを与える","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion10
advancement revoke @s only ui:craft/potion/potion10