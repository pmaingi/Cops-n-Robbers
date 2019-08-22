
--[[
  Cops and Robbers: Character Creation Config - Client Dependencies
  Created by Michael Harris (mike@harrisonline.us)
  08/20/2019
  
  This file handles all client-sided configuration settings, and
  variable declarations for use by client scripts in this resource.
  
--]]


-- Hash key's used for storing indexes and comparing
maleHash	 = GetHashKey("mp_m_freemode_01")
femaleHash = GetHashKey("mp_f_freemode_01")


defaultOutfits = {
  [maleHash]   = {
    [1] = { -- Default David
      {slot = 3, draw = 0, text = 0},    {slot =  4, draw = 0, text = 0},
      {slot = 6, draw = 0, text = 0},    {slot = 11, draw = 0, text = 0}, 
    },
    [2] = { -- Cali Sun
      {slot = 3, draw = 5,   text = 0},  {slot =  4, draw = 104, text = 0},
      {slot = 6, draw = 5,   text = 0},  {slot = 11, draw = 17,  text = 4}, 
    },
    [3] = { -- Lumberjack
      {slot = 3, draw = 8,  text = 0},   {slot =  4, draw = 0,  text = 1},
      {slot = 6, draw = 20, text = 0},   {slot = 11, draw = 43, text = 0}, 
    },
    [4] = { -- Club Stalker
      {slot = 3, draw = 0,   text = 0},  {slot =  4, draw = 1,   text = 0},
      {slot = 6, draw = 8,   text = 2},  {slot = 11, draw = 273, text = 17}, 
    },
    [5] = { -- Golfer Dad
      {slot = 3, draw = 0,   text = 0},  {slot =  4, draw = 0,   text = 14},
      {slot = 6, draw = 18,  text = 0},  {slot = 11, draw = 242, text = 3}, 
    },
    [6] = { -- Gym Buddy
      {slot = 3, draw = 5,   text = 0},  {slot =  4, draw = 14,  text = 1},
      {slot = 6, draw = 9,   text = 1},  {slot = 11, draw = 237, text = 2}, 
    },
  },
  [femaleHash] = {
    [1] = { -- Default Denise
      {slot = 3, draw = 0, text = 0},  {slot =  4, draw = 0, text = 0},
      {slot = 6, draw = 0, text = 0},  {slot = 11, draw = 0, text = 0}, 
    },                                 
    [2] = { -- Cali Girl
      {slot = 3, draw = 4, text = 0},  {slot =  4, draw = 25,  text = 1},
      {slot = 6, draw = 5, text = 0},  {slot = 11, draw = 195, text = 25}, 
    },                                 
    [3] = { -- Sister Cousin
      {slot = 3, draw = 4, text = 0},   {slot =  4, draw = 74,  text = 4},
      {slot = 6, draw = 7, text = 13},  {slot = 11, draw = 171, text = 1}, 
    },                                 
    [4] = { -- Morning Regret
      {slot = 3, draw = 15, text = 0},  {slot =  4, draw = 71,  text = 1},
      {slot = 6, draw = 14, text = 0},  {slot = 11, draw = 283, text = 2}, 
    },                                 
    [5] = { -- Soccer Mom
      {slot = 3, draw = 0, text = 0},   {slot =  4, draw = 4, text = 8},
      {slot = 6, draw = 10, text = 1},  {slot = 11, draw = 9, text = 9}, 
    },                                 
    [6] = { -- Beach Body
      {slot = 3, draw = 15, text = 0},  {slot =  4, draw = 17, text = 9},
      {slot = 6, draw = 5, text = 1},   {slot = 11, draw = 18, text = 9}, 
    },
  }
}


maxOverlays = {
  [0] = 23, [1] = 28, [2] = 33,  [3] = 14, [4]  = 74, [5]	 = 6, [6] = 11, 
  [7] = 10, [8] = 9,  [9] = 17, [10] = 16, [11] = 11, [12] = 1
}

spPoints = {
  [1] = { -- Los Santos Spawn Areas
    vector3(435.76, -644.29, 28.74),   -- Bus Depot
    vector3(169.24, -993.29, 30.10),   -- South Legion Square
    vector3(126.007, -1732.17, 30.11), -- South Central Subway Station
    vector3(-1341.36, -1300.10, 4.84), -- South Vespucci Beach
  },
  [2] = { -- Senora Desert Spawn Areas -- DEBUG - Change later
    vector3(435.76, -644.29, 28.74),   -- Bus Depot
    vector3(169.24, -993.29, 30.10),   -- South Legion Square
    vector3(126.007, -1732.17, 30.11), -- South Central Subway Station
    vector3(-1341.36, -1300.10, 4.84), -- South Vespucci Beach
  },
  [3] = { -- Paleto Bay Spawn Areas    -- DEBUG - Change later
    vector3(435.76, -644.29, 28.74),   -- Bus Depot
    vector3(169.24, -993.29, 30.10),   -- South Legion Square
    vector3(126.007, -1732.17, 30.11), -- South Central Subway Station
    vector3(-1341.36, -1300.10, 4.84), -- South Vespucci Beach
  },
  [4] = { -- Fort Zancudo Spawn Areas  -- DEBUG - Change later
    vector3(435.76, -644.29, 28.74),   -- Bus Depot
    vector3(169.24, -993.29, 30.10),   -- South Legion Square
    vector3(126.007, -1732.17, 30.11), -- South Central Subway Station
    vector3(-1341.36, -1300.10, 4.84), -- South Vespucci Beach
  }
}

