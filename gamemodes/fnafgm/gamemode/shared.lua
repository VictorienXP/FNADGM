DEFINE_BASECLASS( "gamemode_base" )

include( "player_class/player_securityguard.lua" )
include( "player_class/player_foxy.lua" )
include( "player_class/player_freddy.lua" )
include( "player_class/player_bonnie.lua" )
include( "player_class/player_chica.lua" )
include( "player_class/player_goldenfreddy.lua" )

GM.Name 	= "Five Nights at Freddy's"
GM.ShortName = "FNAFGM"
GM.Author 	= "Xperidia"
GM.Email 	= "contact@Xperidia.com"
GM.Website 	= "go.Xperidia.com/FNAFGM"
GM.OfficialVersion 	= 1.26
GM.Version 	= GM.OfficialVersion
GM.CustomVersion = false
GM.TeamBased = true
GM.AllowAutoTeam = true
if engine.ActiveGamemode()=="fnafgm" then
	GM.Official = true
else
	GM.Official = false
end
GM.CustomVersionChecker = ""
GM.IsFNAFGMDerived = true


--[[ Gamemode constants for derivations ]]--
GM.TimeBase = 12
GM.TimeEnd = 6
GM.AMPM = "AM"
GM.AMPM_End = "AM"
GM.NightBase = 0
GM.NightEnd = 5
GM.HourTime = 86
GM.HourTime_add = 0 --Not used since power is in the place
GM.Power_Max = 100
GM.Power_Drain_Time = 9.6
GM.Power_Usage_Base = 1

GM.Colors_default = Color(255, 255, 255, 255)
GM.Colors_defaultchat = Color(255, 255, 255)
GM.Colors_surl = Color(255, 170, 0, 255)
GM.Colors_sg = Color(255, 255, 100)
GM.Colors_animatronics = Color(255, 0, 0)

GM.Sound_startday = Sound("fnafgm/startday.ogg")
GM.Sound_static = Sound("fnafgm/static.ogg")
GM.Sound_endnight = Sound("fnafgm/clocks_chimes.ogg")
GM.Sound_endnight2 = Sound("fnafgm/clocks_chimes2.ogg")
GM.Sound_xscream = Sound("fnafgm/xscream.ogg")
GM.Sound_xscream2 = Sound("fnafgm/xscream2.ogg")
GM.Sound_foxystep0 = Sound("fnafgm/run0.ogg")
GM.Sound_foxystep1 = Sound("fnafgm/run1.ogg")
GM.Sound_securitycampop = Sound("fnafgm/camdown.ogg")
GM.Sound_securitycampop2 = Sound("fnafgm/monitoron2.ogg")
GM.Sound_securitycamdown2 = Sound("fnafgm/monitoroff2.ogg")
GM.Sound_securitycampop3 = Sound("fnafgm/monitoron3.ogg")
GM.Sound_securitycamdown3 = Sound("fnafgm/monitoroff3.ogg")
GM.Sound_camselect = Sound("fnafgm/camselect.ogg")
GM.Sound_lighterror = Sound("fnafgm/lighterror.ogg")
GM.Sound_end = {
	freddys = Sound("fnafgm/end.ogg"),
	fnaf2 = Sound("fnafgm/end2.ogg")
}
GM.Sound_Foxy = Sound("fnafgm/piratesong2.ogg")
GM.Sound_ChicaBonnie = { Sound("fnafgm/cb1.ogg"), Sound("fnafgm/cb2.ogg"), Sound("fnafgm/cb3.ogg"), Sound("fnafgm/cb4.ogg") }
GM.Sound_Freddy = { Sound("fnafgm/freddy1.ogg"), Sound("fnafgm/freddy2.ogg"), Sound("fnafgm/freddy3.ogg") }
GM.Sound_GoldenFoxy = Sound("fnafgm/goldenfreddy.ogg")
GM.Sound_Calls = {
	freddys = { "fnafgm/voiceover1.ogg", "fnafgm/voiceover2.ogg", "fnafgm/voiceover3.ogg", "fnafgm/voiceover4.ogg", "fnafgm/voiceover5.ogg" }
}
GM.Sound_maskon = Sound("fnafgm/maskon.ogg")
GM.Sound_maskoff = Sound("fnafgm/maskoff.ogg")

GM.TranslatedStrings = {}

