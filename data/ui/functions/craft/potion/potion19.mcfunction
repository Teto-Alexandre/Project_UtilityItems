#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{CustomPotionEffects:[{Id:10,Amplifier:0b,Duration:100},{Id:22,Amplifier:0b,Duration:1200}],HideFlags:32,CustomPotionColor:16777158,display:{Name:'{"text":"§fリンゴジュース§r"}'}}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:potion/potion19
advancement revoke @s only ui:craft/potion/potion19