#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:carrot_on_a_stick{tmw:{id:230},CustomModelData:110601,display:{Name:'[{"text":"非実在性クレヨン","color":"light_purple","italic":false}]',Lore:['[{"text":" 形而上のガラスブロックを描く","color":"gray","italic":false}]','[{"text":" 近くにあるときのみ実体化する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw230
advancement revoke @s only ui:craft/tmw/tmw230