# 銃側の書き込み情報を取得 - スタックして装填するかを検証
    data modify storage ui:temp temp set value []
    scoreboard players operation $magazine ui_temp = $magazine.max ui_temp
