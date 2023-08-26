#これは初回起動時に実行されるコマンドです

tellraw @a ["",{"text":"ProjectUI","color":"white"},{"text":"> ","color":"green"},{"text":"データの読み込みが完了しました","color":"gray"}]
tellraw @a ["",{"text":"ProjectUI","color":"white"},{"text":"> ","color":"green"},{"text":"現在のバージョンは","color":"gray"},{"text":" 53 ","color":"aqua"},{"text":"です","color":"gray"}]

## 主な全ての計算に使用
    scoreboard objectives add ui_calc1 dummy {"text":"UtilityItems_Calculation1","color":"dark_blue"}
    scoreboard objectives add ui_calc2 dummy {"text":"UtilityItems_Calculation2","color":"dark_blue"}
    scoreboard objectives add ui_calc3 dummy {"text":"UtilityItems_Calculation3","color":"dark_blue"}
    scoreboard objectives add ui_tc dummy {"text":"UtilityItems_TimeCount","color":"dark_blue"}
    scoreboard objectives add ui_temp dummy {"text":"UtilityItems_TEMP","color":"dark_blue"}
    scoreboard objectives add ui_temp2 dummy {"text":"UtilityItems_TEMP2","color":"dark_blue"}
    #独立は義務です 個々が干渉しないように割り当てるテキトーな数字
    scoreboard objectives add ui_is dummy {"text":"UtilityItems_IndependentScore","color":"dark_blue"}
    scoreboard objectives add ui_is2 dummy {"text":"UtilityItems_IndependentScore2","color":"dark_blue"}
    scoreboard objectives add ui_is3 dummy {"text":"UtilityItems_IndependentScore3","color":"dark_blue"}

## 特殊武装のスキル発動関連
    scoreboard objectives add ui_tmw_id dummy {"text":"UtilityItems_TetoMysticWeapon_ID","color":"dark_blue"}
    scoreboard objectives add ui_tmw_id2 dummy {"text":"UtilityItems_TetoMysticWeapon_ID_offhand","color":"dark_blue"}
    scoreboard objectives add ui_tmw_id_old dummy {"text":"UtilityItems_TetoMysticWeapon_ID_old","color":"dark_blue"}
    scoreboard objectives add ui_tmw_id_old2 dummy {"text":"UtilityItems_TetoMysticWeapon_ID_old2","color":"dark_blue"}
    scoreboard objectives add ui_slotable dummy {"text":"UtilityItems_Slotable","color":"dark_blue"}
    scoreboard objectives add ui_st minecraft.custom:minecraft.sneak_time {"text":"UtilityItems_SneakTime","color":"dark_blue"}
    scoreboard objectives add ui_st2 dummy {"text":"UtilityItems_SneakTime2","color":"dark_blue"}
    scoreboard objectives add ui_di minecraft.custom:minecraft.drop {"text":"UtilityItems_DropItem","color":"dark_blue"}
    scoreboard objectives add ui_tmw_con_id dummy {"text":"UtilityItems_TetoMysticWeapon_Consume_ID","color":"dark_blue"}
    scoreboard objectives add ui_face_up dummy {"text":"UtilityItems_Face_Up","color":"dark_blue"}
    scoreboard objectives add ui_mp dummy {"text":"UtilityItems_MP","color":"dark_blue"}
    #未分類だけどとりあえず連射させたくない奴
    scoreboard objectives add ui_ct dummy {"text":"UtilityItems_CoolTime","color":"dark_blue"}

## ランダム用
    scoreboard objectives add ui_rand dummy {"text":"UtilityItems_Rand","color":"dark_blue"}

## 汎用ステータス
    scoreboard objectives add ui_stat_dmg_phys dummy {"text":"UtilityItems_DamagePhysic","color":"dark_blue"}
    scoreboard objectives add ui_stat_dmg_magi dummy {"text":"UtilityItems_DamageMagic","color":"dark_blue"}

## 数字ライブラリ
    scoreboard objectives add ui_num dummy {"text":"UtilityItems_Number","color":"dark_blue"}

## HP最大値管理用
    scoreboard objectives add ui_hp dummy {"text":"UtilityItems_HP","color":"dark_blue"}
    scoreboard objectives add ui_hp_calc dummy {"text":"UtilityItems_HP_Calc","color":"dark_blue"}
    scoreboard objectives add ui_hp_plus dummy {"text":"UtilityItems_HP_Plus","color":"dark_blue"}
    scoreboard objectives add ui_hp_plusc dummy {"text":"UtilityItems_HP_PlusCalc","color":"dark_blue"}

## 条件起動型
    scoreboard objectives add ui_dc deathCount {"text":"UtilityItems_DeathCount","color":"dark_blue"}
    scoreboard objectives add ui_dc_r dummy {"text":"UtilityItems_DeathCountRespawn","color":"dark_blue"}
    scoreboard objectives add ui_uset minecraft.used:minecraft.totem_of_undying {"text":"UtilityItems_UseTotem","color":"dark_blue"}
    scoreboard objectives add ui_usec minecraft.used:minecraft.crossbow {"text":"UtilityItems_UseCrossbow","color":"dark_blue"}
    scoreboard objectives add ui_usep minecraft.used:minecraft.potion {"text":"UtilityItems_UsePot","color":"dark_blue"}
    scoreboard objectives add ui_uses minecraft.used:minecraft.snowball {"text":"UtilityItems_UseSnow","color":"dark_blue"}
    scoreboard objectives add ui_use1 minecraft.used:minecraft.carrot_on_a_stick {"text":"UtilityItems_Use1","color":"dark_blue"}
    scoreboard objectives add ui_use2 dummy {"text":"UtilityItems_Use2","color":"dark_blue"}
    scoreboard objectives add ui_use2_tc dummy {"text":"UtilityItems_Use2_TimeCount","color":"dark_blue"}
    scoreboard objectives add ui_usec2 dummy {"text":"UtilityItems_UseC2","color":"dark_blue"}
    scoreboard objectives add ui_usec2_tc dummy {"text":"UtilityItems_UseC2_TimeCount","color":"dark_blue"}
    scoreboard objectives add ui_lg minecraft.custom:minecraft.leave_game {"text":"UtilityItems_LeaveGame","color":"dark_blue"}
    #コープスフラッグ専用
    scoreboard objectives add ui_openc minecraft.custom:minecraft.open_chest {"text":"UtilityItems_OpenChest","color":"dark_blue"}
    #scoreboard objectives add ui_openb minecraft.custom:minecraft.open_barrel {"text":"UtilityItems_OpenChest","color":"dark_blue"}
    #scoreboard objectives add ui_opene minecraft.custom:minecraft.open_enderchest {"text":"UtilityItems_OpenChest","color":"dark_blue"}
    #scoreboard objectives add ui_opens minecraft.custom:minecraft.open_shulker_box {"text":"UtilityItems_OpenChest","color":"dark_blue"}
    #scoreboard objectives add ui_openi minecraft.custom:minecraft.interact_with_furnace {"text":"UtilityItems_OpenChest","color":"dark_blue"}
    #攻撃検知
    scoreboard objectives add ui_ddn minecraft.custom:minecraft.damage_dealt {"text":"UtilityItems_Damage1","color":"dark_blue"}
    scoreboard objectives add ui_dda minecraft.custom:minecraft.damage_dealt_absorbed {"text":"UtilityItems_Damage2","color":"dark_blue"}
    scoreboard objectives add ui_ddr minecraft.custom:minecraft.damage_dealt_resisted {"text":"UtilityItems_Damage3","color":"dark_blue"}
    #scoreboard objectives add ui_dtn minecraft.custom:minecraft.damage_taken {"text":"UtilityItems_Damage4","color":"dark_blue"}
    #scoreboard objectives add ui_dta minecraft.custom:minecraft.damage_absorbed {"text":"UtilityItems_Damage5","color":"dark_blue"}
    #scoreboard objectives add ui_dtr minecraft.custom:minecraft.damage_resisted {"text":"UtilityItems_Damage6","color":"dark_blue"}
    #scoreboard objectives add ui_dbs minecraft.custom:minecraft.damage_blocked_by_shield {"text":"UtilityItems_Damage7","color":"dark_blue"}
    #移動検知
    scoreboard objectives add ui_move_s minecraft.custom:minecraft.crouch_one_cm {"text":"UtilityItems_MoveSneak","color":"dark_blue"}
    scoreboard objectives add ui_move_w minecraft.custom:minecraft.walk_one_cm {"text":"UtilityItems_MoveWalk","color":"dark_blue"}
    scoreboard objectives add ui_move_d minecraft.custom:minecraft.sprint_one_cm {"text":"UtilityItems_MoveDash","color":"dark_blue"}
    scoreboard objectives add ui_kills minecraft.custom:player_kills {"text":"UtilityItems_Kills","color":"dark_blue"}
    scoreboard objectives add ui_deaths deathCount {"text":"UtilityItems_Deaths","color":"dark_blue"}