pedModels = {
  'a_f_m_beach_01',
  'a_f_m_bevhills_01',
  'a_f_m_bevhills_02',
  'a_f_m_bodybuild_01',
  'a_f_m_business_02',
  'a_f_m_downtown_01',
  'a_f_m_eastsa_01',
  'a_f_m_eastsa_02',
  'a_f_m_fatbla_01',
  'a_f_m_fatwhite_01',
  'a_f_m_ktown_01',
  'a_f_m_ktown_02',
  'a_f_m_prolhost_01',
  'a_f_m_salton_01',
  'a_f_m_skidrow_01',
  'a_f_m_soucent_01',
  'a_f_m_soucent_02',
  'a_f_m_soucentmc_01',
  'a_f_m_tourist_01',
  'a_f_m_tramp_01',
  'a_f_m_trampbeac_01',
  'a_f_o_genstreet_01',
  'a_f_o_indian_01',
  'a_f_o_ktown_01',
  'a_f_o_salton_01',
  'a_f_o_soucent_01',
  'a_f_o_soucent_02',
  'a_f_y_beach_01',
  'a_f_y_bevhills_01',
  'a_f_y_bevhills_02',
  'a_f_y_bevhills_03',
  'a_f_y_bevhills_04',
  'a_f_y_business_01',
  'a_f_y_business_02',
  'a_f_y_business_03',
  'a_f_y_business_04',
  'a_f_y_eastsa_01',
  'a_f_y_eastsa_02',
  'a_f_y_eastsa_03',
  'a_f_y_epsilon_01',
  'a_f_y_fitness_01',
  'a_f_y_fitness_02',
  'a_f_y_genhot_01',
  'a_f_y_golfer_01',
  'a_f_y_hiker_01',
  'a_f_y_hippie_01',
  'a_f_y_hipster_01',
  'a_f_y_hipster_02',
  'a_f_y_hipster_03',
  'a_f_y_hipster_04',
  'a_f_y_indian_01',
  'a_f_y_juggalo_01',
  'a_f_y_runner_01',
  'a_f_y_rurmeth_01',
  'a_f_y_scdressy_01',
  'a_f_y_skater_01',
  'a_f_y_soucent_01',
  'a_f_y_soucent_02',
  'a_f_y_soucent_03',
  'a_f_y_tennis_01',
  'a_f_y_topless_01',
  'a_f_y_tourist_01',
  'a_f_y_tourist_02',
  'a_f_y_vinewood_01',
  'a_f_y_vinewood_02',
  'a_f_y_vinewood_03',
  'a_f_y_vinewood_04',
  'a_f_y_yoga_01',
  'a_m_m_afriamer_01',
  'a_m_m_beach_01',
  'a_m_m_beach_02',
  'a_m_m_bevhills_01',
  'a_m_m_bevhills_02',
  'a_m_m_business_01',
  'a_m_m_eastsa_01',
  'a_m_m_eastsa_02',
  'a_m_m_farmer_01',
  'a_m_m_fatlatin_01',
  'a_m_m_genfat_01',
  'a_m_m_genfat_02',
  'a_m_m_golfer_01',
  'a_m_m_hasjew_01',
  'a_m_m_hillbilly_01',
  'a_m_m_hillbilly_02',
  'a_m_m_indian_01',
  'a_m_m_ktown_01',
  'a_m_m_malibu_01',
  'a_m_m_mexcntry_01',
  'a_m_m_mexlabor_01',
  'a_m_m_og_boss_01',
  'a_m_m_paparazzi_01',
  'a_m_m_polynesian_01',
  'a_m_m_prolhost_01',
  'a_m_m_rurmeth_01',
  'a_m_m_salton_01',
  'a_m_m_salton_02',
  'a_m_m_salton_03',
  'a_m_m_salton_04',
  'a_m_m_skater_01',
  'a_m_m_skidrow_01',
  'a_m_m_socenlat_01',
  'a_m_m_soucent_01',
  'a_m_m_soucent_02',
  'a_m_m_soucent_03',
  'a_m_m_soucent_04',
  'a_m_m_stlat_02',
  'a_m_m_tennis_01',
  'a_m_m_tourist_01',
  'a_m_m_tramp_01',
  'a_m_m_trampbeac_01',
  'a_m_m_tranvest_01',
  'a_m_m_tranvest_02',
  'a_m_o_beach_01',
  'a_m_o_genstreet_01',
  'a_m_o_ktown_01',
  'a_m_o_salton_01',
  'a_m_o_soucent_01',
  'a_m_o_soucent_02',
  'a_m_o_soucent_03',
  'a_m_o_tramp_01',
  'a_m_y_beach_01',
  'a_m_y_beach_02',
  'a_m_y_beach_03',
  'a_m_y_beachvesp_01',
  'a_m_y_beachvesp_02',
  'a_m_y_bevhills_01',
  'a_m_y_bevhills_02',
  'a_m_y_breakdance_01',
  'a_m_y_busicas_01',
  'a_m_y_business_01',
  'a_m_y_business_02',
  'a_m_y_business_03',
  'a_m_y_cyclist_01',
  'a_m_y_dhill_01',
  'a_m_y_downtown_01',
  'a_m_y_eastsa_01',
  'a_m_y_eastsa_02',
  'a_m_y_epsilon_01',
  'a_m_y_epsilon_02',
  'a_m_y_gay_01',
  'a_m_y_gay_02',
  'a_m_y_genstreet_01',
  'a_m_y_genstreet_02',
  'a_m_y_golfer_01',
  'a_m_y_hasjew_01',
  'a_m_y_hiker_01',
  'a_m_y_hippy_01',
  'a_m_y_hipster_01',
  'a_m_y_hipster_02',
  'a_m_y_hipster_03',
  'a_m_y_indian_01',
  'a_m_y_jetski_01',
  'a_m_y_juggalo_01',
  'a_m_y_ktown_01',
  'a_m_y_ktown_02',
  'a_m_y_latino_01',
  'a_m_y_methhead_01',
  'a_m_y_mexthug_01',
  'a_m_y_motox_01',
  'a_m_y_motox_02',
  'a_m_y_musclbeac_01',
  'a_m_y_musclbeac_02',
  'a_m_y_polynesian_01',
  'a_m_y_roadcyc_01',
  'a_m_y_runner_01',
  'a_m_y_runner_02',
  'a_m_y_salton_01',
  'a_m_y_skater_01',
  'a_m_y_skater_02',
  'a_m_y_soucent_01',
  'a_m_y_soucent_02',
  'a_m_y_soucent_03',
  'a_m_y_soucent_04',
  'a_m_y_stbla_01',
  'a_m_y_stbla_02',
  'a_m_y_stlat_01',
  'a_m_y_stwhi_01',
  'a_m_y_stwhi_02',
  'a_m_y_sunbathe_01',
  'a_m_y_surfer_01',
  'a_m_y_vindouche_01',
  'a_m_y_vinewood_01',
  'a_m_y_vinewood_02',
  'a_m_y_vinewood_03',
  'a_m_y_vinewood_04',
  'a_m_y_yoga_01',
  'g_f_importexport_01',
  'g_f_y_ballas_01',
  'g_f_y_families_01',
  'g_f_y_lost_01',
  'g_f_y_vagos_01',
  'g_m_importexport_01',
  'g_m_m_armboss_01',
  'g_m_m_armgoon_01',
  'g_m_m_armlieut_01',
  'g_m_m_chemwork_01',
  'g_m_m_chiboss_01',
  'g_m_m_chicold_01',
  'g_m_m_chigoon_01',
  'g_m_m_chigoon_02',
  'g_m_m_korboss_01',
  'g_m_m_mexboss_01',
  'g_m_m_mexboss_02',
  'g_m_y_armgoon_02',
  'g_m_y_azteca_01',
  'g_m_y_ballaeast_01',
  'g_m_y_ballaorig_01',
  'g_m_y_ballasout_01',
  'g_m_y_famca_01',
  'g_m_y_famdnf_01',
  'g_m_y_famfor_01',
  'g_m_y_korean_01',
  'g_m_y_korean_02',
  'g_m_y_korlieut_01',
  'g_m_y_lost_01',
  'g_m_y_lost_02',
  'g_m_y_lost_03',
  'g_m_y_mexgang_01',
  'g_m_y_mexgoon_01',
  'g_m_y_mexgoon_02',
  'g_m_y_mexgoon_03',
  'g_m_y_pologoon_01',
  'g_m_y_pologoon_02',
  'g_m_y_salvaboss_01',
  'g_m_y_salvagoon_01',
  'g_m_y_salvagoon_02',
  'g_m_y_salvagoon_03',
  'g_m_y_strpunk_01',
  'g_m_y_strpunk_02',
  's_f_m_fembarber',
  's_f_m_maid_01',
  's_f_m_shop_high',
  's_f_m_sweatshop_01',
  's_f_y_airhostess_01',
  's_f_y_bartender_01',
  's_f_y_baywatch_01',
  's_f_y_factory_01',
  's_f_y_hooker_01',
  's_f_y_hooker_02',
  's_f_y_hooker_03',
  's_f_y_migrant_01',
  's_f_y_movprem_01',
  's_f_y_scrubs_01',
  's_f_y_shop_low',
  's_f_y_shop_mid',
  's_f_y_sweatshop_01',
  's_m_m_ammucountry',
  's_m_m_armoured_01',
  's_m_m_armoured_02',
  's_m_m_autoshop_01',
  's_m_m_autoshop_02',
  's_m_m_bouncer_01',
  's_m_m_cntrybar_01',
  's_m_m_dockwork_01',
  's_m_m_doctor_01',
  's_m_m_gaffer_01',
  's_m_m_gardener_01',
  's_m_m_gentransport',
  's_m_m_hairdress_01',
  's_m_m_janitor',
  's_m_m_lathandy_01',
  's_m_m_lifeinvad_01',
  's_m_m_linecook',
  's_m_m_lsmetro_01',
  's_m_m_mariachi_01',
  's_m_m_migrant_01',
  's_m_m_movalien_01',
  's_m_m_movprem_01',
  's_m_m_movspace_01',
  's_m_m_pilot_01',
  's_m_m_pilot_02',
  's_m_m_postal_01',
  's_m_m_postal_02',
  's_m_m_scientist_01',
  's_m_m_strperf_01',
  's_m_m_strpreach_01',
  's_m_m_strvend_01',
  's_m_m_trucker_01',
  's_m_m_ups_01',
  's_m_m_ups_02',
  's_m_o_busker_01',
  's_m_y_airworker',
  's_m_y_ammucity_01',
  's_m_y_autopsy_01',
  's_m_y_barman_01',
  's_m_y_baywatch_01',
  's_m_y_blackops_01',
  's_m_y_blackops_02',
  's_m_y_busboy_01',
  's_m_y_chef_01',
  's_m_y_clown_01',
  's_m_y_construct_01',
  's_m_y_construct_02',
  's_m_y_dealer_01',
  's_m_y_dockwork_01',
  's_m_y_doorman_01',
  's_m_y_dwservice_01',
  's_m_y_dwservice_02',
  's_m_y_factory_01',
  's_m_y_fireman_01',
  's_m_y_garbage',
  's_m_y_grip_01',
  's_m_y_mime',
  's_m_y_pestcont_01',
  's_m_y_pilot_01',
  's_m_y_robber_01',
  's_m_y_shop_mask',
  's_m_y_strvend_01',
  's_m_y_swat_01',
  's_m_y_uscg_01',
  's_m_y_valet_01',
  's_m_y_waiter_01',
  's_m_y_winclean_01',
  's_m_y_xmech_01',
  's_m_y_xmech_02',
  's_m_y_xmech_02_mp',
  'u_f_m_miranda',
  'u_f_m_promourn_01',
  'u_f_o_moviestar',
  'u_f_o_prolhost_01',
  'u_f_y_bikerchic',
  'u_f_y_comjane',
  'u_f_y_hotposh_01',
  'u_f_y_jewelass_01',
  'u_f_y_mistress',
  'u_f_y_poppymich',
  'u_f_y_princess',
  'u_f_y_spyactress',
  'u_m_m_aldinapoli',
  'u_m_m_bankman',
  'u_m_m_bikehire_01',
  'u_m_m_filmdirector',
  'u_m_m_glenstank_01',
  'u_m_m_griff_01',
  'u_m_m_jesus_01',
  'u_m_m_jewelthief',
  'u_m_m_markfost',
  'u_m_m_partytarget',
  'u_m_m_promourn_01',
  'u_m_m_rivalpap',
  'u_m_m_spyactor',
  'u_m_m_willyfist',
  'u_m_o_finguru_01',
  'u_m_o_taphillbilly',
  'u_m_o_tramp_01',
  'u_m_y_abner',
  'u_m_y_antonb',
  'u_m_y_babyd',
  'u_m_y_baygor',
  'u_m_y_burgerdrug_01',
  'u_m_y_chip',
  'u_m_y_cyclist_01',
  'u_m_y_guido_01',
  'u_m_y_gunvend_01',
  'u_m_y_hippie_01',
  'u_m_y_imporage',
  'u_m_y_justin',
  'u_m_y_mani',
  'u_m_y_militarybum',
  'u_m_y_paparazzi',
  'u_m_y_party_01',
  'u_m_y_pogo_01',
  'u_m_y_proldriver_01',
  'u_m_y_sbike',
  'u_m_y_staggrm_01',
  'u_m_y_tattoo_01',
}