#処理終了時になら何もしない
    scoreboard players set $slot ui_calc1 -1

#各スロットにアイテムが入っているなら後ろのナンバーから順にセット
    execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 1
    
#関係ないアイテムが入っているスロットからアイテムを排出
    execute if score $slot ui_calc1 matches 1 run function ui:industry/gui/check_slot/give_back/furnace
