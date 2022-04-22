#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stone_axe{tmw:{id:-1},Enchantments:[{id:"protection",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"italic":false,"color":"light_purple","text":"冥府の墓標"}]',Lore:['[{"italic":false,"color":"gray","text":"不死のトーテムの効果を増幅する"}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw-1
advancement revoke @s only ui:craft/tmw/tmw-1