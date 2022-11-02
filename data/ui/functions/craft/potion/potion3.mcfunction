#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{display:{Name:'{"text":"魂再生薬","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"HP最大値減少を元に戻す","color":"gray","bold":false,"italic":false}','{"text":"副作用：なし","color":"gray","bold":false,"italic":false}']},HideFlags:33,CustomPotionEffects:[{Id:26,Amplifier:11b,Duration:200,ShowParticles:0b}],CustomPotionColor:16777215}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion3
advancement revoke @s only ui:craft/potion/potion3