GM.Strings = {
	en = {
		sg = "Security guards",
		animatronics = "Animatronics",
		animatronic = "Animatronic",
		tonight = "To Night",
		night = "Night",
		freddys = "Turn off the main power to start the night",
		fnaf2 = "Turn on the %s to start the night",
		fnaf_freddypizzaevents = "Type !start to start the map",
		startanimatronics = "The main power is on",
		foxy = "Foxy",
		freddy = "Freddy",
		chica = "Chica",
		bonnie = "Bonnie",
		goldenfreddy = "Golden Freddy",
		unassigned_SGvsA = "Choose a team",
		powerleft = "Power left:",
		usage = "Usage:",
		unassigned_powerdown = "You can't join when the power is down!",
		flashlight = "flashlight",
		monitor = "Monitor",
		monitor_inst = "Right click to open the Monitor. Left click to use buttons. Reload to enter FNaF view.",
		monitor_purp = "Monitor the restaurant.",
		spectator = "Spectator",
		warn_font = "The font is not installed/up to date! Read the installation instructions in the Workshop page by pressing F1",
		warn_css = "Counter Strike: Source is not mounted. You will have missing textures and ERROR.",
		links = "Link(s)",
		fonthint = "Read installation instructions in the Workshop page\nto install the font",
		faqbtn = "FAQ",
		config = "Configuration",
		hidever = "Hide version",
		dhud = "Draw HUD (Caution! This is a Garry's Mod convar)",
		infoat = "Informations/Misc",
		fontloaded = "Font loaded",
		lang = "Language",
		changemap = "Change Map",
		resetsave = "Reset save (Host only)",
		debugmenu = "Debug Menu (Debug access only)",
		start = "Start",
		stop = "Stop/Restart",
		reset = "Reset",
		autofnafview = "Auto put FNaF View",
		exitfnafview = "Exit FNaF View",
		refreshbypass = "Refresh Bypass",
		chatsound = "Chat sound",
		flashwindow = "Flashes the window on notifications (Windows only)",
		password = "Password",
		saveserver = "Save your own progress on servers",
		progressinfo = "Last saved night"
	},
	fr = {
		freddys = "Coupez le courant pour démarrer la nuit",
		fnaf2 = "Activez les %s pour démarrer la nuit",
		fnaf_freddypizzaevents = "TAPPEZ !START POUR DÉMARRER",
		startanimatronics = "Le courant est allumé",
		unassigned_SGvsA = "Choisissez un camp",
		unassigned_powerdown = "Vous ne pouvez pas rejoindre quand il n'y a plus d'energie !",
		monitor = "Moniteur",
		monitor_inst = "Faites un clic droit pour ouvrir le Moniteur. Faites un clic gauche pour utliser les boutons. Rechargez pour entrer en vue FNaF.",
		monitor_purp = "Surveiller le restaurant.",
		spectator = "Spectateur",
		warn_font = "La police n'est pas installée/à jour! Lisez les instructions d'installation sur la page Workshop en appuyant sur F1",
		warn_css = "Counter Strike: Source n'est pas monté. Vous aurez des textures manquantes et des ERROR.",
		links = "Lien(s)",
		faqbtn = "FAQ",
		fonthint = "Lisez les instructions d'installation sur la page Workshop\npour installer la police",
		hidever = "Masquer la version",
		dhud = "Dessiner l'HUD (Attention ! Paramètre de Garry's Mod)",
		infoat = "Informations/Divers",
		fontloaded = "Police installée",
		lang = "Langage",
		changemap = "Changer de Map",
		resetsave = "Effacer la sauvegarde (Hôte uniquement)",
		debugmenu = "Menu Debug (Accès debug uniquement)",
		start = "Démarrer",
		stop = "Arrêter/Redémarrer",
		reset = "Rénitialiser",
		autofnafview = "Activer automatiquement la vue FNaF",
		exitfnafview = "Quitter la vue FNaF",
		refreshbypass = "Recharger les Bypass",
		chatsound = "Sons du chat",
		flashwindow = "Activer l'alerte fenêtre (Windows uniquement)",
		password = "Mot de passe",
		saveserver = "Sauvegarde de la progression sur les serveurs",
		progressinfo = "Dernière nuit sauvegardée "
	},
	tr = { --Translation by http://steamcommunity.com/profiles/76561198118981905/
		animatronics = "Animasyoncuları",
		freddys = "Ana gücü kapatarak başlayın",
		fnaf2 = "%s açarak başlayın",
		fnaf_freddypizzaevents = "!start Yazarak oyunu başlatın",
		startanimatronics = "Ana güç açık",
		unassigned_normal = "Herhangi bir tuşa basarak oyuna girin",
		unassigned_SGvsA = "TAKIM SEÇİN",
		unassigned_powerdown = "Güç kapalıyken giremezsin!",
		monitor = "Ekran",
		monitor_inst = "Sağ Tıklayarak Ekranı Açın. Sol Tıklayarak Düğmeleri Kullanın. Silah doldurma tuşu ile Fnaf görüşüne geçin.",
		monitor_purp = "Restoranı İzleyin.",
		spectator = "İzleyici",
		warn_font = "Font yüklenmedi/En Son sürüm değil! Yükleme adımlarını Atölye sayfasından yada F1 e basarak Görebilirsiniz",
		warn_css = "Counter Strike: Source Oyunda Doğrulanmadı. Kayıp texture ve HATALARIN Var.",
		fonthint = "Yükleme adımlarını Atölye sayfasında okuyabilirsiniz\nFont yüklenmemiş.",
		faqbtn = "FAQ",
		config = "Ayarlar",
		hidever = "Versionu Gizle",
		dhud = "HUD u göster (Uyarı! Bu Garry's mod HUD u)",
		infoat = "Bilgiler/Misc",
		fontloaded = "Font Yüklendi",
		lang = "Dil",
		changemap = "Haritayı Değiştir",
		resetsave = "Kaydı Sil (Sadece Serveri Yapan)",
		debugmenu = "Debug Menüsü (Sadece Debug yapma İzni olan)",
		start = "Başla",
		stop = "Dur/Tekrar Başlat",
		autofnafview = "Otamatik Fnaf görüşü",
		exitfnafview = "Fnaf Görüşünden Çık"
	},
	ru = { --Translation by http://steamcommunity.com/profiles/76561198135819236
		sg = "Охранники",
		animatronics = "Аниматроники",
		animatronic = "Аниматроник",
		--tonight = "На ночь",
		--night = "Ночь",
		freddys = "Выключите главное питание, чтобы начать ночь",
		fnaf2 = "Включите аниматроников, чтобы начать ночь",
		fnaf_freddypizzaevents = "Введите !start, чтобы начать игру",
		startanimatronics = "Главное питание включено",
		foxy = "Фокси",
		freddy = "Фредди",
		chica = "Чика",
		bonnie = "Бонни",
		goldenfreddy = "Золотой Фредди",
		unassigned_SGvsA = "Выберите команду",
		--powerleft = "Энергии осталось:",
		--usage = "Используется:",
		unassigned_powerdown = "Вы не можете присоединиться, если энергии нет!",
		flashlight = "Фонарик",
		monitor = "Монитор",
		monitor_inst = "Щелкните правой кнопкой мыши, чтобы открыть монитор. Щелкните левой кнопкой мыши, чтобы использовать кнопки. Перезарядитесь, чтобы войти в ФНаФ вид.",
		monitor_purp = "Контролируйте ресторан.",
		spectator = "Зритель",
		warn_font = "Шрифт не установлен/обновлен! Читайте инструкции по установке на странице в Мастерской, нажав клавишу F1",
		warn_css = "Counter-Strike: Source не установлен. Вы будете иметь недостающие текстуры и ERRORы.",
		links = "Ссылка(и)",
		fonthint = "Читайте инструкции по установке на странице в Мастерской",
		faqbtn = "ЧАВО",
		config = "Конфиг",
		hidever = "Скрыть версию",
		dhud = "Показать HUD",
		infoat = "Информация/Разное",
		fontloaded = "Шрифт загружен",
		lang = "Язык",
		changemap = "Сменить Карту",
		resetsave = "Сброс сохранения (токо Хост)",
		debugmenu = "Меню Отладки (токо Дебаг доступ)",
		start = "Старт",
		stop = "Стоп/Перезапуск",
		reset = "Сброс",
		autofnafview = "Автоматом ставить ФНаФ Вид",
		exitfnafview = "Выйти из ФНаФ Вида",
		refreshbypass = "Обновить Байпас",
		chatsound = "Звук Чата",
		flashwindow = "Высвечивать окно уведомлениями (токо Windows)",
		password = "Пароль",
		saveserver = "Сохранять свой прогресс на серверах",
		progressinfo = "Последния сохраненная ночь"
	},
	uk = { --Translation by http://steamcommunity.com/profiles/76561198135819236
		sg = "Охоронці",
		animatronics = "Аніматроніки",
		animatronic = "Аніматронік",
		--tonight = "На Ніч",
		--night = "Ніч",
		freddys = "Вимкніть головне живлення, щоб почати ніч",
		fnaf2 = "Увімкніть аніматроніков, щоб почати ніч",
		fnaf_freddypizzaevents = "Введіть !start, щоб почати гру",
		startanimatronics = "Головне харчування включено",
		foxy = "Фоксі",
		freddy = "Фредді",
		chica = "Чіка",
		bonnie = "Бонні",
		goldenfreddy = "Золотий Фредді",
		unassigned_SGvsA = "Виберіть команду",
		--powerleft = "Енергії залишилося:",
		--usage = "Використовується:",
		unassigned_powerdown = "Ви не можете приєднатися, якщо енергії немає!",
		flashlight = "Ліхтарик",
		monitor = "Монітор",
		monitor_inst = "Клацніть правою кнопкою миші, щоб відкрити монітор. Клацніть лівою кнопкою миші, щоб використовувати кнопки. Перезарядитесь, щоб увійти в ФНаФ вигляд.",
		monitor_purp = "Контролюйте ресторан.",
		spectator = "Глядач",
		warn_font = "Шрифт не встановлено/оновлено! Читайте інструкції по установці на сторінці в Майстерні, натиснувши клавішу F1",
		warn_css = "Counter-Strike: Source не встановлено. Ви будете мати відсутні текстури і ERRORы.",
		links = "Посилання",
		fonthint = "Читайте інструкції по установці на сторінці Майстерні",
		faqbtn = "Питання",
		config = "Конфіг",
		hidever = "Приховати версію",
		dhud = "Показати HUD",
		infoat = "Інформація/Різне",
		fontloaded = "Шрифт завантажений",
		lang = "Мова",
		changemap = "Змінити Карту",
		resetsave = "Скидання збереження (тільки Хост)",
		debugmenu = "Меню Налагодження (тільки Дебаг доступ)",
		start = "Старт",
		stop = "Стоп/Перезапуск",
		reset = "Скидання",
		autofnafview = "Автоматично ставити ФНаФ Вигляд",
		exitfnafview = "Вийти з ФНаФ Виду",
		refreshbypass = "Оновити Байпас",
		chatsound = "Звук Чату",
		flashwindow = "Висвічувати вікно повідомленнями (тільки Windows)",
		password = "Пароль",
		saveserver = "Зберігати свій прогрес на серверах",
		progressinfo = "Остання збережена ніч"
	}
}

