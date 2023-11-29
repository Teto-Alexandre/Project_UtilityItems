#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{custom_potion_effects:[{id:"minecraft:instant_health",amplifier:2b,duration:1}],HideFlags:32,CustomPotionColor:11337815,display:{Lore:['{"text":"§7体力を§dとても§7回復する§r"}'],Name:'{"text":"§d特濃縮リカバー§r"}'}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion24
advancement revoke @s only ui:craft/potion/potion24