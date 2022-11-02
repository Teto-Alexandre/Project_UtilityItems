#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{CustomPotionEffects:[{Id:10,Amplifier:1b,Duration:600},{Id:22,Amplifier:5b,Duration:2400},{Id:11,Amplifier:1b,Duration:6000},{Id:12,Amplifier:0b,Duration:6000}],HideFlags:32,CustomPotionColor:16776960,display:{Name:'{"text":"§d金のリンゴジュース§r"}'}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion21
advancement revoke @s only ui:craft/potion/potion21