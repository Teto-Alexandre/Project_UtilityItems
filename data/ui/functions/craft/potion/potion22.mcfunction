#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{CustomPotionEffects:[{Id:6b,Amplifier:0b,Duration:1}],HideFlags:32,CustomPotionColor:16711808,display:{Lore:['{"text":"§7体力を§9少し§7回復する§r"}'],Name:'{"text":"§fリカバー§r"}'}}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:potion/potion22
advancement revoke @s only ui:craft/potion/potion22