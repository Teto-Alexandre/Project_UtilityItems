# 指定のエンティティ以外をターゲットから外す
execute if data storage ui:temp temp.effect.target_selector.list run function ui:tmw/272/effect/target_selector/list
execute unless data storage ui:temp temp.effect.target_selector.list run function ui:tmw/272/effect/target_selector/simple
