#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stone_hoe{tmw:{id:204},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:4s}],display:{Name:'[{"text":"豊穣の鎌","color":"green","italic":false}]',Lore:['{"text":"隣接する作物を一度に収穫できる","color":"gray","bold":false,"italic":false}','{"text":"収穫した作物を自動的に植えなおす","color":"gray","bold":false,"italic":false}']}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw204
advancement revoke @s only ui:craft/tmw/tmw204