## 条件逐次更新型
    scoreboard objectives add ui_rot_x dummy {"text":"UtilityItems_Rotation_X","color":"dark_blue"}
    scoreboard objectives add ui_rot_x_old dummy {"text":"UtilityItems_Rotation_X_Old","color":"dark_blue"}
    scoreboard objectives add ui_rot_y dummy {"text":"UtilityItems_Rotation_Y","color":"dark_blue"}
    scoreboard objectives add ui_rot_y_old dummy {"text":"UtilityItems_Rotation_Y_Old","color":"dark_blue"}
    
    scoreboard objectives add ui_pos_x_core_relative dummy {"text":"UtilityItems_X_CoreRelative","color":"dark_blue"}
    scoreboard objectives add ui_pos_y_core_relative dummy {"text":"UtilityItems_Y_CoreRelative","color":"dark_blue"}
    scoreboard objectives add ui_pos_z_core_relative dummy {"text":"UtilityItems_Z_CoreRelative","color":"dark_blue"}

## トリガー
    scoreboard objectives add ui_trg trigger {"text":"UtilityItems_Trigger","color":"gold"}
    scoreboard objectives add ui_trg2 trigger {"text":"UtilityItems_Trigger2","color":"gold"}
    
## 魔導障壁耐久値
    scoreboard objectives add ui_dr minecraft.custom:minecraft.damage_resisted {"text":"UtilityItems_DamageResisted","color":"dark_blue"}
    scoreboard objectives add ui_dhp dummy {"text":"UtilityItems_DummyHP","color":"dark_blue"}
    scoreboard objectives add ui_dhpm dummy {"text":"UtilityItems_DummyHPMax","color":"dark_blue"}

## 暁の翼専用
    scoreboard objectives add ui_fp dummy {"text":"UtilityItems_FirePhase","color":"dark_blue"}
    scoreboard objectives add ui_ft dummy {"text":"UtilityItems_FireTime","color":"dark_blue"}
    scoreboard objectives add ui_fc dummy {"text":"UtilityItems_FireCalc","color":"dark_blue"}

## 凍て付いた博愛専用
    scoreboard objectives add ui_tmw102_id dummy {"text":"UtilityItems_102ID","color":"dark_blue"}

## ブロック破壊用
    scoreboard objectives add ui_break dummy {"text":"UtilityItems_Break","color":"dark_blue"}
    scoreboard objectives add ui_mine dummy {"text":"UtilityItems_Mine","color":"dark_blue"}
    scoreboard objectives add ui_mine_f dummy {"text":"UtilityItems_Mine_Fortune","color":"dark_blue"}
    scoreboard objectives add ui_mine_wood minecraft.used:minecraft.wooden_pickaxe {"text":"UtilityItems_Mine1","color":"dark_blue"}
    scoreboard objectives add ui_mine_stone minecraft.used:minecraft.stone_pickaxe {"text":"UtilityItems_Mine2","color":"dark_blue"}
    scoreboard objectives add ui_mine_iron minecraft.used:minecraft.iron_pickaxe {"text":"UtilityItems_Mine3","color":"dark_blue"}
    scoreboard objectives add ui_mine_diamond minecraft.used:minecraft.diamond_pickaxe {"text":"UtilityItems_Mine4","color":"dark_blue"}
    scoreboard objectives add ui_mine_gold minecraft.used:minecraft.golden_pickaxe {"text":"UtilityItems_Mine5","color":"dark_blue"}
    scoreboard objectives add ui_mine_nether minecraft.used:minecraft.netherite_pickaxe {"text":"UtilityItems_Mine6","color":"dark_blue"}
    scoreboard objectives add ui_cut dummy {"text":"UtilityItems_Cut","color":"dark_blue"}
    scoreboard objectives add ui_cut_f dummy {"text":"UtilityItems_Mine_Fortune","color":"dark_blue"}
    scoreboard objectives add ui_cut_wood minecraft.used:minecraft.wooden_axe {"text":"UtilityItems_Cut1","color":"dark_blue"}
    scoreboard objectives add ui_cut_stone minecraft.used:minecraft.stone_axe {"text":"UtilityItems_Cut2","color":"dark_blue"}
    scoreboard objectives add ui_cut_iron minecraft.used:minecraft.iron_axe {"text":"UtilityItems_Cut3","color":"dark_blue"}
    scoreboard objectives add ui_cut_diamond minecraft.used:minecraft.diamond_axe {"text":"UtilityItems_Cut4","color":"dark_blue"}
    scoreboard objectives add ui_cut_gold minecraft.used:minecraft.golden_axe {"text":"UtilityItems_Cut5","color":"dark_blue"}
    scoreboard objectives add ui_cut_nether minecraft.used:minecraft.netherite_axe {"text":"UtilityItems_Cut6","color":"dark_blue"}
    scoreboard objectives add ui_dig dummy {"text":"UtilityItems_Dig","color":"dark_blue"}
    scoreboard objectives add ui_dig_f dummy {"text":"UtilityItems_Mine_Fortune","color":"dark_blue"}
    scoreboard objectives add ui_dig_wood minecraft.used:minecraft.wooden_shovel {"text":"UtilityItems_Dig1","color":"dark_blue"}
    scoreboard objectives add ui_dig_stone minecraft.used:minecraft.stone_shovel {"text":"UtilityItems_Dig2","color":"dark_blue"}
    scoreboard objectives add ui_dig_iron minecraft.used:minecraft.iron_shovel {"text":"UtilityItems_Dig3","color":"dark_blue"}
    scoreboard objectives add ui_dig_diamond minecraft.used:minecraft.diamond_shovel {"text":"UtilityItems_Dig4","color":"dark_blue"}
    scoreboard objectives add ui_dig_gold minecraft.used:minecraft.golden_shovel {"text":"UtilityItems_Dig5","color":"dark_blue"}
    scoreboard objectives add ui_dig_nether minecraft.used:minecraft.netherite_shovel {"text":"UtilityItems_Dig6","color":"dark_blue"}
    scoreboard objectives add ui_harv dummy {"text":"UtilityItems_Harv","color":"dark_blue"}
    scoreboard objectives add ui_harv_f dummy {"text":"UtilityItems_Mine_Fortune","color":"dark_blue"}
    scoreboard objectives add ui_harv_wood minecraft.used:minecraft.wooden_hoe {"text":"UtilityItems_Harv1","color":"dark_blue"}
    scoreboard objectives add ui_harv_stone minecraft.used:minecraft.stone_hoe {"text":"UtilityItems_Harv2","color":"dark_blue"}
    scoreboard objectives add ui_harv_iron minecraft.used:minecraft.iron_hoe {"text":"UtilityItems_Harv3","color":"dark_blue"}
    scoreboard objectives add ui_harv_diamond minecraft.used:minecraft.diamond_hoe {"text":"UtilityItems_Harv4","color":"dark_blue"}
    scoreboard objectives add ui_harv_gold minecraft.used:minecraft.golden_hoe {"text":"UtilityItems_Harv5","color":"dark_blue"}
    scoreboard objectives add ui_harv_nether minecraft.used:minecraft.netherite_hoe {"text":"UtilityItems_Harv6","color":"dark_blue"}

