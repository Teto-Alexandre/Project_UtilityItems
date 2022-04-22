#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:carrot_on_a_stick{tmw:{id:301},CustomModelData:110001,display:{Name:'{"text":"チェーンリンクメーカー","color":"aqua","italic":false}',Lore:['[{"text":" 射程:50m","color":"gray","italic":false}]','[{"text":" 機械と機械を電力リンクする","color":"gray","italic":false}]','[{"text":" 入力側→出力側の順番","color":"gray","italic":false}]']},Unbreakable:1b,HideFlags:4}
function ui:craft/common/exp/industry

#レシピおよび進捗消去
recipe take @s ui:industry/wrench
advancement revoke @s only ui:craft/industry/wrench