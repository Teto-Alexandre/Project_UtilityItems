#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{CustomPotionEffects:[{Id:2b,Amplifier:0b,Duration:100},{Id:9b,Amplifier:1b,Duration:100},{Id:10b,Amplifier:2b,Duration:40}],HideFlags:32,CustomPotionColor:5939579,display:{Name:'{"text":"§f青汁§r"}'}}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:potion/potion16
advancement revoke @s only ui:craft/potion/potion16