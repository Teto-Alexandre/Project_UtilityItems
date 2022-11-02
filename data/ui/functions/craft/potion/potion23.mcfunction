#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{CustomPotionEffects:[{Id:6,Amplifier:1b,Duration:1}],HideFlags:32,CustomPotionColor:14286957,display:{Lore:['{"text":"§7体力を§bかなり§7回復する§r"}'],Name:'{"text":"§b高濃縮リカバー§r"}'}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion23
advancement revoke @s only ui:craft/potion/potion23