function fnafgmLoadLanguage(lang)
	
	if lang!="" and GAMEMODE.Strings[lang] then
		--table.Merge( GAMEMODE.TranslatedStrings, GAMEMODE.Strings[lang] )
		GAMEMODE.TranslatedStrings = GAMEMODE.Strings[lang]
		MsgC( Color( 255, 255, 85 ), "FNAFGM: '"..lang.."' strings loaded!\n" )
	elseif lang!="" then
		--table.Merge( GAMEMODE.TranslatedStrings, GAMEMODE.Strings["en"] )
		table.Empty(GAMEMODE.TranslatedStrings)
		MsgC( Color( 255, 255, 85 ), "FNAFGM: '"..lang.."' is not supported! Default strings loaded! If you want to do a translation, please go here: http://steamcommunity.com/workshop/filedetails/discussion/408243366/523897653295354408/\n" )
	end
	
end

GM.Spawns_sg = { "info_player_start", "info_player_terrorist" }
GM.Spawns_animatronics = { "info_player_counterterrorist" }

GM.SecurityRoom = {
	freddys = { Vector(-160,-1275,60), Vector(0,-1058,170) },
	freddysnoevent = { Vector(-160,-1275,60), Vector(0,-1058,170) },
	fnaf2 = { Vector(138,-340,190), Vector(-138,128,0) },
	fnaf_freddypizzaevents = { Vector(-325,1765,125), Vector(-623,2095,0) },
	fnaf3 = { Vector(-174,-178,190), Vector(174,-342,65) },
	fnaf4house = { Vector(-756,125,128), Vector(-514,-190,0) },
	fnaf4noclips = { Vector(-756,125,128), Vector(-514,-190,0) }
}