## プレイヤー区別用id
    scoreboard objectives add ui_id dummy {"text":"UtilityItems_ID","color":"dark_blue"}
    scoreboard objectives add ui_idc dummy {"text":"UtilityItems_IDCalc","color":"dark_blue"}
    scoreboard objectives add ui_team dummy {"text":"UtilityItems_Team","color":"dark_blue"}
    #個別オブジェクト連携id
    scoreboard objectives add ui_obj_id dummy {"text":"UtilityItems_ID","color":"dark_blue"}

## 工業用
    #パーティクル用ループカウント
        scoreboard objectives add ui_i_ltc dummy {"text":"UtilityItems_Industry_LoopTimeCount","color":"dark_blue"}
    #内部エネルギー
        scoreboard objectives add ui_i_su dummy {"text":"UtilityItems_Industry_StarUnit","color":"dark_blue"}
        scoreboard objectives add ui_i_sum dummy {"text":"UtilityItems_Industry_StarUnitMax","color":"dark_blue"}
        scoreboard objectives add ui_i_suo dummy {"text":"UtilityItems_Industry_StarUnitOutput","color":"dark_blue"}
        scoreboard objectives add ui_i_suc dummy {"text":"UtilityItems_Industry_StarUnitCalc","color":"dark_blue"}
        scoreboard objectives add ui_i_sui dummy {"text":"UtilityItems_Industry_StarUnitInput","color":"dark_blue"}
        scoreboard objectives add ui_i_suu dummy {"text":"UtilityItems_Industry_StarUnitUse","color":"dark_blue"}
        scoreboard objectives add ui_i_sug dummy {"text":"UtilityItems_Industry_StarUnitGen","color":"dark_blue"}
    #機械IDとエネルギーリンク
        scoreboard objectives add ui_i_id dummy {"text":"UtilityItems_Industry_Id","color":"dark_blue"}
        scoreboard objectives add ui_i_idc dummy {"text":"UtilityItems_Industry_IdCalc","color":"dark_blue"}
        scoreboard objectives add ui_i_link dummy {"text":"UtilityItems_Industry_Link","color":"dark_blue"}
    #機械UIの表示関連
        scoreboard objectives add ui_i_gui dummy {"text":"UtilityItems_Industry_GridUserInterface","color":"dark_blue"}
        scoreboard objectives add ui_i_gui_mode dummy {"text":"UtilityItems_Industry_GridUserInterface_Mode","color":"dark_blue"}
        scoreboard objectives add ui_i_gui_mode2 dummy {"text":"UtilityItems_Industry_GridUserInterface_Mode2","color":"dark_blue"}
        scoreboard objectives add ui_i_gui_recipe dummy {"text":"UtilityItems_Industry_GridUserInterface_Recipe","color":"dark_blue"}
    #今セットされているレシピ（2は1tick前のもの）
        scoreboard objectives add ui_i_recipe dummy {"text":"UtilityItems_Industry_Recipe","color":"dark_blue"}
        scoreboard objectives add ui_i_recipe2 dummy {"text":"UtilityItems_Industry_RecipeTemp","color":"dark_blue"}
    #クラフトタイムとその最大値
        scoreboard objectives add ui_i_ct dummy {"text":"UtilityItems_Industry_CraftTime","color":"dark_blue"}
        scoreboard objectives add ui_i_ctt dummy {"text":"UtilityItems_Industry_CraftTimeTotal","color":"dark_blue"}
        scoreboard objectives add ui_i_ctp dummy {"text":"UtilityItems_Industry_CraftTimePower","color":"dark_blue"}
    #スロットに入っているアイテムの個数
        scoreboard objectives add ui_i_supitem dummy {"text":"UtilityItems_Industry_SupplyItem","color":"dark_blue"}
        scoreboard objectives add ui_i_supitem2 dummy {"text":"UtilityItems_Industry_SupplyItem2","color":"dark_blue"}
    #消費するアイテムの個数
        scoreboard objectives add ui_i_conitem dummy {"text":"UtilityItems_Industry_ConsumeItem","color":"dark_blue"}
        scoreboard objectives add ui_i_conitem2 dummy {"text":"UtilityItems_Industry_ConsumeItem2","color":"dark_blue"}
    #生成するアイテムの個数
        scoreboard objectives add ui_i_resitem dummy {"text":"UtilityItems_Industry_ResultItem","color":"dark_blue"}
        scoreboard objectives add ui_i_resitem2 dummy {"text":"UtilityItems_Industry_ResultItem2","color":"dark_blue"}
        scoreboard objectives add ui_i_resitemr dummy {"text":"UtilityItems_Industry_ResultItemRandom","color":"dark_blue"}
    #スロット内の生成物の個数
        scoreboard objectives add ui_i_item dummy {"text":"UtilityItems_Industry_Item","color":"dark_blue"}
        scoreboard objectives add ui_i_item2 dummy {"text":"UtilityItems_Industry_Item2","color":"dark_blue"}
        scoreboard objectives add ui_i_item_calc dummy {"text":"UtilityItems_Industry_Item_Calc","color":"dark_blue"}
    
## 特殊効果付き食べ物用
    scoreboard objectives add ui_cookie minecraft.used:minecraft.cookie

