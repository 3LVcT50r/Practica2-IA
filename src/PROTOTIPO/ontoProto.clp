;;; ---------------------------------------------------------
;;; ontoProto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontoProto.ttl
;;; :Date 06/12/2023 17:42:37

(defclass Caracteristica
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tieneNovela
        (type INSTANCE)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Autor
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
    (multislot haEscrito
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Demografia
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Dificultad
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Genero
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tema
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Popularidad
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tamano
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Lector
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot haLeido
        (type INSTANCE)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot sexo
        (type INTEGER)
        (create-accessor read-write))
    (slot freq
        (type INTEGER)
        (create-accessor read-write))
    (slot lugar
        (type INTEGER)
        (create-accessor read-write))
)

(defclass NovelaFiccion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tieneCaracteristica
        (type INSTANCE)
        (create-accessor read-write))
    (slot titulo
        (type STRING)
        (create-accessor read-write))
    (slot valoracion
        (type INTEGER)
        (create-accessor read-write)
    )
    (slot puntuacion
        (type INTEGER)
        (create-accessor read-write)
    )
)

(definstances instances

    ([autor0] of Autor
        (haEscrito  [libro383] )
        (nombre  "Rhoda Christensen")
    )

    ([autor1] of Autor
        (haEscrito  [libro5] [libro141] [libro180] [libro263] [libro281] [libro297] [libro313] [libro377] )
        (nombre  "Hung Wilcox")
    )

    ([autor2] of Autor
        (haEscrito  [libro41] [libro304] [libro315] [libro351] )
        (nombre  "Rigoberto Mccall")
    )

    ([autor3] of Autor
        (haEscrito  [libro190] [libro339] )
        (nombre  "Saundra Preston")
    )

    ([autor4] of Autor
        (haEscrito  [libro283] [libro362] )
        (nombre  "Adela Mcneil")
    )

    ([autor5] of Autor
        (haEscrito  [libro50] [libro86] [libro179] [libro221] [libro268] [libro323] )
        (nombre  "Owen Chung")
    )

    ([autor6] of Autor
        (haEscrito  [libro110] [libro287] )
        (nombre  "Lacey Bradley")
    )

    ([autor7] of Autor
        (haEscrito  [libro293] [libro307] [libro310] )
        (nombre  "Ora Delgado")
    )

    ([autor8] of Autor
        (haEscrito  [libro57] [libro176] [libro188] [libro321] )
        (nombre  "Brandy Stanton")
    )

    ([autor9] of Autor
        (haEscrito  [libro240] [libro360] [libro363] [libro368] )
        (nombre  "Alvin Diaz")
    )

    ([autor11] of Autor
        (haEscrito  [libro116] [libro131] [libro265] [libro270] [libro388] )
        (nombre  "Cecilia Macias")
    )

    ([autor12] of Autor
        (haEscrito  [libro92] [libro380] )
        (nombre  "Pedro Weeks")
    )

    ([autor13] of Autor
        (haEscrito  [libro38] [libro136] [libro280] [libro320] [libro327] )
        (nombre  "Tanner Benitez")
    )

    ([autor14] of Autor
        (haEscrito  [libro123] [libro185] [libro233] [libro236] [libro261] [libro355] [libro358] )
        (nombre  "Donny Hardin")
    )

    ([autor15] of Autor
        (haEscrito  [libro32] [libro42] [libro59] [libro102] [libro326] )
        (nombre  "Deena Knight")
    )

    ([autor16] of Autor
        (haEscrito  [libro29] [libro61] [libro95] [libro248] [libro341] )
        (nombre  "Hiram Savage")
    )

    ([autor17] of Autor
        (haEscrito  [libro97] [libro306] [libro324] [libro346] [libro365] )
        (nombre  "Matilda Pollard")
    )

    ([autor18] of Autor
        (haEscrito  [libro99] )
        (nombre  "Araceli Buckley")
    )

    ([autor19] of Autor
        (haEscrito  [libro219] [libro292] )
        (nombre  "Ila Melendez")
    )

    ([autor20] of Autor
        (haEscrito  [libro17] [libro245] [libro269] [libro349] [libro390] )
        (nombre  "Geraldo Faulkner")
    )

    ([autor21] of Autor
        (haEscrito  [libro106] [libro138] [libro181] [libro241] [libro309] [libro328] )
        (nombre  "Eldridge Allison")
    )

    ([autor22] of Autor
        (haEscrito  [libro19] [libro75] [libro108] [libro162] [libro317] [libro399] )
        (nombre  "Frankie Walsh")
    )

    ([autor23] of Autor
        (haEscrito  [libro43] )
        (nombre  "Horacio Chan")
    )

    ([autor24] of Autor
        (haEscrito  [libro91] [libro98] [libro143] [libro187] [libro205] )
        (nombre  "Brittany Bauer")
    )

    ([autor25] of Autor
        (haEscrito  [libro53] [libro202] [libro226] [libro229] [libro259] [libro266] [libro347] )
        (nombre  "Shon Poole")
    )

    ([autor26] of Autor
        (haEscrito  [libro171] [libro289] [libro353] )
        (nombre  "Tabitha Mack")
    )

    ([autor27] of Autor
        (haEscrito  [libro174] [libro178] [libro329] )
        (nombre  "Manuel Munoz")
    )

    ([autor28] of Autor
        (haEscrito  [libro18] [libro111] [libro296] [libro367] [libro376] )
        (nombre  "Hollie West")
    )

    ([autor29] of Autor
        (haEscrito  [libro66] [libro119] [libro124] [libro164] [libro285] )
        (nombre  "Carol Callahan")
    )

    ([autor30] of Autor
        (haEscrito  [libro70] [libro85] [libro195] [libro200] [libro359] )
        (nombre  "Edmundo Cameron")
    )

    ([autor31] of Autor
        (haEscrito  [libro63] [libro79] [libro105] [libro218] [libro247] [libro256] )
        (nombre  "Amy Villa")
    )

    ([autor32] of Autor
        (haEscrito  [libro206] [libro257] )
        (nombre  "Jeanie Graham")
    )

    ([autor33] of Autor
        (haEscrito  [libro65] [libro273] [libro314] [libro397] )
        (nombre  "Antione Bell")
    )

    ([autor34] of Autor
        (haEscrito  [libro139] [libro155] [libro186] [libro382] )
        (nombre  "Von Lynn")
    )

    ([autor35] of Autor
        (haEscrito  [libro165] [libro172] [libro237] [libro301] )
        (nombre  "Heath Oliver")
    )

    ([autor36] of Autor
        (haEscrito  [libro150] [libro311] )
        (nombre  "Shaun Rubio")
    )

    ([autor37] of Autor
        (haEscrito  [libro37] [libro44] [libro72] [libro193] [libro276] )
        (nombre  "Amos Deleon")
    )

    ([autor38] of Autor
        (haEscrito  [libro197] [libro294] )
        (nombre  "Sid Massey")
    )

    ([autor39] of Autor
        (haEscrito  [libro203] [libro255] [libro379] [libro389] )
        (nombre  "Nicholas Huerta")
    )

    ([autor41] of Autor
        (haEscrito  [libro126] [libro291] [libro308] [libro374] )
        (nombre  "Rodrigo Holland")
    )

    ([autor42] of Autor
        (haEscrito  [libro16] [libro28] [libro100] [libro148] [libro212] [libro253] [libro335] )
        (nombre  "Terry Avery")
    )

    ([autor44] of Autor
        (haEscrito  [libro51] [libro208] [libro267] [libro271] )
        (nombre  "Isabella Dudley")
    )

    ([autor45] of Autor
        (haEscrito  [libro13] [libro48] [libro56] [libro350] [libro366] )
        (nombre  "Freda Estrada")
    )

    ([autor46] of Autor
        (haEscrito  [libro332] )
        (nombre  "Georgette Henson")
    )

    ([autor47] of Autor
        (haEscrito  [libro52] [libro262] [libro352] [libro364] )
        (nombre  "Lucinda Kirk")
    )

    ([autor48] of Autor
        (haEscrito  [libro11] [libro93] [libro147] [libro246] [libro260] [libro282] [libro395] )
        (nombre  "Wilson Ferrell")
    )

    ([autor49] of Autor
        (haEscrito  [libro15] [libro33] [libro69] [libro87] [libro210] [libro305] )
        (nombre  "Derek Leonard")
    )

    ([autor50] of Autor
        (haEscrito  [libro23] [libro83] [libro168] [libro386] )
        (nombre  "Meagan Gates")
    )

    ([autor51] of Autor
        (haEscrito  [libro127] [libro156] [libro214] )
        (nombre  "Damien Curry")
    )

    ([autor52] of Autor
        (haEscrito  [libro73] [libro244] [libro319] )
        (nombre  "Vonda Parks")
    )

    ([autor53] of Autor
        (haEscrito  [libro191] [libro361] )
        (nombre  "Ines Christensen")
    )

    ([autor54] of Autor
        (haEscrito  [libro9] [libro113] [libro125] [libro216] [libro220] )
        (nombre  "Kieth Thompson")
    )

    ([autor55] of Autor
        (haEscrito  [libro21] [libro154] [libro312] )
        (nombre  "Hattie Franklin")
    )

    ([autor56] of Autor
        (haEscrito  [libro12] [libro231] [libro279] [libro333] )
        (nombre  "Enoch Schultz")
    )

    ([autor57] of Autor
        (haEscrito  [libro36] [libro250] [libro300] )
        (nombre  "Maribel Jarvis")
    )

    ([autor58] of Autor
        (haEscrito  [libro298] [libro318] [libro343] )
        (nombre  "Guy Mclean")
    )

    ([autor59] of Autor
        (haEscrito  [libro322] [libro325] )
        (nombre  "Maxine Crawford")
    )

    ([autor60] of Autor
        (haEscrito  [libro146] [libro158] [libro182] [libro224] [libro252] [libro295] )
        (nombre  "Geraldine Mcpherson")
    )

    ([autor61] of Autor
        (haEscrito  [libro4] [libro64] [libro166] [libro251] [libro316] [libro387] )
        (nombre  "Nolan Abbott")
    )

    ([autor62] of Autor
        (haEscrito  [libro34] [libro118] [libro145] [libro232] [libro238] [libro277] [libro278] [libro357] )
        (nombre  "Warren Saunders")
    )

    ([autor63] of Autor
        (haEscrito  [libro10] [libro14] [libro39] [libro209] [libro254] )
        (nombre  "Joyce Novak")
    )

    ([autor64] of Autor
        (haEscrito  [libro8] [libro45] [libro80] [libro94] [libro140] [libro157] [libro160] [libro196] )
        (nombre  "Consuelo Odom")
    )

    ([autor65] of Autor
        (haEscrito  [libro133] [libro144] [libro398] )
        (nombre  "Russel Flores")
    )

    ([autor66] of Autor
        (haEscrito  [libro167] [libro284] )
        (nombre  "Tracy Hodge")
    )

    ([autor67] of Autor
        (haEscrito  [libro104] [libro109] [libro175] [libro302] )
        (nombre  "Hugh Mosley")
    )

    ([autor68] of Autor
        (haEscrito  [libro1] [libro137] [libro163] [libro227] [libro344] )
        (nombre  "Geoffrey Choi")
    )

    ([autor69] of Autor
        (haEscrito  [libro274] [libro354] )
        (nombre  "Jonah Nichols")
    )

    ([autor70] of Autor
        (haEscrito  [libro40] [libro192] [libro235] )
        (nombre  "Buster Bowers")
    )

    ([autor71] of Autor
        (haEscrito  [libro183] [libro223] [libro385] )
        (nombre  "Reuben Bradshaw")
    )

    ([autor72] of Autor
        (haEscrito  [libro24] [libro46] [libro130] [libro207] [libro228] [libro303] [libro330] [libro342] [libro372] )
        (nombre  "Sarah Livingston")
    )

    ([autor73] of Autor
        (haEscrito  [libro7] [libro242] [libro348] [libro375] )
        (nombre  "Natalia Owens")
    )

    ([autor74] of Autor
        (haEscrito  [libro31] [libro35] [libro81] [libro117] [libro120] [libro371] )
        (nombre  "Timothy Conrad")
    )

    ([autor75] of Autor
        (haEscrito  [libro88] [libro128] [libro222] [libro239] )
        (nombre  "Marissa Wall")
    )

    ([autor76] of Autor
        (haEscrito  [libro82] [libro275] )
        (nombre  "Samantha Steele")
    )

    ([autor77] of Autor
        (haEscrito  [libro22] [libro134] [libro151] [libro173] [libro177] [libro356] )
        (nombre  "Abram Coffey")
    )

    ([autor78] of Autor
        (haEscrito  [libro2] [libro26] [libro89] [libro101] [libro112] [libro264] )
        (nombre  "Kellie Lane")
    )

    ([autor79] of Autor
        (haEscrito  [libro77] [libro272] [libro290] [libro334] )
        (nombre  "Martina Walls")
    )

    ([autor80] of Autor
        (haEscrito  [libro62] [libro161] [libro199] [libro217] )
        (nombre  "Quinton Hutchinson")
    )

    ([autor81] of Autor
        (haEscrito  [libro60] [libro67] [libro169] [libro345] )
        (nombre  "Lessie Lloyd")
    )

    ([autor82] of Autor
        (haEscrito  [libro115] [libro249] )
        (nombre  "Barry Lam")
    )

    ([autor83] of Autor
        (haEscrito  [libro49] [libro68] [libro153] [libro338] [libro396] )
        (nombre  "Britney Woods")
    )

    ([autor84] of Autor
        (haEscrito  [libro54] [libro122] [libro391] )
        (nombre  "Emily Barr")
    )

    ([autor85] of Autor
        (haEscrito  [libro30] [libro71] [libro159] [libro213] [libro230] )
        (nombre  "Vickie Mcguire")
    )

    ([autor86] of Autor
        (haEscrito  [libro6] [libro84] [libro96] [libro189] [libro225] [libro288] [libro331] [libro336] [libro337] [libro369] )
        (nombre  "Clifton Rhodes")
    )

    ([autor87] of Autor
        (haEscrito  [libro55] [libro198] [libro201] [libro243] [libro370] )
        (nombre  "Deloris Yates")
    )

    ([autor88] of Autor
        (haEscrito  [libro0] [libro211] [libro381] [libro392] )
        (nombre  "Brandi Clark")
    )

    ([autor89] of Autor
        (haEscrito  [libro129] [libro204] )
        (nombre  "Felicia Gay")
    )

    ([autor90] of Autor
        (haEscrito  [libro132] [libro258] )
        (nombre  "Shelly Perkins")
    )

    ([autor91] of Autor
        (haEscrito  [libro47] [libro234] [libro340] [libro378] [libro394] )
        (nombre  "Liza Houston")
    )

    ([autor92] of Autor
        (haEscrito  [libro135] )
        (nombre  "Taylor Underwood")
    )

    ([autor93] of Autor
        (haEscrito  [libro142] [libro286] )
        (nombre  "Janine Huffman")
    )

    ([autor94] of Autor
        (haEscrito  [libro20] [libro76] [libro103] [libro384] )
        (nombre  "Joni Huff")
    )

    ([autor95] of Autor
        (haEscrito  [libro3] [libro152] [libro184] [libro299] [libro373] )
        (nombre  "Len Bush")
    )

    ([autor96] of Autor
        (haEscrito  [libro58] [libro90] [libro393] )
        (nombre  "Edmundo Beard")
    )

    ([autor97] of Autor
        (haEscrito  [libro25] [libro78] [libro107] [libro121] [libro215] )
        (nombre  "Marcos Spencer")
    )

    ([autor98] of Autor
        (haEscrito  [libro74] [libro170] )
        (nombre  "Lewis Welch")
    )

    ([autor99] of Autor
        (haEscrito  [libro27] [libro114] [libro149] [libro194] )
        (nombre  "Beulah Khan")
    )

     ([libro0] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Juvenil_femenina] [Accion] [CienciaFiccion] [Intermedia] [Militar] [Pirata] )
        (titulo  "Zombie Predator")
    )

    ([libro1] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Adulta_femenina] [Sobrenatural] [Drama] [Facil] [Supervivencia] [Pirata] )
        (titulo  "Hunting Chronicles")
    )

    ([libro2] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Juvenil_masculina] [Suspense] [Aventura] [Intermedia] [Superheroes] [Pirata] )
        (titulo  "Cloud Tales")
    )

    ([libro3] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Adulta_masculina] [Romance] [Terror] [Intermedia] [Mitologia] [Espacial] )
        (titulo  "Light Nightmare")
    )

    ([libro4] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Juvenil_masculina] [Misterio] [Fantasia] [Facil] [Superheroes] [Samurai] )
        (titulo  "Emergency Age")
    )

    ([libro5] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Infantil] [Accion] [Suspense] [Intermedia] [Viajes_en_el_tiempo] [Crimen_organizado] )
        (titulo  "Bio Syndrome")
    )

    ([libro6] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Adulta_masculina] [Accion] [Terror] [Dificil] [Supervivencia] [Urbano] )
        (titulo  "Phantom Realm")
    )

    ([libro7] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Adulta_femenina] [Suspense] [Sobrenatural] [Intermedia] [Viajes_en_el_tiempo] [Psicologico] )
        (titulo  "Celestial Panic")
    )

    ([libro8] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Infantil] [Sobrenatural] [Fantasia] [Intermedia] [Espacial] [Supervivencia] )
        (titulo  "Dragon Alert")
    )

    ([libro9] of NovelaFiccion
        (tieneCaracteristica  [autor54] [Adulta_femenina] [Accion] [Suspense] [Dificil] [Superheroes] [Psicologico] )
        (titulo  "Arctic Betrayal")
    )

    ([libro10] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Infantil] [Fantasia] [Suspense] [Facil] [Viajes_en_el_tiempo] [Samurai] )
        (titulo  "Strife of Lies")
    )

    ([libro11] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Adulta_femenina] [Accion] [Suspense] [Intermedia] [Mitologia] [Urbano] )
        (titulo  "Rise of Democracy")
    )

    ([libro12] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Juvenil_masculina] [Romance] [Suspense] [Dificil] [Supervivencia] [Medieval] )
        (titulo  "Incinerate of Law")
    )

    ([libro13] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_masculina] [Sobrenatural] [Drama] [Dificil] [Policiaco] [Oeste] )
        (titulo  "Strife of Immunity")
    )

    ([libro14] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Infantil] [Accion] [CienciaFiccion] [Facil] [Samurai] [Policiaco] )
        (titulo  "Clash of Transgression")
    )

    ([libro15] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Juvenil_masculina] [Romance] [Comedia] [Facil] [Superheroes] [Urbano] )
        (titulo  "Battle of War")
    )

    ([libro16] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_masculina] [Romance] [Aventura] [Intermedia] [Pirata] [Supervivencia] )
        (titulo  "Infect of Immunity")
    )

    ([libro17] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Juvenil_masculina] [Aventura] [Suspense] [Intermedia] [Crimen_organizado] [Supervivencia] )
        (titulo  "Shoot of Deception")
    )

    ([libro18] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Juvenil_masculina] [Misterio] [Comedia] [Facil] [Policiaco] [Vampiros] )
        (titulo  "Battle of Truth")
    )

    ([libro19] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Adulta_masculina] [Accion] [Romance] [Dificil] [Viajes_en_el_tiempo] [Mitologia] )
        (titulo  "Chase of Retribution")
    )

    ([libro20] of NovelaFiccion
        (tieneCaracteristica  [autor94] [Adulta_masculina] [Romance] [Comedia] [Dificil] [Espacial] [Mitologia] )
        (titulo  "Decade and World")
    )

    ([libro21] of NovelaFiccion
        (tieneCaracteristica  [autor55] [Infantil] [Accion] [Sobrenatural] [Facil] [Medieval] [Pirata] )
        (titulo  "Embers and Cult")
    )

    ([libro22] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Adulta_masculina] [Romance] [Drama] [Intermedia] [Superheroes] [Viajes_en_el_tiempo] )
        (titulo  "Crime and Force")
    )

    ([libro23] of NovelaFiccion
        (tieneCaracteristica  [autor50] [Adulta_masculina] [Suspense] [Romance] [Facil] [Espacial] [Samurai] )
        (titulo  "Maze and Remorse")
    )

    ([libro24] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Terror] [Drama] [Intermedia] [Vampiros] [Samurai] )
        (titulo  "Year and Command")
    )

    ([libro25] of NovelaFiccion
        (tieneCaracteristica  [autor97] [Adulta_femenina] [Suspense] [Drama] [Facil] [Crimen_organizado] [Psicologico] )
        (titulo  "Ghosts and Year")
    )

    ([libro26] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Adulta_femenina] [Suspense] [Terror] [Dificil] [Crimen_organizado] [Vampiros] )
        (titulo  "Land and Nature")
    )

    ([libro27] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Adulta_femenina] [Accion] [CienciaFiccion] [Facil] [Samurai] [Vikingos] )
        (titulo  "Day and Dimension")
    )

    ([libro28] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_masculina] [Sobrenatural] [Accion] [Intermedia] [Supervivencia] [Militar] )
        (titulo  "Invasion and House")
    )

    ([libro29] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Infantil] [Suspense] [Sobrenatural] [Facil] [Vampiros] [Crimen_organizado] )
        (titulo  "Century and Battlefield")
    )

    ([libro30] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Adulta_masculina] [Drama] [Fantasia] [Dificil] [Espacial] [Samurai] )
        (titulo  "Gangs and Reckoning")
    )

    ([libro31] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Adulta_femenina] [Drama] [Suspense] [Dificil] [Medieval] [Policiaco] )
        (titulo  "Destruction and Infinity")
    )

    ([libro32] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Adulta_femenina] [Suspense] [Fantasia] [Facil] [Viajes_en_el_tiempo] [Vampiros] )
        (titulo  "Mayhem and Nightmares")
    )

    ([libro33] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Adulta_masculina] [Sobrenatural] [Terror] [Facil] [Vampiros] [Policiaco] )
        (titulo  "Fortune and Heroes")
    )

    ([libro34] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_masculina] [Romance] [Terror] [Dificil] [Espacial] [Vikingos] )
        (titulo  "Mortals and Zombies")
    )

    ([libro35] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Adulta_femenina] [Fantasia] [Terror] [Intermedia] [Viajes_en_el_tiempo] [Mitologia] )
        (titulo  "Disorder and Victory")
    )

    ([libro36] of NovelaFiccion
        (tieneCaracteristica  [autor57] [Juvenil_masculina] [Sobrenatural] [Aventura] [Dificil] [Medieval] [Espacial] )
        (titulo  "Despair and Freedom")
    )

    ([libro37] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Juvenil_masculina] [Terror] [CienciaFiccion] [Dificil] [Crimen_organizado] [Medieval] )
        (titulo  "Heroes and Mayhem")
    )

    ([libro38] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Adulta_masculina] [Romance] [Drama] [Intermedia] [Medieval] [Urbano] )
        (titulo  "Kings and Doubt")
    )

    ([libro39] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Juvenil_masculina] [Drama] [Romance] [Dificil] [Militar] [Policiaco] )
        (titulo  "Hope and Awe")
    )

    ([libro40] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Infantil] [CienciaFiccion] [Romance] [Dificil] [Policiaco] [Supervivencia] )
        (titulo  "Bordershot")
    )

    ([libro41] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Juvenil_masculina] [CienciaFiccion] [Aventura] [Facil] [Supervivencia] [Oeste] )
        (titulo  "Airbot")
    )

    ([libro42] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Juvenil_masculina] [Comedia] [Accion] [Facil] [Espacial] [Medieval] )
        (titulo  "Brutalreign")
    )

    ([libro43] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Juvenil_masculina] [Fantasia] [Romance] [Intermedia] [Superheroes] [Pirata] )
        (titulo  "Fusionland")
    )

    ([libro44] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Adulta_femenina] [Romance] [Terror] [Facil] [Samurai] [Espacial] )
        (titulo  "Blasterblast")
    )

    ([libro45] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Juvenil_femenina] [CienciaFiccion] [Sobrenatural] [Dificil] [Samurai] [Mitologia] )
        (titulo  "Blocknite")
    )

    ([libro46] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Infantil] [Accion] [Suspense] [Facil] [Vampiros] [Samurai] )
        (titulo  "Alterforce")
    )

    ([libro47] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Adulta_masculina] [CienciaFiccion] [Accion] [Facil] [Superheroes] [Urbano] )
        (titulo  "Crosschase")
    )

    ([libro48] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Adulta_femenina] [Fantasia] [Suspense] [Dificil] [Viajes_en_el_tiempo] [Mitologia] )
        (titulo  "Evercore")
    )

    ([libro49] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Juvenil_masculina] [Comedia] [Aventura] [Dificil] [Samurai] [Medieval] )
        (titulo  "Fuselight")
    )

    ([libro50] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Adulta_femenina] [Drama] [Aventura] [Dificil] [Militar] [Samurai] )
        (titulo  "Private Breed")
    )

    ([libro51] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Juvenil_femenina] [Comedia] [Fantasia] [Facil] [Urbano] [Viajes_en_el_tiempo] )
        (titulo  "Honor Barrage")
    )

    ([libro52] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Adulta_femenina] [Comedia] [Accion] [Facil] [Samurai] [Pirata] )
        (titulo  "Infernal Inquisition")
    )

    ([libro53] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Adulta_masculina] [Sobrenatural] [Misterio] [Intermedia] [Pirata] [Supervivencia] )
        (titulo  "Carnivore Castle")
    )

    ([libro54] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Juvenil_femenina] [Accion] [Aventura] [Intermedia] [Superheroes] [Crimen_organizado] )
        (titulo  "Bullet Assault")
    )

    ([libro55] of NovelaFiccion
        (tieneCaracteristica  [autor87] [Juvenil_femenina] [Aventura] [CienciaFiccion] [Dificil] [Vikingos] [Medieval] )
        (titulo  "Crimson Edge")
    )

    ([libro56] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_femenina] [Comedia] [Romance] [Dificil] [Militar] [Espacial] )
        (titulo  "Forbidden Omen")
    )

    ([libro57] of NovelaFiccion
        (tieneCaracteristica  [autor8] [Adulta_masculina] [Accion] [Comedia] [Intermedia] [Pirata] [Samurai] )
        (titulo  "Hunting Impact")
    )

    ([libro58] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Adulta_femenina] [Sobrenatural] [Aventura] [Dificil] [Oeste] [Pirata] )
        (titulo  "Phantom Betrayal")
    )

    ([libro59] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Adulta_femenina] [Misterio] [Suspense] [Intermedia] [Vampiros] [Urbano] )
        (titulo  "Cloud Survival")
    )

    ([libro60] of NovelaFiccion
        (tieneCaracteristica  [autor81] [Adulta_femenina] [Fantasia] [Aventura] [Facil] [Vampiros] [Mitologia] )
        (titulo  "Infect of Autonomy")
    )

    ([libro61] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Juvenil_femenina] [Comedia] [Suspense] [Dificil] [Viajes_en_el_tiempo] [Oeste] )
        (titulo  "Incinerate of Infringement")
    )

    ([libro62] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Juvenil_femenina] [Sobrenatural] [Drama] [Facil] [Medieval] [Vikingos] )
        (titulo  "Breakout of War")
    )

    ([libro63] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Adulta_femenina] [Drama] [Suspense] [Facil] [Urbano] [Medieval] )
        (titulo  "Defeat of Immunity")
    )

    ([libro64] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Infantil] [Drama] [Sobrenatural] [Facil] [Urbano] [Psicologico] )
        (titulo  "Crash of Conflict")
    )

    ([libro65] of NovelaFiccion
        (tieneCaracteristica  [autor33] [Juvenil_femenina] [Aventura] [Fantasia] [Dificil] [Policiaco] [Oeste] )
        (titulo  "Guard of Rule")
    )

    ([libro66] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Juvenil_femenina] [Romance] [Drama] [Facil] [Samurai] [Mitologia] )
        (titulo  "Vengeance of Regulations")
    )

    ([libro67] of NovelaFiccion
        (tieneCaracteristica  [autor81] [Juvenil_masculina] [Suspense] [Accion] [Dificil] [Medieval] [Samurai] )
        (titulo  "Guard of Autonomy")
    )

    ([libro68] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Adulta_femenina] [Terror] [CienciaFiccion] [Dificil] [Militar] [Samurai] )
        (titulo  "Fight of Campaigns")
    )

    ([libro69] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Adulta_femenina] [Aventura] [Comedia] [Dificil] [Espacial] [Mitologia] )
        (titulo  "Fortify of Transgression")
    )

    ([libro70] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Adulta_masculina] [Sobrenatural] [Romance] [Dificil] [Samurai] [Vampiros] )
        (titulo  "Graves and Weapons")
    )

    ([libro71] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Adulta_masculina] [Comedia] [Misterio] [Intermedia] [Militar] [Urbano] )
        (titulo  "Descent and Words")
    )

    ([libro72] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Juvenil_femenina] [Sobrenatural] [Drama] [Facil] [Urbano] [Medieval] )
        (titulo  "Words and Fight")
    )

    ([libro73] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Adulta_femenina] [Aventura] [Terror] [Facil] [Oeste] [Urbano] )
        (titulo  "Thunder and Voyage")
    )

    ([libro74] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Juvenil_femenina] [Aventura] [Suspense] [Dificil] [Psicologico] [Crimen_organizado] )
        (titulo  "Dream and Century")
    )

    ([libro75] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Adulta_femenina] [Suspense] [Aventura] [Dificil] [Supervivencia] [Samurai] )
        (titulo  "Shadow and Descent")
    )

    ([libro76] of NovelaFiccion
        (tieneCaracteristica  [autor94] [Juvenil_masculina] [Suspense] [CienciaFiccion] [Intermedia] [Supervivencia] [Samurai] )
        (titulo  "Sons and Graves")
    )

    ([libro77] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Adulta_femenina] [Sobrenatural] [Romance] [Dificil] [Policiaco] [Viajes_en_el_tiempo] )
        (titulo  "Danger and Cult")
    )

    ([libro78] of NovelaFiccion
        (tieneCaracteristica  [autor97] [Juvenil_femenina] [Fantasia] [Accion] [Facil] [Vikingos] [Crimen_organizado] )
        (titulo  "Sword and Science")
    )

    ([libro79] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Adulta_femenina] [Aventura] [Terror] [Dificil] [Vikingos] [Mitologia] )
        (titulo  "Defense and Codename")
    )

    ([libro80] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Juvenil_femenina] [Romance] [Comedia] [Intermedia] [Crimen_organizado] [Superheroes] )
        (titulo  "Liberty and Fortune")
    )

    ([libro81] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Infantil] [Aventura] [Sobrenatural] [Dificil] [Policiaco] [Mitologia] )
        (titulo  "Agony and Harmony")
    )

    ([libro82] of NovelaFiccion
        (tieneCaracteristica  [autor76] [Adulta_femenina] [CienciaFiccion] [Drama] [Facil] [Viajes_en_el_tiempo] [Superheroes] )
        (titulo  "Fire and Logic")
    )

    ([libro83] of NovelaFiccion
        (tieneCaracteristica  [autor50] [Juvenil_masculina] [Aventura] [Drama] [Facil] [Medieval] [Pirata] )
        (titulo  "Hell and Existence")
    )

    ([libro84] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Adulta_masculina] [Aventura] [Fantasia] [Intermedia] [Viajes_en_el_tiempo] [Mitologia] )
        (titulo  "Gangs and Infinity")
    )

    ([libro85] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Adulta_femenina] [Drama] [Suspense] [Intermedia] [Mitologia] [Medieval] )
        (titulo  "Reckoning and Infinity")
    )

    ([libro86] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Juvenil_masculina] [Aventura] [Terror] [Dificil] [Policiaco] [Espacial] )
        (titulo  "Action and Panic")
    )

    ([libro87] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Juvenil_masculina] [Aventura] [Fantasia] [Facil] [Vampiros] [Espacial] )
        (titulo  "Oracles and Angels")
    )

    ([libro88] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Adulta_masculina] [Fantasia] [Comedia] [Intermedia] [Superheroes] [Psicologico] )
        (titulo  "Evil and Angels")
    )

    ([libro89] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Adulta_masculina] [Drama] [Terror] [Dificil] [Espacial] [Oeste] )
        (titulo  "Harmony and Misery")
    )

    ([libro90] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Infantil] [Suspense] [Drama] [Dificil] [Viajes_en_el_tiempo] [Espacial] )
        (titulo  "Grimchase")
    )

    ([libro91] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Juvenil_femenina] [Terror] [Romance] [Dificil] [Militar] [Mitologia] )
        (titulo  "Cloudstorm")
    )

    ([libro92] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Juvenil_femenina] [Accion] [Romance] [Dificil] [Vampiros] [Pirata] )
        (titulo  "Bordersky")
    )

    ([libro93] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Juvenil_masculina] [Romance] [Comedia] [Facil] [Crimen_organizado] [Medieval] )
        (titulo  "Dynadude")
    )

    ([libro94] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Juvenil_masculina] [Terror] [Romance] [Dificil] [Mitologia] [Espacial] )
        (titulo  "Fireshock")
    )

    ([libro95] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Adulta_femenina] [Romance] [Aventura] [Facil] [Samurai] [Urbano] )
        (titulo  "Crystalrage")
    )

    ([libro96] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Juvenil_femenina] [Drama] [Fantasia] [Facil] [Supervivencia] [Crimen_organizado] )
        (titulo  "Everdoom")
    )

    ([libro97] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Adulta_femenina] [Sobrenatural] [Comedia] [Dificil] [Policiaco] [Psicologico] )
        (titulo  "Endorwatch")
    )

    ([libro98] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_femenina] [Sobrenatural] [Accion] [Facil] [Espacial] [Samurai] )
        (titulo  "Exrush")
    )

    ([libro99] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Juvenil_femenina] [CienciaFiccion] [Terror] [Intermedia] [Superheroes] [Oeste] )
        (titulo  "Antipoint")
    )

    ([libro100] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Adulta_masculina] [Suspense] [Misterio] [Dificil] [Pirata] [Vampiros] )
        (titulo  "Carnivore Theft")
    )

    ([libro101] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Juvenil_femenina] [Misterio] [Fantasia] [Dificil] [Militar] [Psicologico] )
        (titulo  "Dark Crusade")
    )

    ([libro102] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Juvenil_masculina] [Accion] [Romance] [Facil] [Mitologia] [Supervivencia] )
        (titulo  "Werewolf Age")
    )

    ([libro103] of NovelaFiccion
        (tieneCaracteristica  [autor94] [Adulta_femenina] [Terror] [Misterio] [Dificil] [Samurai] [Psicologico] )
        (titulo  "Obscure Master")
    )

    ([libro104] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Adulta_femenina] [Sobrenatural] [Fantasia] [Facil] [Espacial] [Vikingos] )
        (titulo  "Immortal Call")
    )

    ([libro105] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Adulta_femenina] [Accion] [Terror] [Intermedia] [Oeste] [Pirata] )
        (titulo  "Secret Tales")
    )

    ([libro106] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_femenina] [Romance] [Comedia] [Facil] [Vampiros] [Medieval] )
        (titulo  "Forbidden Escape")
    )

    ([libro107] of NovelaFiccion
        (tieneCaracteristica  [autor97] [Adulta_masculina] [Sobrenatural] [CienciaFiccion] [Intermedia] [Oeste] [Espacial] )
        (titulo  "Ace Master")
    )

    ([libro108] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Adulta_femenina] [CienciaFiccion] [Fantasia] [Dificil] [Pirata] [Urbano] )
        (titulo  "Bionic Armada")
    )

    ([libro109] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Juvenil_femenina] [Romance] [CienciaFiccion] [Facil] [Psicologico] [Viajes_en_el_tiempo] )
        (titulo  "Twilight Elements")
    )

    ([libro110] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Juvenil_masculina] [Comedia] [Romance] [Facil] [Militar] [Vampiros] )
        (titulo  "Blast of Reason")
    )

    ([libro111] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Infantil] [Drama] [CienciaFiccion] [Facil] [Samurai] [Espacial] )
        (titulo  "Blast of Rivalry")
    )

    ([libro112] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Infantil] [Fantasia] [Misterio] [Intermedia] [Vampiros] [Crimen_organizado] )
        (titulo  "Revolt of Friction")
    )

    ([libro113] of NovelaFiccion
        (tieneCaracteristica  [autor54] [Adulta_femenina] [Misterio] [Accion] [Facil] [Oeste] [Vikingos] )
        (titulo  "Struggle of Treachery")
    )

    ([libro114] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Juvenil_femenina] [Drama] [Comedia] [Facil] [Oeste] [Militar] )
        (titulo  "Assault of Violation")
    )

    ([libro115] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Juvenil_femenina] [Accion] [Aventura] [Facil] [Oeste] [Viajes_en_el_tiempo] )
        (titulo  "Destroy of Reason")
    )

    ([libro116] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Infantil] [CienciaFiccion] [Suspense] [Facil] [Samurai] [Vampiros] )
        (titulo  "Rise of Hypocrisy")
    )

    ([libro117] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Infantil] [Suspense] [Fantasia] [Intermedia] [Policiaco] [Oeste] )
        (titulo  "Strife of Opportunity")
    )

    ([libro118] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_femenina] [Accion] [Romance] [Facil] [Espacial] [Psicologico] )
        (titulo  "Crash of Violation")
    )

    ([libro119] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Juvenil_femenina] [Terror] [Misterio] [Intermedia] [Crimen_organizado] [Samurai] )
        (titulo  "Wipe Out of Order")
    )

    ([libro120] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Adulta_femenina] [Romance] [Aventura] [Intermedia] [Mitologia] [Medieval] )
        (titulo  "Graves and Sons")
    )

    ([libro121] of NovelaFiccion
        (tieneCaracteristica  [autor97] [Juvenil_masculina] [Comedia] [Sobrenatural] [Intermedia] [Oeste] [Vampiros] )
        (titulo  "Glitch and City")
    )

    ([libro122] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Adulta_femenina] [Aventura] [Romance] [Dificil] [Samurai] [Militar] )
        (titulo  "Echoes and Weapons")
    )

    ([libro123] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_masculina] [Misterio] [Accion] [Dificil] [Militar] [Mitologia] )
        (titulo  "Command and Order")
    )

    ([libro124] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Juvenil_masculina] [Drama] [Fantasia] [Dificil] [Supervivencia] [Policiaco] )
        (titulo  "House and Battle")
    )

    ([libro125] of NovelaFiccion
        (tieneCaracteristica  [autor54] [Adulta_masculina] [Aventura] [Sobrenatural] [Facil] [Policiaco] [Urbano] )
        (titulo  "Embers and Sons")
    )

    ([libro126] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Adulta_femenina] [Misterio] [Suspense] [Dificil] [Supervivencia] [Samurai] )
        (titulo  "Knights and Danger")
    )

    ([libro127] of NovelaFiccion
        (tieneCaracteristica  [autor51] [Juvenil_masculina] [Comedia] [Aventura] [Intermedia] [Militar] [Crimen_organizado] )
        (titulo  "Century and Hazard")
    )

    ([libro128] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Juvenil_femenina] [Sobrenatural] [Misterio] [Facil] [Viajes_en_el_tiempo] [Urbano] )
        (titulo  "Quest and Force")
    )

    ([libro129] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Adulta_femenina] [Sobrenatural] [Fantasia] [Intermedia] [Urbano] [Policiaco] )
        (titulo  "Battlefield and Doom")
    )

    ([libro130] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Drama] [Suspense] [Dificil] [Urbano] [Policiaco] )
        (titulo  "Mayhem and Vampires")
    )

    ([libro131] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Adulta_masculina] [Misterio] [Fantasia] [Facil] [Pirata] [Vikingos] )
        (titulo  "Dragons and Truth")
    )

    ([libro132] of NovelaFiccion
        (tieneCaracteristica  [autor90] [Juvenil_femenina] [Misterio] [Accion] [Intermedia] [Oeste] [Militar] )
        (titulo  "Legends and Death")
    )

    ([libro133] of NovelaFiccion
        (tieneCaracteristica  [autor65] [Juvenil_femenina] [CienciaFiccion] [Aventura] [Intermedia] [Viajes_en_el_tiempo] [Samurai] )
        (titulo  "Dread and Androids")
    )

    ([libro134] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Juvenil_masculina] [Accion] [Sobrenatural] [Facil] [Pirata] [Oeste] )
        (titulo  "Victory and Disorder")
    )

    ([libro135] of NovelaFiccion
        (tieneCaracteristica  [autor92] [Infantil] [Suspense] [Sobrenatural] [Dificil] [Medieval] [Psicologico] )
        (titulo  "Truth and Dust")
    )

    ([libro136] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Juvenil_masculina] [Terror] [Aventura] [Facil] [Crimen_organizado] [Oeste] )
        (titulo  "Solitude and Immortals")
    )

    ([libro137] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Juvenil_masculina] [Fantasia] [CienciaFiccion] [Dificil] [Psicologico] [Viajes_en_el_tiempo] )
        (titulo  "Evolution and Nothing")
    )

    ([libro138] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Infantil] [Comedia] [Aventura] [Dificil] [Vampiros] [Samurai] )
        (titulo  "Evolution and Logic")
    )

    ([libro139] of NovelaFiccion
        (tieneCaracteristica  [autor34] [Adulta_femenina] [CienciaFiccion] [Comedia] [Intermedia] [Supervivencia] [Crimen_organizado] )
        (titulo  "Order and Vampires")
    )

    ([libro140] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Adulta_femenina] [Comedia] [Terror] [Facil] [Vikingos] [Pirata] )
        (titulo  "Blockblast")
    )

    ([libro141] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Infantil] [Suspense] [Misterio] [Dificil] [Superheroes] [Espacial] )
        (titulo  "Bioreign")
    )

    ([libro142] of NovelaFiccion
        (tieneCaracteristica  [autor93] [Adulta_masculina] [CienciaFiccion] [Accion] [Facil] [Supervivencia] [Mitologia] )
        (titulo  "Masterlust")
    )

    ([libro143] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Infantil] [Romance] [Comedia] [Intermedia] [Oeste] [Superheroes] )
        (titulo  "Clustercraze")
    )

    ([libro144] of NovelaFiccion
        (tieneCaracteristica  [autor65] [Juvenil_masculina] [Misterio] [Romance] [Facil] [Supervivencia] [Samurai] )
        (titulo  "Airnite")
    )

    ([libro145] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_femenina] [Comedia] [Aventura] [Facil] [Superheroes] [Pirata] )
        (titulo  "Deadsite")
    )

    ([libro146] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Adulta_femenina] [Drama] [Suspense] [Intermedia] [Mitologia] [Policiaco] )
        (titulo  "Demonnite")
    )

    ([libro147] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Juvenil_masculina] [Suspense] [Romance] [Facil] [Crimen_organizado] [Medieval] )
        (titulo  "Archewind")
    )

    ([libro148] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Adulta_femenina] [CienciaFiccion] [Romance] [Intermedia] [Medieval] [Psicologico] )
        (titulo  "Hellwatch")
    )

    ([libro149] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Adulta_femenina] [Terror] [Accion] [Facil] [Superheroes] [Pirata] )
        (titulo  "Bladeflight")
    )

    ([libro150] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Infantil] [Sobrenatural] [Accion] [Intermedia] [Oeste] [Policiaco] )
        (titulo  "Silver Elements")
    )

    ([libro151] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Juvenil_masculina] [Comedia] [Fantasia] [Dificil] [Vampiros] [Medieval] )
        (titulo  "Zombie Tombs")
    )

    ([libro152] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Juvenil_masculina] [CienciaFiccion] [Fantasia] [Intermedia] [Vikingos] [Pirata] )
        (titulo  "Death Invasion")
    )

    ([libro153] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Juvenil_masculina] [Fantasia] [Drama] [Dificil] [Crimen_organizado] [Policiaco] )
        (titulo  "Armageddon Omen")
    )

    ([libro154] of NovelaFiccion
        (tieneCaracteristica  [autor55] [Infantil] [Comedia] [Romance] [Dificil] [Policiaco] [Urbano] )
        (titulo  "Werewolf Vendetta")
    )

    ([libro155] of NovelaFiccion
        (tieneCaracteristica  [autor34] [Adulta_femenina] [Romance] [Comedia] [Intermedia] [Medieval] [Vikingos] )
        (titulo  "Atomic Panic")
    )

    ([libro156] of NovelaFiccion
        (tieneCaracteristica  [autor51] [Juvenil_masculina] [CienciaFiccion] [Accion] [Intermedia] [Samurai] [Vikingos] )
        (titulo  "Shadow Experiment")
    )

    ([libro157] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Juvenil_masculina] [Fantasia] [Drama] [Dificil] [Supervivencia] [Superheroes] )
        (titulo  "Red State")
    )

    ([libro158] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Adulta_femenina] [Misterio] [Aventura] [Dificil] [Viajes_en_el_tiempo] [Medieval] )
        (titulo  "Human Tombs")
    )

    ([libro159] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Juvenil_masculina] [Sobrenatural] [Drama] [Facil] [Pirata] [Militar] )
        (titulo  "Secret Universe")
    )

    ([libro160] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Adulta_masculina] [Aventura] [Terror] [Facil] [Militar] [Samurai] )
        (titulo  "Breakout of Order")
    )

    ([libro161] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Adulta_masculina] [Aventura] [Sobrenatural] [Dificil] [Viajes_en_el_tiempo] [Medieval] )
        (titulo  "Chase of Betrayal")
    )

    ([libro162] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Infantil] [Fantasia] [Aventura] [Dificil] [Vampiros] [Superheroes] )
        (titulo  "Destroy of Salvation")
    )

    ([libro163] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Infantil] [Misterio] [Drama] [Intermedia] [Supervivencia] [Crimen_organizado] )
        (titulo  "Resist of Immunity")
    )

    ([libro164] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Juvenil_femenina] [Aventura] [Misterio] [Facil] [Oeste] [Mitologia] )
        (titulo  "Besiege of Vengeance")
    )

    ([libro165] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Juvenil_masculina] [Suspense] [Sobrenatural] [Intermedia] [Supervivencia] [Psicologico] )
        (titulo  "Plan of Prosecution")
    )

    ([libro166] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Juvenil_femenina] [Terror] [Fantasia] [Dificil] [Policiaco] [Pirata] )
        (titulo  "Rule of Autonomy")
    )

    ([libro167] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Infantil] [Sobrenatural] [Drama] [Dificil] [Superheroes] [Mitologia] )
        (titulo  "Attack of Wrath")
    )

    ([libro168] of NovelaFiccion
        (tieneCaracteristica  [autor50] [Infantil] [CienciaFiccion] [Sobrenatural] [Intermedia] [Mitologia] [Oeste] )
        (titulo  "Strike of Combat")
    )

    ([libro169] of NovelaFiccion
        (tieneCaracteristica  [autor81] [Adulta_femenina] [Sobrenatural] [Fantasia] [Dificil] [Viajes_en_el_tiempo] [Medieval] )
        (titulo  "Counter of Trickery")
    )

    ([libro170] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Infantil] [Terror] [Accion] [Intermedia] [Policiaco] [Crimen_organizado] )
        (titulo  "Invasion and Revenge")
    )

    ([libro171] of NovelaFiccion
        (tieneCaracteristica  [autor26] [Juvenil_femenina] [Misterio] [Sobrenatural] [Dificil] [Superheroes] [Samurai] )
        (titulo  "Science and Embers")
    )

    ([libro172] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Adulta_masculina] [Aventura] [Sobrenatural] [Dificil] [Crimen_organizado] [Viajes_en_el_tiempo] )
        (titulo  "Born and Galaxy")
    )

    ([libro173] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Adulta_femenina] [Comedia] [Romance] [Dificil] [Vikingos] [Superheroes] )
        (titulo  "Death and Treasures")
    )

    ([libro174] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Juvenil_masculina] [Sobrenatural] [Fantasia] [Intermedia] [Superheroes] [Vikingos] )
        (titulo  "Law and Game")
    )

    ([libro175] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Adulta_masculina] [Suspense] [Fantasia] [Intermedia] [Medieval] [Samurai] )
        (titulo  "Revenge and Rush")
    )

    ([libro176] of NovelaFiccion
        (tieneCaracteristica  [autor8] [Infantil] [Terror] [Aventura] [Intermedia] [Medieval] [Oeste] )
        (titulo  "Sons and Chase")
    )

    ([libro177] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Adulta_masculina] [Sobrenatural] [Drama] [Intermedia] [Psicologico] [Espacial] )
        (titulo  "Born and Revenge")
    )

    ([libro178] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Juvenil_masculina] [Aventura] [Fantasia] [Dificil] [Vikingos] [Militar] )
        (titulo  "Paradise and Age")
    )

    ([libro179] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Juvenil_femenina] [Romance] [Comedia] [Dificil] [Superheroes] [Policiaco] )
        (titulo  "Quest and Genesis")
    )

    ([libro180] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Adulta_masculina] [Drama] [Accion] [Dificil] [Crimen_organizado] [Samurai] )
        (titulo  "Prototypes and Evil")
    )

    ([libro181] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Juvenil_femenina] [Romance] [CienciaFiccion] [Facil] [Viajes_en_el_tiempo] [Policiaco] )
        (titulo  "Misery and Lies")
    )

    ([libro182] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Adulta_femenina] [Misterio] [Terror] [Facil] [Viajes_en_el_tiempo] [Superheroes] )
        (titulo  "Evolution and Death")
    )

    ([libro183] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Infantil] [Accion] [Fantasia] [Dificil] [Psicologico] [Policiaco] )
        (titulo  "Disarray and Dragons")
    )

    ([libro184] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Adulta_masculina] [Fantasia] [Comedia] [Intermedia] [Vampiros] [Espacial] )
        (titulo  "Riddles and Honor")
    )

    ([libro185] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Infantil] [Aventura] [Romance] [Intermedia] [Supervivencia] [Vikingos] )
        (titulo  "Infinity and Resistance")
    )

    ([libro186] of NovelaFiccion
        (tieneCaracteristica  [autor34] [Adulta_femenina] [Drama] [Terror] [Dificil] [Pirata] [Samurai] )
        (titulo  "Valor and Disarray")
    )

    ([libro187] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_masculina] [Drama] [Romance] [Facil] [Mitologia] [Pirata] )
        (titulo  "Salvation and Immortals")
    )

    ([libro188] of NovelaFiccion
        (tieneCaracteristica  [autor8] [Adulta_femenina] [Aventura] [Drama] [Dificil] [Mitologia] [Militar] )
        (titulo  "Heroes and Androids")
    )

    ([libro189] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Adulta_femenina] [Accion] [Fantasia] [Facil] [Vikingos] [Mitologia] )
        (titulo  "Nature and Pain")
    )

    ([libro190] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Juvenil_femenina] [Suspense] [CienciaFiccion] [Intermedia] [Crimen_organizado] [Vikingos] )
        (titulo  "Excry")
    )

    ([libro191] of NovelaFiccion
        (tieneCaracteristica  [autor53] [Adulta_femenina] [Comedia] [Sobrenatural] [Facil] [Policiaco] [Oeste] )
        (titulo  "Bordersky")
    )

    ([libro192] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Juvenil_masculina] [Accion] [Comedia] [Intermedia] [Pirata] [Oeste] )
        (titulo  "Evohunt")
    )

    ([libro193] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Juvenil_femenina] [Misterio] [Suspense] [Dificil] [Policiaco] [Samurai] )
        (titulo  "Farback")
    )

    ([libro194] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Adulta_femenina] [Misterio] [Romance] [Intermedia] [Supervivencia] [Vampiros] )
        (titulo  "Fuselust")
    )

    ([libro195] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Adulta_femenina] [Comedia] [Aventura] [Intermedia] [Samurai] [Mitologia] )
        (titulo  "Deltashot")
    )

    ([libro196] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Juvenil_masculina] [Sobrenatural] [Terror] [Intermedia] [Crimen_organizado] [Psicologico] )
        (titulo  "Bulletrush")
    )

    ([libro197] of NovelaFiccion
        (tieneCaracteristica  [autor38] [Infantil] [Terror] [Aventura] [Intermedia] [Crimen_organizado] [Pirata] )
        (titulo  "Alterrain")
    )

    ([libro198] of NovelaFiccion
        (tieneCaracteristica  [autor87] [Adulta_masculina] [Fantasia] [Accion] [Facil] [Espacial] [Vikingos] )
        (titulo  "Bulletblast")
    )

    ([libro199] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Juvenil_masculina] [Aventura] [Romance] [Intermedia] [Vampiros] [Oeste] )
        (titulo  "Brutalshot")
    )

    ([libro200] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Infantil] [Misterio] [Aventura] [Dificil] [Militar] [Urbano] )
        (titulo  "Cosmic Freedom")
    )

    ([libro201] of NovelaFiccion
        (tieneCaracteristica  [autor87] [Adulta_masculina] [Aventura] [Misterio] [Facil] [Espacial] [Vikingos] )
        (titulo  "Bullet Impact")
    )

    ([libro202] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Infantil] [Misterio] [Accion] [Facil] [Pirata] [Samurai] )
        (titulo  "Ghost Possession")
    )

    ([libro203] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Adulta_masculina] [Drama] [CienciaFiccion] [Dificil] [Mitologia] [Superheroes] )
        (titulo  "Bio Calamity")
    )

    ([libro204] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Infantil] [Fantasia] [Aventura] [Dificil] [Psicologico] [Vikingos] )
        (titulo  "Hallowed Kingdom")
    )

    ([libro205] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_femenina] [Sobrenatural] [Romance] [Facil] [Vikingos] [Samurai] )
        (titulo  "Atomic Alert")
    )

    ([libro206] of NovelaFiccion
        (tieneCaracteristica  [autor32] [Juvenil_femenina] [Suspense] [Sobrenatural] [Facil] [Viajes_en_el_tiempo] [Supervivencia] )
        (titulo  "Arctic Cell")
    )

    ([libro207] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Adulta_masculina] [Comedia] [Misterio] [Facil] [Urbano] [Espacial] )
        (titulo  "Hunting Emergency")
    )

    ([libro208] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Infantil] [Fantasia] [Aventura] [Intermedia] [Superheroes] [Vikingos] )
        (titulo  "Tactical Money")
    )

    ([libro209] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Infantil] [Suspense] [Comedia] [Facil] [Superheroes] [Psicologico] )
        (titulo  "Infernal Rage")
    )

    ([libro210] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Juvenil_masculina] [Accion] [Aventura] [Intermedia] [Samurai] [Policiaco] )
        (titulo  "Crush of Strife")
    )

    ([libro211] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Adulta_masculina] [Accion] [Comedia] [Dificil] [Psicologico] [Mitologia] )
        (titulo  "Rescue of Duplicity")
    )

    ([libro212] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Adulta_femenina] [CienciaFiccion] [Fantasia] [Facil] [Oeste] [Medieval] )
        (titulo  "Bombard of Power")
    )

    ([libro213] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Infantil] [Accion] [Romance] [Dificil] [Mitologia] [Pirata] )
        (titulo  "Crush of Rule")
    )

    ([libro214] of NovelaFiccion
        (tieneCaracteristica  [autor51] [Adulta_femenina] [Fantasia] [CienciaFiccion] [Dificil] [Samurai] [Oeste] )
        (titulo  "Vengeance of Rescue")
    )

    ([libro215] of NovelaFiccion
        (tieneCaracteristica  [autor97] [Adulta_masculina] [Sobrenatural] [Romance] [Facil] [Superheroes] [Espacial] )
        (titulo  "Arm of Power")
    )

    ([libro216] of NovelaFiccion
        (tieneCaracteristica  [autor54] [Adulta_femenina] [Misterio] [Aventura] [Facil] [Superheroes] [Policiaco] )
        (titulo  "Breakout of Liberty")
    )

    ([libro217] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Adulta_masculina] [Fantasia] [Romance] [Facil] [Crimen_organizado] [Pirata] )
        (titulo  "Resist of Regulations")
    )

    ([libro218] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Infantil] [Fantasia] [Drama] [Dificil] [Mitologia] [Superheroes] )
        (titulo  "Demolish of Transgression")
    )

    ([libro219] of NovelaFiccion
        (tieneCaracteristica  [autor19] [Juvenil_masculina] [Sobrenatural] [Romance] [Facil] [Pirata] [Policiaco] )
        (titulo  "Rise of Resitution")
    )

    ([libro220] of NovelaFiccion
        (tieneCaracteristica  [autor54] [Juvenil_masculina] [Sobrenatural] [Drama] [Intermedia] [Crimen_organizado] [Vampiros] )
        (titulo  "Streets and Decade")
    )

    ([libro221] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Adulta_masculina] [Sobrenatural] [Accion] [Dificil] [Oeste] [Espacial] )
        (titulo  "Garden and Memories")
    )

    ([libro222] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Juvenil_masculina] [Comedia] [Sobrenatural] [Facil] [Pirata] [Urbano] )
        (titulo  "Garden and Gateway")
    )

    ([libro223] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Adulta_masculina] [Suspense] [Comedia] [Intermedia] [Superheroes] [Vampiros] )
        (titulo  "Rush and Nature")
    )

    ([libro224] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Juvenil_masculina] [Suspense] [Drama] [Dificil] [Oeste] [Samurai] )
        (titulo  "Matter and Science")
    )

    ([libro225] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Juvenil_masculina] [Drama] [Terror] [Facil] [Psicologico] [Crimen_organizado] )
        (titulo  "Chamber and Galaxy")
    )

    ([libro226] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Adulta_femenina] [Aventura] [Sobrenatural] [Dificil] [Psicologico] [Samurai] )
        (titulo  "Nature and Thunder")
    )

    ([libro227] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Juvenil_femenina] [Suspense] [Misterio] [Dificil] [Vikingos] [Urbano] )
        (titulo  "Fight and Edge")
    )

    ([libro228] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Fantasia] [Misterio] [Intermedia] [Vikingos] [Militar] )
        (titulo  "City and Ghosts")
    )

    ([libro229] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Adulta_femenina] [Misterio] [Fantasia] [Facil] [Oeste] [Viajes_en_el_tiempo] )
        (titulo  "Fortress and Land")
    )

    ([libro230] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Infantil] [Aventura] [CienciaFiccion] [Intermedia] [Policiaco] [Pirata] )
        (titulo  "Nature and Havoc")
    )

    ([libro231] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Juvenil_femenina] [Accion] [Terror] [Facil] [Militar] [Crimen_organizado] )
        (titulo  "Time and Victory")
    )

    ([libro232] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_femenina] [Drama] [Sobrenatural] [Facil] [Policiaco] [Psicologico] )
        (titulo  "Heroes and Evolution")
    )

    ([libro233] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_femenina] [Fantasia] [Terror] [Intermedia] [Medieval] [Crimen_organizado] )
        (titulo  "Ambition and Revolution")
    )

    ([libro234] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Juvenil_masculina] [Drama] [Suspense] [Facil] [Urbano] [Crimen_organizado] )
        (titulo  "Earth and Innocents")
    )

    ([libro235] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Infantil] [Suspense] [Sobrenatural] [Dificil] [Espacial] [Psicologico] )
        (titulo  "Predators and Pain")
    )

    ([libro236] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Infantil] [Misterio] [Aventura] [Facil] [Supervivencia] [Oeste] )
        (titulo  "Disorder and Domination")
    )

    ([libro237] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Infantil] [Romance] [Drama] [Intermedia] [Superheroes] [Policiaco] )
        (titulo  "Fire and Reckoning")
    )

    ([libro238] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Adulta_femenina] [Aventura] [Suspense] [Facil] [Supervivencia] [Mitologia] )
        (titulo  "Lies and Doubt")
    )

    ([libro239] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Juvenil_masculina] [CienciaFiccion] [Fantasia] [Facil] [Urbano] [Oeste] )
        (titulo  "Honor and Dragons")
    )

    ([libro240] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Infantil] [Suspense] [Fantasia] [Intermedia] [Crimen_organizado] [Urbano] )
        (titulo  "Madzone")
    )

    ([libro241] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Infantil] [Misterio] [Comedia] [Intermedia] [Vampiros] [Psicologico] )
        (titulo  "Dreaddude")
    )

    ([libro242] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Juvenil_masculina] [CienciaFiccion] [Drama] [Intermedia] [Vikingos] [Pirata] )
        (titulo  "Masterzone")
    )

    ([libro243] of NovelaFiccion
        (tieneCaracteristica  [autor87] [Infantil] [Accion] [Comedia] [Dificil] [Militar] [Vampiros] )
        (titulo  "Bladewind")
    )

    ([libro244] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Infantil] [Suspense] [Misterio] [Intermedia] [Urbano] [Oeste] )
        (titulo  "Fusionspace")
    )

    ([libro245] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Adulta_femenina] [Sobrenatural] [Drama] [Intermedia] [Militar] [Urbano] )
        (titulo  "Mastermania")
    )

    ([libro246] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Juvenil_femenina] [Romance] [Suspense] [Facil] [Mitologia] [Espacial] )
        (titulo  "Antilight")
    )

    ([libro247] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Juvenil_femenina] [Accion] [Terror] [Dificil] [Mitologia] [Crimen_organizado] )
        (titulo  "Dreadstar")
    )

    ([libro248] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Adulta_femenina] [Comedia] [Fantasia] [Facil] [Viajes_en_el_tiempo] [Samurai] )
        (titulo  "Clusterback")
    )

    ([libro249] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Juvenil_masculina] [CienciaFiccion] [Comedia] [Dificil] [Vampiros] [Policiaco] )
        (titulo  "Warlife")
    )

    ([libro250] of NovelaFiccion
        (tieneCaracteristica  [autor57] [Infantil] [Sobrenatural] [Romance] [Intermedia] [Policiaco] [Oeste] )
        (titulo  "Forgotten Games")
    )

    ([libro251] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Infantil] [Aventura] [Drama] [Intermedia] [Mitologia] [Supervivencia] )
        (titulo  "Titan Haven")
    )

    ([libro252] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Adulta_masculina] [CienciaFiccion] [Comedia] [Facil] [Vampiros] [Viajes_en_el_tiempo] )
        (titulo  "Tactical Cavern")
    )

    ([libro253] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_femenina] [Sobrenatural] [Accion] [Facil] [Urbano] [Supervivencia] )
        (titulo  "Android Attack")
    )

    ([libro254] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Juvenil_femenina] [Terror] [Accion] [Facil] [Urbano] [Vampiros] )
        (titulo  "Forgotten Legacy")
    )

    ([libro255] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Adulta_masculina] [Aventura] [Misterio] [Intermedia] [Mitologia] [Samurai] )
        (titulo  "Bullet Armada")
    )

    ([libro256] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Infantil] [Aventura] [Drama] [Intermedia] [Militar] [Oeste] )
        (titulo  "Red Breed")
    )

    ([libro257] of NovelaFiccion
        (tieneCaracteristica  [autor32] [Adulta_femenina] [Accion] [Aventura] [Facil] [Urbano] [Samurai] )
        (titulo  "Killing Escape")
    )

    ([libro258] of NovelaFiccion
        (tieneCaracteristica  [autor90] [Juvenil_masculina] [Suspense] [Aventura] [Dificil] [Militar] [Medieval] )
        (titulo  "Parasite Edge")
    )

    ([libro259] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Juvenil_masculina] [Misterio] [Fantasia] [Facil] [Pirata] [Superheroes] )
        (titulo  "Special Project")
    )

    ([libro260] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Infantil] [Drama] [Sobrenatural] [Facil] [Vikingos] [Pirata] )
        (titulo  "Charge of Resitution")
    )

    ([libro261] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_masculina] [Sobrenatural] [CienciaFiccion] [Intermedia] [Pirata] [Samurai] )
        (titulo  "Strategize of Strife")
    )

    ([libro262] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Adulta_masculina] [Accion] [Fantasia] [Facil] [Viajes_en_el_tiempo] [Supervivencia] )
        (titulo  "Destroy of Campaigns")
    )

    ([libro263] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Juvenil_femenina] [Aventura] [Accion] [Intermedia] [Mitologia] [Supervivencia] )
        (titulo  "Conquer of Stipulation")
    )

    ([libro264] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Juvenil_masculina] [Terror] [Misterio] [Intermedia] [Samurai] [Espacial] )
        (titulo  "Fortify of Liberty")
    )

    ([libro265] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Adulta_masculina] [Comedia] [Accion] [Intermedia] [Psicologico] [Oeste] )
        (titulo  "Strife of Assault")
    )

    ([libro266] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Juvenil_femenina] [Fantasia] [Comedia] [Intermedia] [Urbano] [Espacial] )
        (titulo  "Pillage of Trickery")
    )

    ([libro267] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Adulta_femenina] [Misterio] [CienciaFiccion] [Facil] [Superheroes] [Pirata] )
        (titulo  "Retaliate of Duplicity")
    )

    ([libro268] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Juvenil_femenina] [Comedia] [Drama] [Dificil] [Viajes_en_el_tiempo] [Militar] )
        (titulo  "Resist of Assault")
    )

    ([libro269] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Infantil] [Romance] [Sobrenatural] [Intermedia] [Medieval] [Psicologico] )
        (titulo  "Command of Assault")
    )

    ([libro270] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Infantil] [Accion] [Drama] [Intermedia] [Policiaco] [Crimen_organizado] )
        (titulo  "Law and Journey")
    )

    ([libro271] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Adulta_masculina] [Suspense] [Fantasia] [Intermedia] [Oeste] [Vikingos] )
        (titulo  "Whispers and Weapons")
    )

    ([libro272] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Adulta_femenina] [Suspense] [Misterio] [Intermedia] [Viajes_en_el_tiempo] [Psicologico] )
        (titulo  "Extinction and Home")
    )

    ([libro273] of NovelaFiccion
        (tieneCaracteristica  [autor33] [Adulta_masculina] [Misterio] [Suspense] [Facil] [Samurai] [Urbano] )
        (titulo  "Defense and Codename")
    )

    ([libro274] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Juvenil_femenina] [Suspense] [CienciaFiccion] [Facil] [Espacial] [Medieval] )
        (titulo  "Apocalypse and Sons")
    )

    ([libro275] of NovelaFiccion
        (tieneCaracteristica  [autor76] [Juvenil_masculina] [Accion] [Aventura] [Intermedia] [Mitologia] [Vikingos] )
        (titulo  "Order and Hunt")
    )

    ([libro276] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Juvenil_masculina] [CienciaFiccion] [Accion] [Facil] [Psicologico] [Espacial] )
        (titulo  "Weapons and Life")
    )

    ([libro277] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Adulta_masculina] [Misterio] [Aventura] [Facil] [Oeste] [Vikingos] )
        (titulo  "Echoes and Edge")
    )

    ([libro278] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Infantil] [Accion] [Terror] [Dificil] [Crimen_organizado] [Medieval] )
        (titulo  "Thunder and Order")
    )

    ([libro279] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Adulta_femenina] [Sobrenatural] [Drama] [Dificil] [Supervivencia] [Policiaco] )
        (titulo  "Retribution and Defense")
    )

    ([libro280] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Infantil] [Terror] [Comedia] [Intermedia] [Pirata] [Vikingos] )
        (titulo  "Disorder and Faith")
    )

    ([libro281] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Infantil] [Terror] [Romance] [Dificil] [Urbano] [Vikingos] )
        (titulo  "Predators and Sacrifice")
    )

    ([libro282] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Infantil] [Fantasia] [Suspense] [Intermedia] [Crimen_organizado] [Medieval] )
        (titulo  "Resistance and Freedom")
    )

    ([libro283] of NovelaFiccion
        (tieneCaracteristica  [autor4] [Adulta_femenina] [Comedia] [Sobrenatural] [Intermedia] [Viajes_en_el_tiempo] [Superheroes] )
        (titulo  "Rage and Terror")
    )

    ([libro284] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Juvenil_femenina] [Comedia] [Sobrenatural] [Dificil] [Militar] [Vampiros] )
        (titulo  "Mayhem and Souls")
    )

    ([libro285] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Infantil] [Terror] [Romance] [Intermedia] [Espacial] [Supervivencia] )
        (titulo  "Zombies and Infinity")
    )

    ([libro286] of NovelaFiccion
        (tieneCaracteristica  [autor93] [Adulta_femenina] [Sobrenatural] [CienciaFiccion] [Dificil] [Superheroes] [Vampiros] )
        (titulo  "Hell and Awe")
    )

    ([libro287] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Adulta_femenina] [Romance] [Suspense] [Dificil] [Militar] [Urbano] )
        (titulo  "Insanity and Lies")
    )

    ([libro288] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Adulta_femenina] [Fantasia] [Sobrenatural] [Dificil] [Espacial] [Vikingos] )
        (titulo  "Evolution and Skulls")
    )

    ([libro289] of NovelaFiccion
        (tieneCaracteristica  [autor26] [Juvenil_masculina] [Suspense] [Romance] [Intermedia] [Militar] [Policiaco] )
        (titulo  "Valor and Victory")
    )

    ([libro290] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Juvenil_femenina] [Accion] [Terror] [Facil] [Vikingos] [Medieval] )
        (titulo  "Datawatch")
    )

    ([libro291] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Juvenil_masculina] [Romance] [CienciaFiccion] [Facil] [Policiaco] [Psicologico] )
        (titulo  "Castleback")
    )

    ([libro292] of NovelaFiccion
        (tieneCaracteristica  [autor19] [Juvenil_femenina] [Suspense] [Misterio] [Facil] [Espacial] [Viajes_en_el_tiempo] )
        (titulo  "Warcell")
    )

    ([libro293] of NovelaFiccion
        (tieneCaracteristica  [autor7] [Infantil] [Drama] [Romance] [Facil] [Vikingos] [Medieval] )
        (titulo  "Ultraborne")
    )

    ([libro294] of NovelaFiccion
        (tieneCaracteristica  [autor38] [Adulta_femenina] [Romance] [Drama] [Dificil] [Urbano] [Crimen_organizado] )
        (titulo  "Dreampoint")
    )

    ([libro295] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Juvenil_femenina] [Comedia] [Suspense] [Dificil] [Oeste] [Vampiros] )
        (titulo  "Datazone")
    )

    ([libro296] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Juvenil_femenina] [Suspense] [Misterio] [Facil] [Supervivencia] [Policiaco] )
        (titulo  "Firecraft")
    )

    ([libro297] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Infantil] [Terror] [Drama] [Facil] [Militar] [Psicologico] )
        (titulo  "Emberwind")
    )

    ([libro298] of NovelaFiccion
        (tieneCaracteristica  [autor58] [Adulta_femenina] [Accion] [Terror] [Dificil] [Militar] [Oeste] )
        (titulo  "Endorbot")
    )

    ([libro299] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Adulta_masculina] [Comedia] [Drama] [Dificil] [Psicologico] [Espacial] )
        (titulo  "Deadborne")
    )

    ([libro300] of NovelaFiccion
        (tieneCaracteristica  [autor57] [Adulta_masculina] [Aventura] [Romance] [Dificil] [Mitologia] [Vikingos] )
        (titulo  "Just Frontier")
    )

    ([libro301] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Adulta_masculina] [Accion] [Suspense] [Intermedia] [Urbano] [Supervivencia] )
        (titulo  "Special Prototype")
    )

    ([libro302] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Juvenil_masculina] [Terror] [Drama] [Intermedia] [Vampiros] [Supervivencia] )
        (titulo  "Covert Operation")
    )

    ([libro303] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Adulta_femenina] [Drama] [CienciaFiccion] [Dificil] [Pirata] [Vampiros] )
        (titulo  "Armageddon Agent")
    )

    ([libro304] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Infantil] [Romance] [Terror] [Dificil] [Vampiros] [Superheroes] )
        (titulo  "Alpha Rising")
    )

    ([libro305] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Adulta_femenina] [Fantasia] [Aventura] [Dificil] [Crimen_organizado] [Vikingos] )
        (titulo  "Phantom Crusade")
    )

    ([libro306] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Infantil] [Accion] [Drama] [Facil] [Viajes_en_el_tiempo] [Policiaco] )
        (titulo  "Twilight Conquest")
    )

    ([libro307] of NovelaFiccion
        (tieneCaracteristica  [autor7] [Adulta_femenina] [Accion] [Drama] [Intermedia] [Militar] [Crimen_organizado] )
        (titulo  "Infinite Apocalypse")
    )

    ([libro308] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Adulta_femenina] [Terror] [CienciaFiccion] [Dificil] [Urbano] [Policiaco] )
        (titulo  "Warrior Road")
    )

    ([libro309] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_masculina] [Comedia] [Misterio] [Facil] [Supervivencia] [Policiaco] )
        (titulo  "Light Age")
    )

    ([libro310] of NovelaFiccion
        (tieneCaracteristica  [autor7] [Adulta_masculina] [Comedia] [Suspense] [Facil] [Espacial] [Militar] )
        (titulo  "Raid of Trickery")
    )

    ([libro311] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Adulta_masculina] [Terror] [Romance] [Intermedia] [Policiaco] [Pirata] )
        (titulo  "Plan of Lies")
    )

    ([libro312] of NovelaFiccion
        (tieneCaracteristica  [autor55] [Juvenil_masculina] [Misterio] [Terror] [Intermedia] [Superheroes] [Crimen_organizado] )
        (titulo  "Struggle of Combat")
    )

    ([libro313] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Adulta_femenina] [Drama] [Fantasia] [Intermedia] [Viajes_en_el_tiempo] [Militar] )
        (titulo  "Strategize of Opportunity")
    )

    ([libro314] of NovelaFiccion
        (tieneCaracteristica  [autor33] [Adulta_masculina] [Fantasia] [Comedia] [Intermedia] [Oeste] [Medieval] )
        (titulo  "Decimate of Regulations")
    )

    ([libro315] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_masculina] [Sobrenatural] [Drama] [Dificil] [Pirata] [Superheroes] )
        (titulo  "Attack of Freedom")
    )

    ([libro316] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Infantil] [Drama] [Aventura] [Intermedia] [Medieval] [Urbano] )
        (titulo  "Divide of Vengeance")
    )

    ([libro317] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Adulta_femenina] [Aventura] [Romance] [Dificil] [Pirata] [Viajes_en_el_tiempo] )
        (titulo  "Attack of Autonomy")
    )

    ([libro318] of NovelaFiccion
        (tieneCaracteristica  [autor58] [Adulta_masculina] [Accion] [Aventura] [Facil] [Vampiros] [Policiaco] )
        (titulo  "Infect of Redemption")
    )

    ([libro319] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Adulta_femenina] [Suspense] [Terror] [Dificil] [Psicologico] [Pirata] )
        (titulo  "Rule of Violation")
    )

    ([libro320] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Juvenil_masculina] [Aventura] [Comedia] [Facil] [Medieval] [Samurai] )
        (titulo  "Destruction and Power")
    )

    ([libro321] of NovelaFiccion
        (tieneCaracteristica  [autor8] [Juvenil_femenina] [CienciaFiccion] [Terror] [Facil] [Medieval] [Espacial] )
        (titulo  "Fortress and Land")
    )

    ([libro322] of NovelaFiccion
        (tieneCaracteristica  [autor59] [Adulta_masculina] [Suspense] [Drama] [Intermedia] [Militar] [Pirata] )
        (titulo  "Gateway and Cult")
    )

    ([libro323] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Juvenil_masculina] [Fantasia] [Romance] [Dificil] [Urbano] [Supervivencia] )
        (titulo  "Contract and Spells")
    )

    ([libro324] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Adulta_masculina] [Fantasia] [Misterio] [Facil] [Mitologia] [Urbano] )
        (titulo  "Murder and Dimension")
    )

    ([libro325] of NovelaFiccion
        (tieneCaracteristica  [autor59] [Adulta_masculina] [Accion] [Drama] [Dificil] [Espacial] [Samurai] )
        (titulo  "Memories and Codename")
    )

    ([libro326] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Adulta_masculina] [CienciaFiccion] [Comedia] [Facil] [Pirata] [Crimen_organizado] )
        (titulo  "Destruction and Symphony")
    )

    ([libro327] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Juvenil_femenina] [Terror] [Comedia] [Facil] [Mitologia] [Espacial] )
        (titulo  "Extinction and Year")
    )

    ([libro328] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_masculina] [Aventura] [Comedia] [Dificil] [Viajes_en_el_tiempo] [Vampiros] )
        (titulo  "Hunt and Codename")
    )

    ([libro329] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Adulta_masculina] [CienciaFiccion] [Suspense] [Facil] [Vikingos] [Medieval] )
        (titulo  "Guns and Garden")
    )

    ([libro330] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Terror] [Drama] [Facil] [Pirata] [Policiaco] )
        (titulo  "Salvation and War")
    )

    ([libro331] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Juvenil_femenina] [Drama] [Accion] [Intermedia] [Espacial] [Crimen_organizado] )
        (titulo  "Mutants and Dread")
    )

    ([libro332] of NovelaFiccion
        (tieneCaracteristica  [autor46] [Adulta_femenina] [Terror] [Romance] [Facil] [Policiaco] [Psicologico] )
        (titulo  "Prototypes and Disarray")
    )

    ([libro333] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Infantil] [Romance] [Misterio] [Dificil] [Espacial] [Supervivencia] )
        (titulo  "Warfare and Disarray")
    )

    ([libro334] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Juvenil_femenina] [CienciaFiccion] [Accion] [Intermedia] [Crimen_organizado] [Oeste] )
        (titulo  "Ambition and Oracles")
    )

    ([libro335] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_femenina] [Romance] [Aventura] [Facil] [Pirata] [Policiaco] )
        (titulo  "Vampires and Immortals")
    )

    ([libro336] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Juvenil_masculina] [Aventura] [Suspense] [Intermedia] [Superheroes] [Vampiros] )
        (titulo  "Innocents and Souls")
    )

    ([libro337] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Juvenil_masculina] [Suspense] [Accion] [Facil] [Urbano] [Viajes_en_el_tiempo] )
        (titulo  "Insanity and Truth")
    )

    ([libro338] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Juvenil_masculina] [Fantasia] [Comedia] [Facil] [Policiaco] [Medieval] )
        (titulo  "Armor and Valor")
    )

    ([libro339] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Adulta_femenina] [Accion] [Suspense] [Intermedia] [Psicologico] [Viajes_en_el_tiempo] )
        (titulo  "Nightmares and Blood")
    )

    ([libro340] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Juvenil_masculina] [Sobrenatural] [Accion] [Dificil] [Viajes_en_el_tiempo] [Psicologico] )
        (titulo  "Astroheart")
    )

    ([libro341] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Juvenil_femenina] [Sobrenatural] [Drama] [Intermedia] [Crimen_organizado] [Samurai] )
        (titulo  "Datarush")
    )

    ([libro342] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Infantil] [Sobrenatural] [CienciaFiccion] [Dificil] [Militar] [Vampiros] )
        (titulo  "Evercraze")
    )

    ([libro343] of NovelaFiccion
        (tieneCaracteristica  [autor58] [Juvenil_femenina] [Misterio] [Sobrenatural] [Facil] [Policiaco] [Militar] )
        (titulo  "Fusionfight")
    )

    ([libro344] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Adulta_femenina] [Comedia] [Sobrenatural] [Dificil] [Policiaco] [Militar] )
        (titulo  "Crossforce")
    )

    ([libro345] of NovelaFiccion
        (tieneCaracteristica  [autor81] [Adulta_femenina] [Comedia] [Accion] [Dificil] [Espacial] [Psicologico] )
        (titulo  "Cyberfire")
    )

    ([libro346] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Juvenil_femenina] [Drama] [Romance] [Facil] [Superheroes] [Urbano] )
        (titulo  "Dreadspace")
    )

    ([libro347] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Adulta_masculina] [Drama] [Misterio] [Facil] [Superheroes] [Mitologia] )
        (titulo  "Battlerush")
    )

    ([libro348] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Adulta_masculina] [Romance] [Aventura] [Facil] [Samurai] [Policiaco] )
        (titulo  "Blocklust")
    )

    ([libro349] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Adulta_femenina] [Drama] [Fantasia] [Dificil] [Oeste] [Militar] )
        (titulo  "Deltawind")
    )

    ([libro350] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_femenina] [Accion] [Suspense] [Dificil] [Viajes_en_el_tiempo] [Psicologico] )
        (titulo  "Solitary Curse")
    )

    ([libro351] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_masculina] [Romance] [Fantasia] [Facil] [Viajes_en_el_tiempo] [Crimen_organizado] )
        (titulo  "Cannibal Resurrection")
    )

    ([libro352] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Adulta_masculina] [Suspense] [Aventura] [Intermedia] [Espacial] [Mitologia] )
        (titulo  "Enemy Hazard")
    )

    ([libro353] of NovelaFiccion
        (tieneCaracteristica  [autor26] [Adulta_masculina] [Suspense] [Misterio] [Intermedia] [Superheroes] [Policiaco] )
        (titulo  "Blood Heart")
    )

    ([libro354] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Juvenil_masculina] [Comedia] [Drama] [Dificil] [Samurai] [Pirata] )
        (titulo  "Just Collapse")
    )

    ([libro355] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_femenina] [Fantasia] [Accion] [Dificil] [Supervivencia] [Policiaco] )
        (titulo  "Blood Invasion")
    )

    ([libro356] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Juvenil_masculina] [Sobrenatural] [Drama] [Facil] [Policiaco] [Oeste] )
        (titulo  "Tactical Premonition")
    )

    ([libro357] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Adulta_masculina] [Misterio] [Drama] [Intermedia] [Viajes_en_el_tiempo] [Superheroes] )
        (titulo  "Death Aftermath")
    )

    ([libro358] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_masculina] [Accion] [Drama] [Facil] [Crimen_organizado] [Superheroes] )
        (titulo  "Saint Vendetta")
    )

    ([libro359] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Juvenil_femenina] [Comedia] [Fantasia] [Facil] [Superheroes] [Psicologico] )
        (titulo  "Cold Syndrome")
    )

    ([libro360] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Juvenil_femenina] [Comedia] [Terror] [Intermedia] [Viajes_en_el_tiempo] [Oeste] )
        (titulo  "Besiege of Conflict")
    )

    ([libro361] of NovelaFiccion
        (tieneCaracteristica  [autor53] [Juvenil_masculina] [Misterio] [Fantasia] [Intermedia] [Medieval] [Policiaco] )
        (titulo  "Arm of Campaigns")
    )

    ([libro362] of NovelaFiccion
        (tieneCaracteristica  [autor4] [Juvenil_femenina] [Comedia] [Aventura] [Facil] [Samurai] [Psicologico] )
        (titulo  "Strife of Democracy")
    )

    ([libro363] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Adulta_femenina] [Suspense] [Drama] [Intermedia] [Crimen_organizado] [Supervivencia] )
        (titulo  "Attack of Freedom")
    )

    ([libro364] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Infantil] [Accion] [Fantasia] [Facil] [Militar] [Oeste] )
        (titulo  "Run of Heroics")
    )

    ([libro365] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Adulta_masculina] [Comedia] [Terror] [Dificil] [Oeste] [Medieval] )
        (titulo  "Raid of Heroes")
    )

    ([libro366] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_femenina] [Suspense] [Misterio] [Intermedia] [Policiaco] [Medieval] )
        (titulo  "Crash of Law")
    )

    ([libro367] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Juvenil_masculina] [Romance] [Drama] [Intermedia] [Vampiros] [Medieval] )
        (titulo  "Demolish of Resitution")
    )

    ([libro368] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Juvenil_femenina] [Sobrenatural] [Aventura] [Dificil] [Crimen_organizado] [Militar] )
        (titulo  "Hunt of Campaigns")
    )

    ([libro369] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Infantil] [Fantasia] [Aventura] [Dificil] [Pirata] [Vikingos] )
        (titulo  "Counter of Prosecution")
    )

    ([libro370] of NovelaFiccion
        (tieneCaracteristica  [autor87] [Adulta_femenina] [Sobrenatural] [Terror] [Facil] [Pirata] [Mitologia] )
        (titulo  "Fortress and Extinction")
    )

    ([libro371] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Adulta_femenina] [Suspense] [Romance] [Intermedia] [Vikingos] [Urbano] )
        (titulo  "Paradise and Maze")
    )

    ([libro372] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_femenina] [Accion] [CienciaFiccion] [Dificil] [Samurai] [Superheroes] )
        (titulo  "City and Battlefield")
    )

    ([libro373] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Adulta_femenina] [Misterio] [Drama] [Intermedia] [Supervivencia] [Mitologia] )
        (titulo  "Murder and Force")
    )

    ([libro374] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Infantil] [Aventura] [Comedia] [Facil] [Superheroes] [Psicologico] )
        (titulo  "Spells and Renegade")
    )

    ([libro375] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Adulta_femenina] [Fantasia] [Misterio] [Dificil] [Policiaco] [Militar] )
        (titulo  "Empire and Raid")
    )

    ([libro376] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Juvenil_masculina] [Fantasia] [Comedia] [Intermedia] [Psicologico] [Crimen_organizado] )
        (titulo  "Crime and Voyage")
    )

    ([libro377] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Adulta_femenina] [Misterio] [Accion] [Facil] [Militar] [Espacial] )
        (titulo  "Land and Embers")
    )

    ([libro378] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Infantil] [Accion] [Fantasia] [Dificil] [Psicologico] [Medieval] )
        (titulo  "Force and Streets")
    )

    ([libro379] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Infantil] [Aventura] [Comedia] [Intermedia] [Vikingos] [Pirata] )
        (titulo  "Fortress and Force")
    )

    ([libro380] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Adulta_masculina] [Accion] [Drama] [Intermedia] [Medieval] [Viajes_en_el_tiempo] )
        (titulo  "Disorder and Gangs")
    )

    ([libro381] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Adulta_masculina] [Comedia] [Terror] [Facil] [Vampiros] [Militar] )
        (titulo  "Frenzy and Existence")
    )

    ([libro382] of NovelaFiccion
        (tieneCaracteristica  [autor34] [Juvenil_femenina] [Misterio] [Fantasia] [Dificil] [Vampiros] [Samurai] )
        (titulo  "Infinity and Nature")
    )

    ([libro383] of NovelaFiccion
        (tieneCaracteristica  [autor0] [Juvenil_masculina] [Romance] [Terror] [Dificil] [Pirata] [Crimen_organizado] )
        (titulo  "Havoc and Conflict")
    )

    ([libro384] of NovelaFiccion
        (tieneCaracteristica  [autor94] [Adulta_femenina] [Sobrenatural] [Misterio] [Intermedia] [Mitologia] [Supervivencia] )
        (titulo  "Misery and Fire")
    )

    ([libro385] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Adulta_femenina] [CienciaFiccion] [Comedia] [Dificil] [Oeste] [Mitologia] )
        (titulo  "Explosions and Androids")
    )

    ([libro386] of NovelaFiccion
        (tieneCaracteristica  [autor50] [Adulta_masculina] [Comedia] [CienciaFiccion] [Facil] [Urbano] [Policiaco] )
        (titulo  "Zombies and Time")
    )

    ([libro387] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Juvenil_femenina] [Comedia] [Suspense] [Dificil] [Viajes_en_el_tiempo] [Medieval] )
        (titulo  "Vampires and Panic")
    )

    ([libro388] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Adulta_masculina] [Comedia] [Fantasia] [Dificil] [Samurai] [Mitologia] )
        (titulo  "Logic and Agony")
    )

    ([libro389] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Adulta_masculina] [CienciaFiccion] [Misterio] [Facil] [Superheroes] [Espacial] )
        (titulo  "Awe and Nothing")
    )

    ([libro390] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Juvenil_femenina] [Terror] [Accion] [Dificil] [Psicologico] [Superheroes] )
        (titulo  "Ultradude")
    )

    ([libro391] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Adulta_masculina] [CienciaFiccion] [Romance] [Facil] [Viajes_en_el_tiempo] [Policiaco] )
        (titulo  "Chromaplan")
    )

    ([libro392] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Adulta_femenina] [Drama] [Romance] [Facil] [Urbano] [Superheroes] )
        (titulo  "Clusterworks")
    )

    ([libro393] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Infantil] [Fantasia] [Terror] [Facil] [Policiaco] [Superheroes] )
        (titulo  "Grimland")
    )

    ([libro394] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Juvenil_masculina] [Romance] [Fantasia] [Dificil] [Mitologia] [Pirata] )
        (titulo  "Alterside")
    )

    ([libro395] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Juvenil_masculina] [Comedia] [Fantasia] [Intermedia] [Superheroes] [Samurai] )
        (titulo  "Bloodbot")
    )

    ([libro396] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Adulta_masculina] [Accion] [Suspense] [Intermedia] [Militar] [Viajes_en_el_tiempo] )
        (titulo  "Crossrage")
    )

    ([libro397] of NovelaFiccion
        (tieneCaracteristica  [autor33] [Adulta_masculina] [Fantasia] [Misterio] [Dificil] [Superheroes] [Samurai] )
        (titulo  "Blasterlife")
    )

    ([libro398] of NovelaFiccion
        (tieneCaracteristica  [autor65] [Adulta_femenina] [CienciaFiccion] [Accion] [Facil] [Viajes_en_el_tiempo] [Urbano] )
        (titulo  "Endorwind")
    )

    ([libro399] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Infantil] [Drama] [Terror] [Dificil] [Vampiros] [Supervivencia] )
        (titulo  "Cybernite")
    )

    ([Accion] of Genero
         (nombre  "Accion")
    )

    ([Adulta_femenina] of Demografia
         (nombre  "Adulta_femenina")
    )

    ([Adulta_masculina] of Demografia
         (nombre  "Adulta_masculina")
    )

    ([Aventura] of Genero
         (nombre  "Aventura")
    )

    ([CienciaFiccion] of Genero
         (nombre  "Ciencia ficcion")
    )

    ([Comedia] of Genero
         (nombre  "Comedia")
    )

    ([Crimen_organizado] of Tema
         (nombre  "Crimen organizado")
    )

    ([Dificil] of Dificultad
         (nombre  "Dificil")
    )

    ([Drama] of Genero
         (nombre  "Drama")
    )

    ([Espacial] of Tema
         (nombre  "Espacial")
    )

    ([Facil] of Dificultad
         (nombre  "Facil")
    )

    ([Fantasia] of Genero
         (nombre  "Fantasia")
    )

    ([Infantil] of Demografia
         (nombre  "Infantil")
    )

    ([Intermedia] of Dificultad
         (nombre  "Intermedia")
    )

    ([Juvenil_femenina] of Demografia
         (nombre  "Juvenil_femenina")
    )

    ([Juvenil_masculina] of Demografia
         (nombre  "Juvenil_masculina")
    )

    ([Medieval] of Tema
         (nombre  "Medieval")
    )

    ([Militar] of Tema
         (nombre  "Militar")
    )

    ([Misterio] of Genero
         (nombre  "Misterio")
    )

    ([Mitologia] of Tema
         (nombre  "Mitologia")
    )

    ([Oeste] of Tema
         (nombre  "Oeste")
    )

    ([Pirata] of Tema
         (nombre  "Pirata")
    )

    ([Policiaco] of Tema
         (nombre  "Policiaco")
    )

    ([Psicologico] of Tema
         (nombre  "Psicologico")
    )

    ([Romance] of Genero
         (nombre  "Romance")
    )

    ([Samurai] of Tema
         (nombre  "Samurai")
    )

    ([Sobrenatural] of Genero
         (nombre  "Sobrenatural")
    )

    ([Superheroes] of Tema
         (nombre  "Superheroes")
    )

    ([Supervivencia] of Tema
         (nombre  "Supervivencia")
    )

    ([Suspense] of Genero
         (nombre  "Suspense")
    )

    ([Terror] of Genero
         (nombre  "Terror")
    )

    ([Urbano] of Tema
         (nombre  "Urbano")
    )

    ([Vampiros] of Tema
         (nombre  "Vampiros")
    )

    ([Viajes_en_el_tiempo] of Tema
         (nombre  "Viajes en el tiempo")
    )

    ([Vikingos] of Tema
         (nombre  "Vikingos")
    )

    ([Nada_popular] of Popularidad
        (nombre  "Nada popular") 
    )

    ([Conocido] of Popularidad
        (nombre  "Conocido") 
    )

    ([BestSeller] of Popularidad
        (nombre  "BestSeller") 
    )

    ([Grande] of Tamano
        (nombre "Grande")
    )
    ([Pequeno] of Tamano
        (nombre "Pequeno")
    )
)
