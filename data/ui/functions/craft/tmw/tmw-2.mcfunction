#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:totem_of_undying{tmw:{id:-2},Enchantments:[{id:"protection",lvl:1s}],HideFlags:3,display:{Name:'[{"italic":false,"color":"light_purple","text":"致死のトーテム"}]',Lore:['[{"italic":false,"color":"gray","text":"復活するが強烈な毒を受ける"}]','[{"italic":false,"color":"gray","text":"復活した際に肉体が強化される"}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw-2
advancement revoke @s only ui:craft/tmw/tmw-2