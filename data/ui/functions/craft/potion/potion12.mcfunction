#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:60,Id:2,Amplifier:10b},{Ambient:0b,ShowParticles:0b,Duration:450,Id:2,Amplifier:1b},{Ambient:0b,ShowParticles:1b,Duration:450,Id:19,Amplifier:0b}],CustomPotionColor:6608256,display:{Name:'{"italic":false,"color":"dark_green","text":"毒粘着のポーション"}',Lore:['[{"text":"毒性の高い粘着液を散布する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion12
advancement revoke @s only ui:craft/potion/potion12