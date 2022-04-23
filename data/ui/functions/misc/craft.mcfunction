#> ui:misc/craft
#
# Qキーでアイテムを投げ捨てて完成させる対策のためだけに存在する
#
# function/craftから派生してくる
#
# @public

#ストラクチャーキル
kill @e[type=item,nbt={Item:{id:"minecraft:structure_block"}},distance=..3]
tag @s remove ui_unlock