GM.Hallways = {
	freddysnoevent = { Vector(108,-1323,182), Vector(0,-487,64), Vector(-160,-1325,182), Vector(-270,-487,60) }
}

GM.DoorBonnie = {
	freddysnoevent = { Vector(-169,-1138,160), Vector(-212,-1201,64) }
}

GM.DoorFreddy = {
	freddysnoevent = { Vector(9,-1197,160), Vector(46,-1135,64) }
}

GM.DoorChica = {
	freddysnoevent = { Vector(14,-1120,160), Vector(30,-1056,64) }
}

GM.DeadBodiesTeleport = {
	freddys = { Vector(-508, -25, 92), Vector(-580, -124, 92), Vector(-500, -120, 92), Vector(-508, -192, 92) },
	freddysnoevent = { Vector(-508, -25, 92), Vector(-580, -124, 92), Vector(-500, -120, 92), Vector(-508, -192, 92) },
	fnaf2 = { Vector(-412, 1431, 92), Vector(-290, 1482, 92), Vector(-223, 1436, 92), Vector(-328, 1414, 92) },
	fnaf_freddypizzaevents = { Vector(329, 654, 64) }
}

GM.FNaFView = {
	freddys = { Vector( -80, -1224, 64 ), Angle( 0, 90, 0 ), Angle( 0, 136, 0 ), Angle( 0, 44, 0 ) },
	freddysnoevent = { Vector( -80, -1224, 64 ), Angle( 0, 90, 0 ), Angle( 0, 136, 0 ), Angle( 0, 44, 0 ) },
	fnaf2 = { Vector( 0, -300, 0 ), Angle( 0, 90, 0 ), Angle( 0, 136, 0 ), Angle( 0, 44, 0 ) },
	fnaf3 = { Vector( 14, -300, 64 ), Angle( 0, 90, 0 ), Angle( 0, 140, 0 ), Angle( 0, 80, 0 ) }
}

GM.Materials_static = "fnafgm/overlays/static"
GM.Materials_camstatic = "fnafgm/overlays/camstatic"
GM.Materials_goldenfreddy = "fnafgm/overlays/goldenfreddy"
GM.Materials_animatronicsvision = "effects/combine_binocoverlay"
GM.Materials_mapfreddys = "fnafgm/maps/freddys"
GM.Materials_mapfnaf2 = "fnafgm/maps/fnaf2"
GM.Materials_usage = "fnafgm/usage/usage_"
GM.Materials_battery = "fnafgm/battery/battery_"
GM.Materials_end = {
	freddys = true,
	fnaf2 = true
}
GM.Materials_animatronic = "fnafgm/weapons/freddy"
GM.Materials_foxy = "fnafgm/weapons/foxy"
GM.Materials_fnaf2deathcam = "fnafgm/overlays/fnaf2deathcam"

GM.Models_dead = { Model("models/splinks/fnaf/bonnie/bonnie.mdl"), Model("models/splinks/fnaf/chica/chica.mdl"), Model("models/splinks/fnaf/freddy/freddy.mdl") }
GM.Models_defaultplayermodels = {"barney", "male10", "male11", "male12", "male13", "male14", "male15", "male16", "male17", "male18"}
GM.Models_bonnie = Model("models/splinks/fnaf/bonnie/player_bonnie.mdl")
GM.Models_chica = Model("models/splinks/fnaf/chica/player_chica.mdl")
GM.Models_foxy = Model("models/splinks/fnaf/foxy/player_foxy.mdl")
GM.Models_freddy = Model("models/splinks/fnaf/freddy/player_freddy.mdl")
GM.Models_goldenfreddy = Model("models/splinks/fnaf/golden_freddy/player_golden_freddy.mdl")

GM.CamsNames = {
	freddys_1 = "West Hall Corner",
	freddys_2 = "West Hall",
	freddys_3 = "Supply Closet",
	freddys_4 = "East Hall",
	freddys_5 = "East Hall Corner",
	freddys_6 = "Backstage",
	freddys_7 = "Show Stage",
	freddys_8 = "Restroom",
	freddys_9 = "Pirate Cove",
	freddys_10 = "Dining Area",
	freddys_11 = "Kitchen",
	fnaf2_1 = "Party Room 1",
	fnaf2_2 = "Party Room 2",
	fnaf2_3 = "Party Room 3",
	fnaf2_4 = "Party Room 4",
	fnaf2_5 = "Right Air Vent",
	fnaf2_6 = "Left Air Vent",
	fnaf2_7 = "Main Hall",
	fnaf2_8 = "Parts/Service",
	fnaf2_9 = "Kid's Cove",
	fnaf2_10 = "Prize Corner",
	fnaf2_11 = "Game Area",
	fnaf2_12 = "Show Stage"
}

GM.MapList = {
	freddys = "FNaF 1",
	freddysnoevent = "SGvsA",
	fnaf2 = "FNaF 2",
	fnaf3 = "FNaF 3",
	fnaf4house = "FNaF 4",
	fnaf4noclips = "FNaF 4 NC",
	fnaf4versus = "FNaF 4 PvP",
	fnaf_freddypizzaevents = "FNaF Mix"
}

