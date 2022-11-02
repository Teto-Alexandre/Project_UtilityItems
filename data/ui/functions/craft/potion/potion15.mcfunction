#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{CustomPotionEffects:[{Id:24,Amplifier:1b,Duration:30000}],CustomPotionColor:10682367,display:{Name:'{"text":"§d極光液§r"}'},HideFlags:32}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion15
advancement revoke @s only ui:craft/potion/potion15