## 主に銃系統（リロードと弾薬がある射撃武器）に使用
    scoreboard objectives add ui_bm dummy {"text":"UtilityItems_BulletMove","color":"dark_blue"}
    scoreboard objectives add ui_bm_temp dummy {"text":"UtilityItems_BulletMove_Temp","color":"dark_blue"}
    scoreboard objectives add ui_bm_lim dummy {"text":"UtilityItems_UnderLimit","color":"dark_blue"}
    scoreboard objectives add ui_br dummy {"text":"UtilityItems_BulletRange","color":"dark_blue"}
    scoreboard objectives add ui_br_temp dummy {"text":"UtilityItems_BulletRange_Temp","color":"dark_blue"}
    scoreboard objectives add ui_bg dummy {"text":"UtilityItems_BulletGravity","color":"dark_blue"}
    scoreboard objectives add ui_rt dummy {"text":"UtilityItems_ReloadTime","color":"dark_blue"}
    scoreboard objectives add ui_grs dummy {"text":"UtilityItems_GunReloadSlot","color":"dark_blue"}
    scoreboard objectives add ui_bc dummy {"text":"UtilityItems_BurstCount","color":"dark_blue"}
    #視野効果用
    scoreboard objectives add ui_bc2 dummy {"text":"UtilityItems_BurstCount2","color":"dark_blue"}
    scoreboard objectives add ui_autohit dummy {"text":"UtilityItems_AutoHit","color":"dark_blue"}
    scoreboard objectives add ui_bpart dummy {"text":"UtilityItems_BulletParticle","color":"dark_blue"}
    scoreboard objectives add ui_hpart dummy {"text":"UtilityItems_HitParticle","color":"dark_blue"}
    scoreboard objectives add ui_bmods dummy {"text":"UtilityItems_BulletModifiersCount","color":"dark_blue"}
    scoreboard objectives add ui_hmods dummy {"text":"UtilityItems_HitModifiersCount","color":"dark_blue"}
    scoreboard objectives add ui_kb dummy {"text":"UtilityItems_Knockback","color":"dark_blue"}
    scoreboard objectives add ui_bdt dummy {"text":"UtilityItems_BulletDamageType","color":"dark_blue"}
    scoreboard objectives add ui_dmg dummy {"text":"UtilityItems_DamageMultiple","color":"dark_blue"}
    scoreboard objectives add ui_gct dummy {"text":"UtilityItems_GunCoolTime","color":"dark_blue"}
    scoreboard objectives add ui_gms dummy {"text":"UtilityItems_GunMultiShot","color":"dark_blue"}
    scoreboard objectives add ui_bu dummy {"text":"UtilityItems_BulletUse","color":"dark_blue"}
    scoreboard objectives add ui_bt dummy {"text":"UtilityItems_BulletType","color":"dark_blue"}
    scoreboard objectives add ui_gt dummy {"text":"UtilityItems_GunType","color":"dark_blue"}
    scoreboard objectives add ui_gpc dummy {"text":"UtilityItems_GunPierceCount","color":"dark_blue"}
    scoreboard objectives add ui_bcp dummy {"text":"UtilityItems_BulletCountPassed","color":"dark_blue"}
    #狙撃用
    scoreboard objectives add ui_snipe dummy {"text":"UtilityItems_Snipe","color":"dark_blue"}
    #新しく増やしたもの
    scoreboard objectives add ui_proj_stat_pierce_entity dummy {"text":"UtilityItems_PierceEntity","color":"dark_blue"}
    scoreboard objectives add ui_proj_stat_pierce_entity.obj_id dummy {"text":"UtilityItems_PierceEntity.Obj","color":"dark_blue"}
    scoreboard objectives add ui_proj_stat_break_mult dummy {"text":"UtilityItems_BreakMult","color":"dark_blue"}
    scoreboard objectives add ui_proj_stat_damage_factor dummy {"text":"UtilityItems_DamageFactor","color":"dark_blue"}

## スキルツリー
    scoreboard objectives add ui_skilltree_v trigger {"text":"UtilityItems_SkillTree_View","color":"dark_blue"}
    scoreboard objectives add ui_skillget trigger {"text":"UtilityItems_Skillget","color":"dark_blue"}
    scoreboard objectives add ui_skillpoint trigger {"text":"UtilityItems_Skillpoint","color":"dark_blue"}
    scoreboard objectives add ui_skillpointC trigger {"text":"UtilityItems_SkillpointC","color":"dark_blue"}

## 魔術用
    #血の魔術
        scoreboard objectives add ui_m_bc dummy {"text":"UtilityItems_Magic_BloodCount","color":"dark_blue"}
        scoreboard objectives add ui_m_dd minecraft.custom:damage_dealt {"text":"UtilityItems_Magic_DamageDealt","color":"dark_blue"}

## サイコロ用
    scoreboard objectives add ui_d_num dummy {"text":"UtilityItems_Dice_Num","color":"dark_blue"}
    scoreboard objectives add ui_d_luck dummy {"text":"UtilityItems_Dice_Luck","color":"dark_blue"}
    scoreboard objectives add ui_d_addmax dummy {"text":"UtilityItems_Dice_AddMax","color":"dark_blue"}
    scoreboard objectives add ui_d_addmin dummy {"text":"UtilityItems_Dice_AddMin","color":"dark_blue"}
    scoreboard objectives add ui_d_addnum dummy {"text":"UtilityItems_Dice_AddNum","color":"dark_blue"}
    scoreboard objectives add ui_d_mult dummy {"text":"UtilityItems_Dice_Mult","color":"dark_blue"}

## 釣り用
    scoreboard objectives add ui_use_frod minecraft.used:fishing_rod {"text":"UtilityItems_Use_Fishingrod","color":"dark_blue"}
    #scoreboard objectives add ui_fish_tc minecraft.used:fishing_rod {"text":"UtilityItems_Fish_TimeCount","color":"dark_blue"}

## レベルシステム用
    scoreboard objectives add ui_lvl_craft_exp dummy {"text":"UtilityItems_Level_Craft_Experience","color":"dark_blue"}
    scoreboard objectives add ui_lvl_craft_lvl dummy {"text":"UtilityItems_Level_Craft_Level","color":"dark_blue"}
    scoreboard objectives add ui_lvl_mine_exp dummy {"text":"UtilityItems_Level_Mineing_Experience","color":"dark_blue"}
    scoreboard objectives add ui_lvl_mine_lvl dummy {"text":"UtilityItems_Level_Mineing_Level","color":"dark_blue"}
    scoreboard objectives add ui_lvl_cut_exp dummy {"text":"UtilityItems_Level_Cutting_Experience","color":"dark_blue"}
    scoreboard objectives add ui_lvl_cut_lvl dummy {"text":"UtilityItems_Level_Cutting_Level","color":"dark_blue"}
    scoreboard objectives add ui_lvl_dig_exp dummy {"text":"UtilityItems_Level_Digging_Experience","color":"dark_blue"}
    scoreboard objectives add ui_lvl_dig_lvl dummy {"text":"UtilityItems_Level_Digging_Level","color":"dark_blue"}
    scoreboard objectives add ui_lvl_harv_exp dummy {"text":"UtilityItems_Level_Hervesting_Experience","color":"dark_blue"}
    scoreboard objectives add ui_lvl_harv_lvl dummy {"text":"UtilityItems_Level_Hervesting_Level","color":"dark_blue"}

## 必殺技カウント
    scoreboard objectives add ui_paint dummy {"text":"UtilityItems_Paint","color":"dark_blue"}
    scoreboard objectives add ui_tmw237_survive dummy {"text":"UtilityItems_Tmw237_Survive","color":"dark_blue"}
    scoreboard objectives add ui_tmw237_boost dummy {"text":"UtilityItems_Tmw237_boost","color":"dark_blue"}