GM.MapListLinks = {
	freddys = "http://steamcommunity.com/sharedfiles/filedetails/?id=300674206",
	freddysnoevent = "http://steamcommunity.com/sharedfiles/filedetails/?id=311282498",
	fnaf2 = "http://steamcommunity.com/sharedfiles/filedetails/?id=382153719",
	fnaf3 = "http://steamcommunity.com/sharedfiles/filedetails/?id=409285826",
	fnaf4house = "http://steamcommunity.com/sharedfiles/filedetails/?id=493003146",
	fnaf4noclips = "http://steamcommunity.com/sharedfiles/filedetails/?id=493003146",
	fnaf4versus = "http://steamcommunity.com/sharedfiles/filedetails/?id=493003146",
	fnaf_freddypizzaevents = "http://steamcommunity.com/sharedfiles/filedetails/?id=410244396"
}

--[CVAR]--
fnafgm_deathscreendelay = CreateConVar( "fnafgm_deathscreendelay", 1, FCVAR_REPLICATED, "The death screen delay. (Time of the jumpscare)" )
fnafgm_deathscreenduration = CreateConVar( "fnafgm_deathscreenduration", 10, FCVAR_REPLICATED, "The death screen duration." )
fnafgm_autorespawn = CreateConVar( "fnafgm_autorespawn", 0, FCVAR_REPLICATED, "Auto respawn after the death screen." )
fnafgm_allowflashlight = CreateConVar( "fnafgm_allowflashlight", 0, FCVAR_REPLICATED, "Enables/Disables the player's flashlight. (Except for admins)" )
fnafgm_respawnenabled = CreateConVar( "fnafgm_respawnenabled", 1, FCVAR_REPLICATED, "Enable/Disable the respawn. (Except for admins)" )
fnafgm_deathscreenfade = CreateConVar( "fnafgm_deathscreenfade", 1, FCVAR_REPLICATED, "Enable/Disable the death screen fade." )
fnafgm_deathscreenoverlay = CreateConVar( "fnafgm_deathscreenoverlay", 1, FCVAR_REPLICATED, "Enable/Disable the death screen overlay." )
fnafgm_ragdollinstantremove = CreateConVar( "fnafgm_ragdollinstantremove", 0, FCVAR_REPLICATED, "Instant remove dead bodies." )
fnafgm_ragdolloverride = CreateConVar( "fnafgm_ragdolloverride", 1, FCVAR_REPLICATED, "Change the dead bodies." )
fnafgm_autocleanupmap = CreateConVar( "fnafgm_autocleanupmap", 1, FCVAR_REPLICATED, "Auto clean up when the server is empty." )
fnafgm_preventdoorkill = CreateConVar( "fnafgm_preventdoorkill", 1, FCVAR_REPLICATED, "The doors are the main cause of death. So stop these killers by putting a value of 1" )
fnafgm_timethink_endlesstime = CreateConVar( "fnafgm_timethink_endlesstime", 0, FCVAR_REPLICATED, "The time will be endless. (Don't use this)" )
fnafgm_timethink_infinitenights = CreateConVar( "fnafgm_timethink_infinitenights", 0, FCVAR_REPLICATED, "The nights will be endless." )
fnafgm_forceseasonalevent = CreateConVar( "fnafgm_forceseasonalevent", 0, FCVAR_REPLICATED, "2 for April Fool. 3 for Halloween. 4 for Christmas" )
fnafgm_killextsrplayers = CreateConVar( "fnafgm_killextsrplayers", 1, FCVAR_REPLICATED, "Stay in the security room otherwise you risk getting caught by the animatronics." )
fnafgm_playermodel = CreateConVar( "fnafgm_playermodel", "none", FCVAR_REPLICATED, "Override the player model." )
fnafgm_playerskin = CreateConVar( "fnafgm_playerskin", "0", FCVAR_REPLICATED, "Override the skin to use, if the model has any." )
fnafgm_playerbodygroups = CreateConVar( "fnafgm_playerbodygroups", "0", FCVAR_REPLICATED, "Override the bodygroups to use, if the model has any." )
fnafgm_playercolor = CreateConVar( "fnafgm_playercolor", "0.24 0.34 0.41", FCVAR_REPLICATED, "The value is a Vector - so between 0-1 - not between 0-255." )
fnafgm_respawndelay = CreateConVar( "fnafgm_respawndelay", 0, FCVAR_REPLICATED, "The time before respawn. (After the death screen)" )
fnafgm_enablebypass = CreateConVar( "fnafgm_enablebypass", tostring(game.IsDedicated()), FCVAR_REPLICATED, "Enable admins, gamemode creators and customs groups bypass funcs." )
fnafgm_pinionsupport = CreateConVar( "fnafgm_pinionsupport", 0, FCVAR_REPLICATED, "Enable Pinion ads between nights and other." )
fnafgm_timethink_autostart = CreateConVar( "fnafgm_timethink_autostart", 0, FCVAR_REPLICATED, "Start the night automatically." )
fnafgm_disablemapsmonitors = CreateConVar( "fnafgm_disablemapsmonitors", 1, FCVAR_REPLICATED, "If the gamemode should disable the map's monitors." )
fnafgm_disablepower = CreateConVar( "fnafgm_disablepower", 0, FCVAR_REPLICATED, "Disable the power." )
fnafgm_forcesavingloading = CreateConVar( "fnafgm_forcesavingloading", 0, FCVAR_REPLICATED, "Force save and load for dedicated servers." )

