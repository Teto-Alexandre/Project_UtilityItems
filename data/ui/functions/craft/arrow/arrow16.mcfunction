#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:16},display:{Name:'{"text":"彗星の矢","color":"#ffff99","bold":true,"italic":false}',Lore:['{"text":"一定時間経過後に弾ける","color":"gray","bold":false,"italic":false}']},HideFlags:32,CustomPotionEffects:[{Id:26b,Amplifier:22b,Duration:2,ShowParticles:0b}],CustomPotionColor:16449462}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow16
advancement revoke @s only ui:craft/arrow/arrow16