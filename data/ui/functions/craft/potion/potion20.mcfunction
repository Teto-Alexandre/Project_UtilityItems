#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{custom_potion_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:100},{id:"minecraft:absorption",amplifier:1b,duration:2400},{id:"minecraft:resistance",amplifier:0b,duration:2400}],HideFlags:32,CustomPotionColor:16777067,display:{Name:'{"text":"§b金のリンゴジュース§r"}'}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion20
advancement revoke @s only ui:craft/potion/potion20