#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:60,Id:2,Amplifier:10b},{Ambient:0b,ShowParticles:0b,Duration:500,Id:2,Amplifier:1b}],CustomPotionColor:54656,display:{Name:'{"italic":false,"color":"green","text":"粘着のポーション"}',Lore:['[{"text":"粘着液を散布し移動を阻害する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion11
advancement revoke @s only ui:craft/potion/potion11