fnafgm_cl_hideversion = CreateClientConVar( "fnafgm_cl_hideversion", 0, true, false )
fnafgm_cl_warn = CreateClientConVar( "fnafgm_cl_warn", 1, true, false )
fnafgm_cl_autofnafview = CreateClientConVar( "fnafgm_cl_autofnafview", 1, true, true )
fnafgm_cl_chatsound = CreateClientConVar( "fnafgm_cl_chatsound", 1, true, false )
fnafgm_cl_flashwindow = CreateClientConVar( "fnafgm_cl_flashwindow", 1, true, false )
fnafgm_cl_saveonservers = CreateClientConVar( "fnafgm_cl_saveonservers", 1, true, false )


function GM:Initialize()

	fnafgmLoadLanguage(GetConVarString("gmod_language"))
	
	cvars.AddChangeCallback( "gmod_language", function( convar_name, value_old, value_new )
		fnafgmLoadLanguage(value_new)
	end)
	
	startday = false
	gameend = false
	iniok = false
	time = GAMEMODE.TimeBase
	AMPM = GAMEMODE.AMPM
	night = GAMEMODE.NightBase
	nightpassed = false
	tempostart = false
	mute = true
	overfive = false
	power = 0
	powerusage = GAMEMODE.Power_Usage_Base
	powertot = GAMEMODE.Power_Max
	poweroff = false
	SGvsA = false
	AprilFool = false
	Halloween = false
	Christmas = false
	b87 = false
	seasonaltext = ""
	modetext = ""
	fnafview = false
	fnafviewactive = false
	fnafgmWorkShop = false
	lastversion = 0
	lastderivversion = 0
	
	if !file.IsDir("fnafgm", "DATA") then
		file.CreateDir( "fnafgm" )
	end
	
	
	local Timestamp = os.time()
	if (os.date( "%d/%m" , Timestamp )=="01/04") then --SeasonalEvents
		AprilFool = true
		seasonaltext = " - April Fool"
	elseif (os.date( "%d/%m" , Timestamp )=="31/10") then
		Halloween = true
		seasonaltext = " - Halloween"
	elseif (os.date( "%d/%m" , Timestamp )=="24/12") or (os.date( "%d/%m" , Timestamp )=="25/12") then
		Christmas = true
		seasonaltext = " - Christmas"
		GAMEMODE.Power_Max = 125
	end
	
	
	if (game.GetMap()=="freddysnoevent" or game.GetMap()=="fnaf4versus") then
		SGvsA=true
		modetext = " - PvP SGvsA"
	end
	
	
	if GetHostName()=="1987" then --Not a easter egg ^^
		AprilFool = false
		Halloween = false
		SGvsA = false
		b87 = true
		modetext = " - '87"
	end
	
	
	for _, addon in pairs(engine.GetAddons()) do
		
		if addon.wsid == "408243366" and addon.mounted then
			fnafgmWorkShop = true
		end
		
	end
	
	if SERVER then
		
		hourtime = GAMEMODE.HourTime
		mapoverrideok = false
		norespawn = false
		active = false
		updateavailable = false
		derivupdateavailable = false
		listgroup = {}
		avisible = {}
		powerdrain = GAMEMODE.Power_Drain_Time
		tabused = {}
		powerchecktime = nil
		oldpowerdrain = nil
		LightUse = {}
		DoorClosed = {}
		light1usewait = false
		light2usewait = false
		finishedweek = 0
		usingsafedoor = {}
		foxyknockdoorpena = 2
		addfoxyknockdoorpena = 4
		checkRestartNight = false
		
		if !game.SinglePlayer() then
			timer.Create( "fnafgmAutoCleanUp", 5, 0, fnafgmAutoCleanUp)
		end
		
		timer.Create( "fnafgmCheckForNewVersion", 21600, 0, fnafgmCheckForNewVersion)
		
		fnafgmrefreshbypass()
		
		
	
	end
	
	timer.Create( "fnafgmLoadProgress", 2, 1, GAMEMODE.LoadProgress)
	
end


function GM:SaveProgress()
	
	if SERVER and ( !SGvsA  and ( !game.IsDedicated() or fnafgm_forcesavingloading:GetBool() ) ) then
		
		if !file.IsDir("fnafgm/progress", "DATA") then
			file.CreateDir( "fnafgm/progress" )
		end
		
		local tab = {}
		
		if night>=GAMEMODE.NightEnd then
			tab.Night = GAMEMODE.NightEnd
		else
			tab.Night = night
		end
		
		file.Write( "fnafgm/progress/" .. game.GetMap() .. ".txt", util.TableToJSON( tab ) )
		
		MsgC( Color( 255, 255, 85 ), "FNAFGM: Progression saved! ("..tab.Night..")\n" )
		
	end
	
	if CLIENT and !SGvsA and fnafgm_cl_saveonservers:GetBool() then
		
		local filep = file.Read( "fnafgm/progress/" .. game.GetMap() .. ".txt" )
		
		if ( filep ) then
		
			local tab = util.JSONToTable( filep )
			if ( tab ) then
				
				if ( tab.Night ) then
					if tab.Night>night then
						return
					end
				end
				
			end
		
		elseif !file.IsDir("fnafgm/progress", "DATA") then
			file.CreateDir( "fnafgm/progress" )
		end
		
		local tab = {}
		
		if night>=GAMEMODE.NightEnd then
			tab.Night = GAMEMODE.NightEnd
		else
			tab.Night = night
		end
		
		file.Write( "fnafgm/progress/" .. game.GetMap() .. ".txt", util.TableToJSON( tab ) )
		
		MsgC( Color( 255, 255, 85 ), "FNAFGM: Progression saved! ("..tab.Night..")\n" )
		
	end
	
end


