#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,custom_potion_effects:[{ambient:0b,show_particles:0b,duration:60,id:"minecraft:slowness",amplifier:10b},{ambient:0b,show_particles:0b,duration:500,id:"minecraft:slowness",amplifier:1b}],CustomPotionColor:54656,display:{Name:'{"italic":false,"color":"green","text":"粘着のポーション"}',Lore:['[{"text":"粘着液を散布し移動を阻害する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion11
advancement revoke @s only ui:craft/potion/potion11