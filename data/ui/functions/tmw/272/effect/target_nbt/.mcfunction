# 指定のエンティティ以外をターゲットから外す
#execute if data storage ui:temp temp.effect.target_nbt.list run function ui:tmw/272/effect/target_nbt/list
execute unless data storage ui:temp temp.effect.target_nbt.list run function ui:tmw/272/effect/target_nbt/simple
