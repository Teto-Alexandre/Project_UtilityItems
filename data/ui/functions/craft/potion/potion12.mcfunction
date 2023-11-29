#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,custom_potion_effects:[{ambient:0b,show_particles:0b,duration:60,id:"minecraft:slowness",amplifier:10b},{ambient:0b,show_particles:0b,duration:450,id:"minecraft:slowness",amplifier:1b},{ambient:0b,show_particles:1b,duration:450,id:"minecraft:poison",amplifier:0b}],CustomPotionColor:6608256,display:{Name:'{"italic":false,"color":"dark_green","text":"毒粘着のポーション"}',Lore:['[{"text":"毒性の高い粘着液を散布する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion12
advancement revoke @s only ui:craft/potion/potion12