## 復活、ゲームモード関連
    #復活までの時間
        scoreboard objectives add ui_rst dummy {"text":"UtilityItems_RespawnTime","color":"dark_blue"}

## ダンジョンメーカー
    #チェストの表示
    scoreboard objectives add ui_cm dummy {"text":"UtilityItems_ChestMonitor","color":"gold"}
    #資源
    scoreboard objectives add ui_mana dummy {"text":"UtilityItems_mana","color":"gold"}
    scoreboard objectives add ui_mana_gen dummy {"text":"UtilityItems_mana_Generate","color":"gold"}
    scoreboard objectives add ui_stone dummy {"text":"UtilityItems_stone","color":"gold"}
    scoreboard objectives add ui_stone_gen dummy {"text":"UtilityItems_stone_Generate","color":"gold"}
    scoreboard objectives add ui_wood dummy {"text":"UtilityItems_wood","color":"gold"}
    scoreboard objectives add ui_wood_gen dummy {"text":"UtilityItems_wood_Generate","color":"gold"}
    #建築コスト
    scoreboard objectives add ui_cost_block dummy {"text":"UtilityItems_Cost_block","color":"gold"}
    scoreboard objectives add ui_cost_data dummy {"text":"UtilityItems_Cost_data","color":"gold"}
    scoreboard objectives add ui_cost_mana dummy {"text":"UtilityItems_Cost_mana","color":"gold"}
    scoreboard objectives add ui_cost_stone dummy {"text":"UtilityItems_Cost_stone","color":"gold"}
    scoreboard objectives add ui_cost_wood dummy {"text":"UtilityItems_Cost_wood","color":"gold"}
    scoreboard objectives add ui_cost_core dummy {"text":"UtilityItems_Cost_Core","color":"gold"}
    scoreboard objectives add ui_cost_stair dummy {"text":"UtilityItems_Cost_Stair","color":"gold"}
    scoreboard objectives add ui_cost_shield1 dummy {"text":"UtilityItems_Cost_Shield1","color":"gold"}
    #管理関数
    scoreboard objectives add ui_path dummy {"text":"UtilityItems_Path","color":"gold"}
    scoreboard objectives add ui_core dummy {"text":"UtilityItems_Core","color":"gold"}
    scoreboard objectives add ui_death_dt dummy {"text":"UtilityItems_Death_DelayTime","color":"gold"}
    #ダメージ系
    scoreboard objectives add ui_d_hpm dummy {"text":"UtilityItems_Dungeon_HPMax","color":"gold"}
    scoreboard objectives add ui_d_hp dummy {"text":"UtilityItems_Dungeon_HP","color":"gold"}
    scoreboard objectives add ui_d_shm dummy {"text":"UtilityItems_Dungeon_ShieldMax","color":"gold"}
    scoreboard objectives add ui_d_sh dummy {"text":"UtilityItems_Dungeon_Shield","color":"gold"}
    scoreboard objectives add ui_d_d dummy {"text":"UtilityItems_Dungeon_Damage","color":"gold"}

## 装備用
    scoreboard objectives add ui_tmw601_head dummy {"text":"UtilityItems_ArmorHead","color":"dark_blue"}
    scoreboard objectives add ui_tmw601_chest dummy {"text":"UtilityItems_ArmorChest","color":"dark_blue"}
    scoreboard objectives add ui_tmw601_legs dummy {"text":"UtilityItems_ArmorLegs","color":"dark_blue"}
    scoreboard objectives add ui_tmw601_feet dummy {"text":"UtilityItems_ArmorFeet","color":"dark_blue"}
    scoreboard objectives add ui_tmw601_accessory dummy {"text":"UtilityItems_Accessory","color":"dark_blue"}

## コモン

    ### MOB
    scoreboard objectives add ui_common_mob_target_obj dummy {"text":"UtilityItems_Common_Mob_Target_Obj","color":"dark_blue"}