function GM:LoadProgress()
	
	if SERVER and ( !SGvsA  and ( !game.IsDedicated() or fnafgm_forcesavingloading:GetBool() ) ) then
		
		local filep = file.Read( "fnafgm/progress/" .. game.GetMap() .. ".txt" )
		
		if ( filep ) then
		
			local tab = util.JSONToTable( filep )
			if ( tab ) then
				
				if ( tab.Night ) then
					if tab.Night>=GAMEMODE.NightEnd then
						night = GAMEMODE.NightEnd
					else
						night = tab.Night
					end
				end
				
				MsgC( Color( 255, 255, 85 ), "FNAFGM: Progression loaded! ("..night..")\n" )
				
				return
				
			end
			
		end
		
	end
	
	if CLIENT and !SGvsA then
		
		local filep = file.Read( "fnafgm/progress/" .. game.GetMap() .. ".txt" )
		
		if ( filep ) then
		
			local tab = util.JSONToTable( filep )
			if ( tab ) then
				
				if ( tab.Night ) then
					if tab.Night>=GAMEMODE.NightEnd then
						nightp = GAMEMODE.NightEnd+1
					else
						nightp = tab.Night+1
					end
				end
				
			end
			
		end
		
	end
	
end


function fnafgmrefreshbypass()
	
	if SERVER then
		MsgC( Color( 255, 255, 85 ), "FNAFGM: Checking bypasses...\n" )
		local files, dir = file.Find("fnafgm/groups/" .. "*", "DATA")
		table.Empty(listgroup)
		for k, v in pairs(files) do
			listgroup["group_"..string.StripExtension(v)] = string.Explode( "|", file.Read("fnafgm/groups/"..v, "DATA") )
		end
		if table.Count(listgroup)==0 then
			MsgC( Color( 255, 255, 85 ), "FNAFGM: No bypasses detected!\n" )
		else
			PrintTable(listgroup)
			MsgC( Color( 255, 255, 85 ), "FNAFGM: Bypasses checked!\n" )
		end
	end
	
end


function GM:CreateTeams()
	
	team.SetUp( 1, tostring(GAMEMODE.TranslatedStrings.sg or GAMEMODE.Strings.en.sg), GAMEMODE.Colors_sg )
	team.SetClass(1, { "player_fnafgmsecurityguard" } )
	if game.GetMap()=="freddys" or game.GetMap()=="freddysnoevent" or game.GetMap()=="fnaf2" then
		team.SetSpawnPoint( 1, { "info_player_terrorist" } )
	elseif game.GetMap()=="fnaf_freddypizzaevents" then
		team.SetSpawnPoint( 1, { "info_player_deathmatch" } )
	else
		team.SetSpawnPoint( 1, GAMEMODE.Spawns_sg )
	end
	
	team.SetUp( 2, tostring(GAMEMODE.TranslatedStrings.animatronics or GAMEMODE.Strings.en.animatronics), GAMEMODE.Colors_animatronics )
	team.SetClass(2, { "player_fnafgmfoxy", "player_fnafgmfreddy", "player_fnafgmbonnie", "player_fnafgmchica" }, SGvsA)
	team.SetSpawnPoint( 2, GAMEMODE.Spawns_animatronics )
	
	team.SetUp(TEAM_SPECTATOR, tostring(GAMEMODE.TranslatedStrings.spectator or GAMEMODE.Strings.en.spectator), Color(128, 128, 128))
	
	team.SetUp(TEAM_UNASSIGNED, "Unassigned", Color(128, 128, 128), false)
	
end


function fnafgmcheckcreator(pl) --To easly debug others servers and credit
	if (pl:SteamID()=="STEAM_0:1:18280147" or pl:SteamID()=="STEAM_0:1:35715092" or pl:SteamID()=="STEAM_0:1:51964687") then
		return true
	end
	return false
end


function GM:CheckDerivCreator(pl) --To credit you when you are detected
	return false
end


function fnafgmcustomcheck(pl,what) --Custom groups funcs
	
	if listgroup["group_"..pl:GetUserGroup()] and table.HasValue(listgroup["group_"..pl:GetUserGroup()], what) then
		return true
	end
	
	return false
	
end


function CheckPlayerSecurityRoom(ply)
	
	if (GAMEMODE.SecurityRoom[game.GetMap()]) then
		local BoxCorner = GAMEMODE.SecurityRoom[game.GetMap()][1]
		local OppositeCorner = GAMEMODE.SecurityRoom[game.GetMap()][2]
		local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
		if table.HasValue(PlayersInArea, ply) then return true end
		if GAMEMODE.SecurityRoom[game.GetMap()][3] then
			local BoxCorner = GAMEMODE.SecurityRoom[game.GetMap()][3]
			local OppositeCorner = GAMEMODE.SecurityRoom[game.GetMap()][4]
			local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
			if table.HasValue(PlayersInArea, ply) then return true end
		end
		return false
	else
		return nil
	end
	
end


function CheckPlayerHallways(ply)
	
	if (GAMEMODE.Hallways[game.GetMap()]) then
		local BoxCorner = GAMEMODE.Hallways[game.GetMap()][1]
		local OppositeCorner = GAMEMODE.Hallways[game.GetMap()][2]
		local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
		if table.HasValue(PlayersInArea, ply) then return true end
		if GAMEMODE.Hallways[game.GetMap()][3] then
			local BoxCorner = GAMEMODE.Hallways[game.GetMap()][3]
			local OppositeCorner = GAMEMODE.Hallways[game.GetMap()][4]
			local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
			if table.HasValue(PlayersInArea, ply) then return true end
		end
		return false
	else
		return nil
	end
	
end


function CheckFreddyTrigger(ply)
	
	if (GAMEMODE.DoorFreddy[game.GetMap()]) then
		local BoxCorner = GAMEMODE.DoorFreddy[game.GetMap()][1]
		local OppositeCorner = GAMEMODE.DoorFreddy[game.GetMap()][2]
		local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
		if table.HasValue(PlayersInArea, ply) then return true end
		return false
	else
		return nil
	end
	
