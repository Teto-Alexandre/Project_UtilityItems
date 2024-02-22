# 指定のエンティティ以外をターゲットから外す
#execute if data storage ui:temp temp.effect.target_nbt.list run function ui:tmw/272/effect/target_nbt/list
#execute if data storage ui:temp temp.effect.target_nbt.tag run function ui:tmw/272/effect/target_nbt/simple
execute if data storage ui:temp temp.effect.target_nbt.ifdata run function ui:tmw/272/effect/target_nbt/ifdata with storage ui:temp temp.effect.target_nbt
execute if data storage ui:temp temp.effect.target_nbt.iftag run function ui:tmw/272/effect/target_nbt/iftag with storage ui:temp temp.effect.target_nbt
