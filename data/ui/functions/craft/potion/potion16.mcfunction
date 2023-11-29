#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:100},{id:"minecraft:nausea",amplifier:1b,duration:100},{id:"minecraft:regeneration",amplifier:2b,duration:40}],HideFlags:32,CustomPotionColor:5939579,display:{Name:'{"text":"§f青汁§r"}'}}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:potion/potion16
advancement revoke @s only ui:craft/potion/potion16