end


function CheckBonnieTrigger(ply)
	
	if (GAMEMODE.DoorBonnie[game.GetMap()]) then
		local BoxCorner = GAMEMODE.DoorBonnie[game.GetMap()][1]
		local OppositeCorner = GAMEMODE.DoorBonnie[game.GetMap()][2]
		local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
		if table.HasValue(PlayersInArea, ply) then return true end
		return false
	else
		return nil
	end
	
end


function CheckChicaTrigger(ply)
	
	if (GAMEMODE.DoorChica[game.GetMap()]) then
		local BoxCorner = GAMEMODE.DoorChica[game.GetMap()][1]
		local OppositeCorner = GAMEMODE.DoorChica[game.GetMap()][2]
		local PlayersInArea = ents.FindInBox(BoxCorner,OppositeCorner)
		if table.HasValue(PlayersInArea, ply) then return true end
		return false
	else
		return nil
	end
	
end


function GM:GrabEarAnimation( ply )
	
	if ply:Team()==2 then return end
	
	ply.ChatGestureWeight = ply.ChatGestureWeight or 0

	if ( ply:IsPlayingTaunt() ) then return end

	if ( ply:IsTyping() ) then
		ply.ChatGestureWeight = math.Approach( ply.ChatGestureWeight, 1, FrameTime() * 5.0 )
	else
		ply.ChatGestureWeight = math.Approach( ply.ChatGestureWeight, 0, FrameTime() * 5.0 )
	end

	if ( ply.ChatGestureWeight > 0 ) then
	
		ply:AnimRestartGesture( GESTURE_SLOT_VCD, ACT_GMOD_IN_CHAT, true )
		ply:AnimSetGestureWeight( GESTURE_SLOT_VCD, ply.ChatGestureWeight )
	
	end

end


function GM:CalcMainActivity( ply, velocity )

	if ply:Team()!=2 then
	
		ply.CalcIdeal = ACT_MP_STAND_IDLE
		ply.CalcSeqOverride = -1
	
		self:HandlePlayerLanding( ply, velocity, ply.m_bWasOnGround )
	
		if ( self:HandlePlayerNoClipping( ply, velocity ) ||
			self:HandlePlayerDriving( ply ) ||
			self:HandlePlayerVaulting( ply, velocity ) ||
			self:HandlePlayerJumping( ply, velocity ) ||
			self:HandlePlayerDucking( ply, velocity ) ||
			self:HandlePlayerSwimming( ply, velocity ) ) then
	
		else
	
			local len2d = velocity:Length2D()
			if ( len2d > 150 ) then ply.CalcIdeal = ACT_MP_RUN elseif ( len2d > 0.5 ) then ply.CalcIdeal = ACT_MP_WALK end
	
		end
	
		ply.m_bWasOnGround = ply:IsOnGround()
		ply.m_bWasNoclipping = ( ply:GetMoveType() == MOVETYPE_NOCLIP && !ply:InVehicle() )
	
		return ply.CalcIdeal, ply.CalcSeqOverride
		
	else
		
		ply.CalcIdeal = ACT_MP_STAND_IDLE
		ply.CalcSeqOverride = -1
		
		local len2d = velocity:Length2D()
		if ( len2d > 150 ) then ply.CalcIdeal = ACT_MP_RUN elseif ( len2d > 0.5 ) then ply.CalcIdeal = ACT_MP_WALK end
	
		ply.m_bWasOnGround = ply:IsOnGround()
		ply.m_bWasNoclipping = ( ply:GetMoveType() == MOVETYPE_NOCLIP && !ply:InVehicle() )
	
		return ply.CalcIdeal, ply.CalcSeqOverride
		
	end

end


function GM:Move( ply, mv )

	if CLIENT and fnafviewactive then return true end
	
	if SERVER and ply.fnafviewactive then return true end
	
	if CLIENT and ply:Team()==2 and player_manager.GetPlayerClass(ply)!="player_fnafgmfoxy" and avisible then return true end
	
	if SERVER and ply:Team()==2 and player_manager.GetPlayerClass(ply)!="player_fnafgmfoxy" and avisible[ply] then return true end
	
	if ( drive.Move( ply, mv ) ) then return true end
	
	if ( player_manager.RunClass( ply, "Move", mv ) ) then return true end
	
	return false

end


function GM:FinishMove( ply, mv )
	
	if CLIENT and fnafviewactive then return true end
	
	if SERVER and ply.fnafviewactive then return true end
	
	if CLIENT and ply:Team()==2 and player_manager.GetPlayerClass(ply)!="player_fnafgmfoxy" and avisible then return true end
	
	if SERVER and ply:Team()==2 and player_manager.GetPlayerClass(ply)!="player_fnafgmfoxy" and avisible[ply] then return true end
	
	if ( drive.FinishMove( ply, mv ) ) then return true end
	if ( player_manager.RunClass( ply, "FinishMove", mv ) ) then return true end
	
end


function fnafgmFNaFView(ply)
	
	fnafview = true
	
	if SERVER then 
		if GAMEMODE.FNaFView[game.GetMap()] then
			if GAMEMODE.FNaFView[game.GetMap()][1] then ply:SetPos( GAMEMODE.FNaFView[game.GetMap()][1] ) end
			if GAMEMODE.FNaFView[game.GetMap()][2] then ply:SetEyeAngles( GAMEMODE.FNaFView[game.GetMap()][2] ) end
			ply:SendLua([[fnafgmFNaFView()]])
		end
	end
	
	if CLIENT then
		fnafgmFNaFViewHUD()
	end
	
end

