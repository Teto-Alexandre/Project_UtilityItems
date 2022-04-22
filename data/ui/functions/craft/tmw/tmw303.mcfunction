#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:carrot_on_a_stick{tmw:{id:303,slotable:2,enableQ:1,energy:{max:100,amount:100,type:-1}},CustomModelData:110025,display:{Name:'{"text":"エネルギーカートリッジ","color":"aqua","italic":false}',Lore:['[{"text":" エネルギーを圧縮保存する装置 最大値:100","color":"gray","italic":false}]','[{"text":" 注入器でエネルギーを注入できる","color":"gray","italic":false}]','[{"text":" オフハンドに持ってQキーで交換","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4}
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw303
advancement revoke @s only ui:craft/tmw/tmw303