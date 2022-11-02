#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{CustomPotionEffects:[{Id:10,Amplifier:1b,Duration:100},{Id:22,Amplifier:1b,Duration:2400},{Id:11,Amplifier:0b,Duration:2400}],HideFlags:32,CustomPotionColor:16777067,display:{Name:'{"text":"§b金のリンゴジュース§r"}'}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion20
advancement revoke @s only ui:craft/potion/potion20