## ROB
    ### World
    scoreboard objectives add ui_tmw501_19_world dummy {"text":"UtilityItems_ROB_World","color":"dark_blue"}
    scoreboard players set $point ui_tmw501_19_world 2000
    scoreboard players set $life ui_tmw501_19_world 0
    ### Time
    scoreboard objectives add ui_tmw501_19_mct dummy {"text":"UtilityItems_ROB_ModeChangeTime","color":"dark_blue"}
    ### Now
    scoreboard objectives add ui_tmw501_19_now_mode dummy {"text":"UtilityItems_ROB_Now_Mode","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_hud dummy {"text":"UtilityItems_ROB_Now_Camera","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_jet dummy {"text":"UtilityItems_ROB_Now_Camera","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_en dummy {"text":"UtilityItems_ROB_Now_Energy","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_s1 dummy {"text":"UtilityItems_ROB_Now_Shield1","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_s2 dummy {"text":"UtilityItems_ROB_Now_Shield2","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_shock_absorber dummy {"text":"UtilityItems_ROB_Now_Shock_Absorber","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_life dummy {"text":"UtilityItems_ROB_Now_Life","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_now_respawn_time dummy {"text":"UtilityItems_ROB_Now_Respawn_Time","color":"dark_blue"}
    ### Stat
    scoreboard objectives add ui_tmw501_19_stat_en_max dummy {"text":"UtilityItems_ROB_Stat_Energy_Max","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_en_regen dummy {"text":"UtilityItems_ROB_Stat_Energy_Max","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_en_use_hud dummy {"text":"UtilityItems_ROB_Stat_Energy_Use_Hud","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_en_use_jet dummy {"text":"UtilityItems_ROB_Stat_Energy_Use_Jet","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_en_use_speed dummy {"text":"UtilityItems_ROB_Stat_Energy_Use_Speed","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_jet_type dummy {"text":"UtilityItems_ROB_Stat_Jet_Type","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_speed_type dummy {"text":"UtilityItems_ROB_Stat_Speed_Type","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_s1_max dummy {"text":"UtilityItems_ROB_Stat_Shield1_Max","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_s1_regen dummy {"text":"UtilityItems_ROB_Stat_Shield1_Max","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_s2_max dummy {"text":"UtilityItems_ROB_Stat_Shield2_Max","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_s2_regen dummy {"text":"UtilityItems_ROB_Stat_Shield2_Max","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_rot_x dummy {"text":"UtilityItems_ROB_Stat_RotationLimit_X","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_rot_y dummy {"text":"UtilityItems_ROB_Stat_RotationLimit_Y","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_fda dummy {"text":"UtilityItems_ROB_Stat_FallDamageAbsorber","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_mov dummy {"text":"UtilityItems_ROB_Stat_MovementSpeed","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_ilv dummy {"text":"UtilityItems_ROB_Stat_InformationLevel","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_stat_hudt dummy {"text":"UtilityItems_ROB_Stat_HUDType","color":"dark_blue"}
    ### Test
    scoreboard objectives add ui_tmw501_19_test_fd minecraft.custom:fall_one_cm {"text":"UtilityItems_ROB_Test_FallDistance","color":"dark_blue"}
    scoreboard objectives add ui_tmw501_19_test_dt minecraft.custom:damage_taken {"text":"UtilityItems_ROB_Test_DamageTaken","color":"dark_blue"}

## 装備用
    scoreboard objectives add ui_tmw255_state_glitch dummy {"text":"UtilityItems_Glitch","color":"dark_blue"}

## 使用関数の設定
    scoreboard players set #type1 ui_rand 1
    scoreboard players set #type2 ui_rand 1
    scoreboard players set #-100 ui_num -100
    scoreboard players set #-5 ui_num -5
    scoreboard players set #-1 ui_num -1
    scoreboard players set #0 ui_num 0
    scoreboard players set #1 ui_num 1
    scoreboard players set #2 ui_num 2
    scoreboard players set #3 ui_num 3
    scoreboard players set #4 ui_num 4
    scoreboard players set #5 ui_num 5
    scoreboard players set #6 ui_num 6
    scoreboard players set #7 ui_num 7
    scoreboard players set #8 ui_num 8
    scoreboard players set #9 ui_num 9
    scoreboard players set #10 ui_num 10
    scoreboard players set #11 ui_num 11
    scoreboard players set #12 ui_num 12
    scoreboard players set #13 ui_num 13
    scoreboard players set #14 ui_num 14
    scoreboard players set #15 ui_num 15
    scoreboard players set #16 ui_num 16
    scoreboard players set #17 ui_num 17
    scoreboard players set #18 ui_num 18
    scoreboard players set #19 ui_num 19
    scoreboard players set #20 ui_num 20
    scoreboard players set #24 ui_num 24
    scoreboard players set #25 ui_num 25
    scoreboard players set #30 ui_num 30
    scoreboard players set #36 ui_num 36
    scoreboard players set #40 ui_num 40
    scoreboard players set #50 ui_num 50
    scoreboard players set #60 ui_num 60
    scoreboard players set #81 ui_num 81
    scoreboard players set #90 ui_num 90
    scoreboard players set #95 ui_num 95
    scoreboard players set #98 ui_num 98
    scoreboard players set #99 ui_num 99
    scoreboard players set #100 ui_num 100
    scoreboard players set #180 ui_num 180
    scoreboard players set #200 ui_num 200
    scoreboard players set #250 ui_num 250
    scoreboard players set #300 ui_num 300
    scoreboard players set #325 ui_num 325
    scoreboard players set #360 ui_num 360
    scoreboard players set #392 ui_num 392
    scoreboard players set #490 ui_num 490
    scoreboard players set #500 ui_num 500
    scoreboard players set #1000 ui_num 1000
    scoreboard players set #2000 ui_num 2000
    scoreboard players set #2220 ui_num 2220
    scoreboard players set #3000 ui_num 3000
    scoreboard players set #3600 ui_num 3600
    scoreboard players set #10000 ui_num 10000
    scoreboard players set #20000 ui_num 20000
    scoreboard players set #31743 ui_num 31743
    scoreboard players set #32767 ui_num 32767
    scoreboard players set #65536 ui_num 65536
    scoreboard players set #100000 ui_num 100000
    scoreboard players set #1000000 ui_num 1000000
    scoreboard players set #1800000 ui_num 1800000
    scoreboard players set #10000000 ui_num 10000000
    
    scoreboard players set $mod ui_calc1 1000
    scoreboard players set $max ui_i_resitem 64
    scoreboard players set $max ui_i_resitem2 64
    scoreboard players set $tmw10 ui_calc1 1
    scoreboard players set $gun.react ui_world 1
    scoreboard players set $tmw.activation ui_world 1
    execute unless score $base ui_id matches -2147483648..2147483647 run scoreboard players set $base ui_id 17
    execute unless score $base ui_obj_id matches -2147483648..2147483647 run scoreboard players set $base ui_obj_id 1
    execute unless score $base ui_i_id matches -2147483648..2147483647 run scoreboard players set $base ui_i_id 1

## ボスバー
    bossbar add ui:dream2 {"text":"幽玄の王","color":"aqua","italic":false,"bold":true}
    bossbar set ui:dream2 color blue
    bossbar set ui:dream2 max 200
    bossbar add ui:tmw237 {"text":"残り時間","color":"white","italic":false,"bold":true}
    bossbar set ui:tmw237 color white
    bossbar set ui:tmw237 max 3000

## チーム
    team add blue
    team modify blue color aqua
    team modify blue friendlyFire false
    team modify blue collisionRule pushOwnTeam
    team modify blue nametagVisibility hideForOtherTeams
    team modify blue seeFriendlyInvisibles false
    team add red
    team modify red color light_purple
    team modify red friendlyFire false
    team modify red collisionRule pushOwnTeam
    team modify red nametagVisibility hideForOtherTeams
    team modify red seeFriendlyInvisibles false
    team add yellow
    team modify yellow color yellow
    team modify yellow friendlyFire false
    team modify yellow collisionRule pushOwnTeam
    team modify yellow nametagVisibility hideForOtherTeams
    team modify yellow seeFriendlyInvisibles false
    team add green
    team modify green color green
    team modify green friendlyFire false
    team modify green collisionRule pushOwnTeam
    team modify green nametagVisibility hideForOtherTeams
    team modify green seeFriendlyInvisibles false

## その他
    forceload add 0 0
    setblock 0 0 0 air replace
    setblock 0 1 0 air replace
    setblock 0 0 0 minecraft:dropper{Items:[{Slot:0b,id:"minecraft:stone",Count:1b},{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:5b,id:"minecraft:stone",Count:1b},{Slot:6b,id:"minecraft:stone",Count:1b},{Slot:7b,id:"minecraft:stone",Count:1b},{Slot:8b,id:"minecraft:stone",Count:1b}]} replace
    setblock 0 1 0 minecraft:oak_sign replace
    gamerule maxCommandChainLength 900000

#=====================================================================================
#
#       ・工業用 機械のレシピ一覧表示
#
#=====================================================================================

    data modify storage ui:industry/6 recipe set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 圧縮機のレシピ ◇◆◇"}',Lore:['{"text":"§f<加工時間： 6秒>"}','{"text":"§f金属インゴット §7金属ナゲットx9"}','{"text":"§b天銀インゴット §7天銀の小片x9"}','{"text":"§fグロウストーン §7グロウストーンダストx4"}','{"text":"§fクォーツブロック §7ネザークォーツx4"}','{"text":"§f雪ブロック §7雪玉x4"}','{"text":"§f骨 §7骨粉x4"}','{"text":"§fアメジストブロック §7アメジストの欠片x4"}','{"text":"§fブレイズロッド §7ブレイズパウダーx4"}','{"text":"§f砂岩 §7砂x4"}','{"text":""}','{"text":"§f<加工時間： 10秒>"}','{"text":"§f各種鉱石ブロック §7鉱石素材x9"}','{"text":"§f氷 §7雪ブロック"}','{"text":"§f氷塊 §7氷x9"}','{"text":""}','{"text":"§f<加工時間： 20秒>"}','{"text":"§f青氷 §7氷塊x9"}','{"text":""}','{"text":"§f<加工時間： 100秒>"}','{"text":"§fダイヤモンド §7石炭ブロックx9"}','{"text":"§dエーテリウムの塊 §7エーテリウムの欠片x9"}','{"text":"§d黒穹の断片 §7小さな黒穹の断片x64"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/7 recipe set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 粉砕機のレシピ ◇◆◇"}',Lore:['{"text":"§f<加工時間： 10秒>"}','{"text":"§f丸石 §7石"}','{"text":"§f砂利 §7丸石"}','{"text":"§f火打石 §7砂利"}','{"text":"§f砂 §7砂岩"}','{"text":"§f雪玉 §7氷"}','{"text":"§fソウルサンド §7ネザーラック"}','{"text":"§f種 §7土"}','{"text":"§f砂糖 §7リンゴ"}','{"text":"§f糸x3 §7羊毛"}','{"text":"§fブレイズパウダーx3 §7ブレイズロッド"}','{"text":"§f骨粉x3 §7骨"}','{"text":""}','{"text":"§f<加工時間： 15秒>"}','{"text":"§f石炭x2 §7石炭鉱石"}','{"text":"§f鉄の原石x2 §7鉄鉱石"}','{"text":"§f銅の原石x8 §7銅鉱石"}','{"text":"§f金の原石x2 §7金鉱石"}','{"text":"§fダイヤモンドx2 §7ダイヤモンド鉱石"}','{"text":"§fエメラルドx2 §7エメラルド鉱石"}','{"text":"§fレッドストーンダストx6 §7レッドストーン鉱石"}','{"text":"§fラピスラズリx6 §7ラピスラズリ鉱石"}','{"text":"§fグロウストーンダストx4 §7グロウストーン"}','{"text":"§fネザークォーツx4 §7ネザークォーツ鉱石"}','{"text":"§bエーテリウムの欠片x5 §7エーテリウムの塊"}','{"text":""}','{"text":"§f<加工時間： 60秒>"}','{"text":"§fレッドストーンダスト §7黒曜石"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/8 recipe set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 注入機のレシピ ◇◆◇ <1/3>"}',Lore:['{"text":"§f<成果スロット： エネルギーカートリッジ>"}','{"text":"§b染み込んだ土壌 §f→ §b1 §7Etherium"}','{"text":"§b染み込んだ石 §f→ §b1 §7Etherium"}','{"text":"§b染み込んだ水入りバケツ §f→ §b5 §7Etherium"}','{"text":"§bエーテリウムの欠片 §f→ §b3 §7Etherium"}','{"text":"§dエーテリウムの塊 §f→ §b20 §7Etherium"}','{"text":"§fアメジストの欠片 §f→ §d1 §7Amethyst"}','{"text":"§fアメジストブロック §f→ §d4 §7Amethyst"}','{"text":"§f精製アメジスト §f→ §d5 §7Amethyst"}','{"text":"§f芽生えたアメジスト §f→ §d20 §7Amethyst"}','{"text":""}','{"text":"§f<成果スロット： 矢>"}','{"text":"§f火薬x16 §f→ §b消滅の矢"}','{"text":"§fTNTx16 §f→ §d抹消の矢"}','{"text":"§eネザースター §f→ §6反物質の矢"}','{"text":"§dドラゴンの卵 §f→ §6NovaEraser"}','{"text":""}','{"text":"§f<成果スロット： 耐久値の減ったアイテム>"}','{"text":"§bエーテリウムの欠片 §f→ §75 Durability"}','{"text":"§b天銀インゴット §f→ §72 Durability"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/8 recipe2 set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 注入機のレシピ ◇◆◇ <2/3>"}',Lore:['{"text":"§f<成果スロット： 鉄の剣>"}','{"text":"§bエーテリウムの欠片 §f→ §bエーテリウムの剣"}','{"text":""}','{"text":"§f<成果スロット： 石のツルハシ>"}','{"text":"§bエーテリウムの欠片 §f→ §b天銀掘りのツルハシ"}','{"text":""}','{"text":"§f<成果スロット： 鉄のツルハシ>"}','{"text":"§b天銀インゴットx3 §f→ §b天銀のツルハシ"}','{"text":"§d蒼天銀インゴットx3 §f→ §d蒼天銀のツルハシ"}','{"text":""}','{"text":"§f<成果スロット： 水入り瓶>"}','{"text":"§f泣く黒曜石 §f→ §d✝魔王✝"}','{"text":"§f青氷 §f→ §b耐炎のポーション"}','{"text":"§fマグマブロック §f→ §b耐氷のポーション"}','{"text":"§fアメジストブロック §f→ §b耐紫のポーション"}','{"text":""}','{"text":"§f<成果スロット： §aマキナフィッシャー§f>"}','{"text":"§eネザースター §f→ §6マキナフィッシャーMC"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/8 recipe3 set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 注入機のレシピ ◇◆◇ <3/3>"}',Lore:['{"text":"§f<成果スロット： スケルトンの頭蓋骨>"}','{"text":"§b天銀インゴット §f→ ダメージテスター"}','{"text":""}','{"text":"§f<成果スロット： ゾンビの頭>"}','{"text":"§b天銀インゴット §f→ §bコープスフラッグ"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/9 recipe set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 組立機のレシピ ◇◆◇ <1/5>"}',Lore:['{"text":"§f<加工時間： 10秒>"}','{"text":"§f血の金庫 §7金ブロックx2§f,§7エンダーパールx2"}','{"text":"§b赫銅の広域回収器 §7ホッパー§f,§7伝導合金x8"}','{"text":"§b天銀の広域回収器 §7赫銅の広域回収器§f,§7天銀インゴットx4"}','{"text":"§dエンダーの広域回収器 §7天銀の広域回収器§f,§7エンダーパールx4"}','{"text":"§6エンクロージャー §7天銀インゴットx64§f,§7ネザースター"}','{"text":"§6凍て付いた博愛 §7青氷x64§f,§7ネザースター"}','{"text":"§dハイパーロングフィッシャー §7ロングフィッシャー§f,§7鉄のメカニカルパーツx4"}','{"text":"§aマキナフィッシャー §7鉄のメカニカルパーツx8§f,§7金の糸x16"}','{"text":"§dエレキショッカー・オート §7伝導合金x8§f,§7金の糸x16"}','{"text":"§b松明砲 §7ピストンx8§f,§7緑の染料x16"}','{"text":"§bメカニカルツールⅡ §7メカニカルツール§f,§7ダイヤモンドx3"}','{"text":"§bメカニカルツールⅢ §7メカニカルツール§f,§7ネザライトインゴットx3"}','{"text":"§dエレベーターワンド §7エンダーアイ§f,§7ダイヤモンドx8"}','{"text":"§6黒穹の剣 §7ネザースター§f,§7黒穹インゴットx8"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/9 recipe2 set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 組立機のレシピ ◇◆◇ <2/5>"}',Lore:['{"text":"§f<加工時間： 10秒>"}','{"text":"§dオートリローダー §7金のメカニカルパーツx8§f,§7鉄塊x16"}','{"text":"§b鉄のアイテムポーチ §7鉄のメカニカルパーツx8§f,§7革x16"}','{"text":"§b金のアイテムポーチ §7鉄のアイテムポーチ§f,§7金のメカニカルパーツx8"}','{"text":"§bアメジストのアイテムポーチ §7金のアイテムポーチ§f,§7精製アメジストx8"}','{"text":"§bエーテリウムのアイテムポーチ §7アメジストのアイテムポーチ§f,§7エーテリウムの塊x8"}','{"text":"§b小さな経験の器 §7エメラルドx8§f,§7金の糸x16"}','{"text":"§b経験の器 §7小さな経験の器§f,§7エメラルドx8"}','{"text":"§b大きな経験の器 §7経験の器§f,§7精製アメジストx8"}','{"text":"§b特大の経験の器 §7大きな経験の器§f,§7蒼天銀インゴットx8"}','{"text":"§dうっかりテレポートン §7アナザー合金x8§f,§7エンダーパールx16"}','{"text":"§d氷結のボート §7青氷x8§f,§7エーテリウムの欠片x16"}','{"text":"§d霊体の視察 §7蒼天銀インゴットx8§f,§7腐った肉x16"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/9 recipe3 set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 組立機のレシピ ◇◆◇ <3/5>"}',Lore:['{"text":"§f<加工時間： 10秒>"}','{"text":"§bエーテリウムシューター §7鉄インゴットx16§f,§7エーテリウムの欠片x16"}','{"text":"§bエーテリウムショットガン §7エーテリウムシューター§f,§7鉄ブロックx4"}','{"text":"§bエーテリウムマシンガン §7エーテリウムシューター§f,§7エーテリウムの欠片x24"}','{"text":"§bエーテリウムスナイパー §7エーテリウムシューター§f,§7エーテリウムの塊x4"}','{"text":"§bエネルギーカートリッジ §7鉄インゴットx8§f,§7ガラスx16"}','{"text":"§fIH-1P §7石x8§f,§7レバーx16"}','{"text":"§fIH-2P-R §7鉄インゴットx8§f,§7レバーx16"}','{"text":"§fIH-5P §7鉄のメカニカルパーツx8§f,§7レバーx16"}','{"text":"§fIH-6AR §7鉄のメカニカルパーツx8§f,§7レッドストーンリピーターx16"}','{"text":"§fIH-7SG §7ネザーレンガx8§f,§7レッドストーンリピーターx16"}','{"text":"§fIH-4RF §7ネザライトの欠片x8§f,§7レッドストーンコンパレーターx16"}','{"text":"§fIH-22SR §7ネザライトインゴットx8§f,§7レッドストーンコンパレーターx16"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/9 recipe4 set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 組立機のレシピ ◇◆◇ <4/5>"}',Lore:['{"text":"§f<加工時間： 10秒>"}','{"text":"§fIH-18P-FB §7IH-2P-R§f,§7銅のメカニカルパーツx8"}','{"text":"§fIH-13P-E §7IH-5P§f,§7銅のメカニカルパーツx8"}','{"text":"§fSI-P4 §7IH-5P§f,§7伝導合金x8"}','{"text":"§fIH-11AR-E §7IH-6AR§f,§7伝導合金x8"}','{"text":"§fIH-16AR-B §7IH-6AR§f,§7銅のメカニカルパーツx8"}','{"text":"§fRT-AR-TM §7IH-6AR§f,§7ネザライトの欠片x8"}','{"text":"§fIH-11AR-C §7IH-11AR-E§f,§7銅のメカニカルパーツx8"}','{"text":"§fIH-9SG-D §7IH-7SG§f,§7伝導合金x8"}','{"text":"§fIH-15SG §7IH-7SG§f,§7銅のメカニカルパーツx8"}','{"text":"§fHydra §7IH-7SG§f,§7ネザライトの欠片x8"}','{"text":"§fDestroyer §7IH-7SG§f,§7ネザライトインゴットx8"}','{"text":"§fVolt Rifle §7IH-4RF§f,§7アナザー合金x8"}','{"text":"§fIH-25RF §7IH-4RF§f,§7銅のメカニカルパーツx8"}','{"text":"§fIH-26SR-B §7IH-22SR§f,§7銅のメカニカルパーツx8"}','{"text":"§fIH-29SR-C §7IH-22SR§f,§7伝導合金x8"}','{"text":"§fIH-31SR-M §7IH-22SR§f,§7アナザー合金x8"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/9 recipe5 set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 組立機のレシピ ◇◆◇ <5/5>"}',Lore:['{"text":"§f<加工時間： 1秒>"}','{"text":"§fIH-HG-Bullet §7石§f,§7火薬x4"}','{"text":"§fIH-HG-Magazine §7レンガ§f,§7火薬x4"}','{"text":"§fIH-AR-Magazine §7鉄インゴット§f,§7火薬x4"}','{"text":"§fIH-SG-Shell §7伝導合金§f,§7火薬x4"}','{"text":"§fIH-RF-Bullet §7金§f,§7火薬x4"}','{"text":"§fIH-SR-Bullet §7ネザライトの欠片§f,§7火薬x4"}','{"text":"§fSI-HG-Magazine §7IH-HG-Magazine§f,§7銅のメカニカルパーツ"}','{"text":"§fSI-AR-Magazine §7IH-AR-Magazine§f,§7銅のメカニカルパーツ"}','{"text":"§fSI-SG-Shell §7IH-SG-Shell§f,§7銅のメカニカルパーツ"}','{"text":"§fSI-RF-Bullet §7IH-RF-Bullet§f,§7銅のメカニカルパーツ"}','{"text":"§fSI-SR-Bullet §7IH-SR-Bullet§f,§7銅のメカニカルパーツ"}','{"text":"§fPiercer §7IH-SR-Bullet§f,§7ネザースター"}']},ui:{ismenu:1}}}
    data modify storage ui:industry/10 recipe set value {Slot:26b,id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"§6◇◆◇ 金属加工機のレシピ ◇◆◇"}',Lore:['{"text":"§f<加工時間： 5秒>"}','{"text":"§f鉄のメカニカルパーツ §7鉄インゴットx2§f,§7ブレイズパウダー"}','{"text":"§f銅のメカニカルパーツ §7銅インゴットx2§f,§7ブレイズパウダー"}','{"text":"§f金のメカニカルパーツ §7金インゴットx2§f,§7ブレイズパウダー"}','{"text":"§f精製アメジスト §7アメジストの欠片x2§f,§7プリズマリンクリスタル"}','{"text":"§fアナザー合金 §7ネザーレンガ§f,§7アメジストの欠片"}','{"text":"§f伝導合金 §7銅インゴット§f,§7レッドストーンダスト"}','{"text":"§d蒼天銀インゴット §7天銀インゴット§f,§7ダイヤモンド"}','{"text":"§f金の糸 §7金インゴット§f,§7糸"}','{"text":"§dエーテリウムの塊 §7天銀インゴット§f,§7エーテリウムの欠片"}','{"text":"§d黒穹の断片 §7小さな黒穹の断片x40,§7プリズマリンの欠片x16"}','{"text":""}','{"text":"§f<加工時間： 180秒>"}','{"text":"§a黒穹インゴット §7黒穹の断片§f,§7ドラゴンの卵"}']},ui:{ismenu:1}}}

#=====================================================================================
#
#       ・外部ライブラリの読み込み
#
#=====================================================================================

    function better_collision:core/load

#=====================================================================================
#
#       ・最終実行
#
#=====================================================================================

    scoreboard players set $version ui_world 53
    #say operationed