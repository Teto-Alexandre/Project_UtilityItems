#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{custom_potion_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:600},{id:"minecraft:absorption",amplifier:5b,duration:2400},{id:"minecraft:resistance",amplifier:1b,duration:6000},{id:"minecraft:fire_resistance",amplifier:0b,duration:6000}],HideFlags:32,CustomPotionColor:16776960,display:{Name:'{"text":"§d金のリンゴジュース§r"}'}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion21
advancement revoke @s only ui:craft/potion/potion21