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
    (multislot razones
        (type STRING)
        (create-accessor read-write)
    )
)

(definstances instances
    ([libro0] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_femenina] [Fantasia] [Drama] [Facil] [Mitologia] [Medieval] [Nada_popular] [Pequeno] )
        (titulo  "Zombie Predator")
        (valoracion 1)
    )

    ([libro1] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Juvenil_masculina] [Terror] [Suspense] [Intermedia] [Supervivencia] [Pirata] [BestSeller] [Grande] )
        (titulo  "Hunting Chronicles")
        (valoracion 4)
    )

    ([libro2] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Adulta_femenina] [Misterio] [Sobrenatural] [Dificil] [Superheroes] [Samurai] [Nada_popular] [Grande] )
        (titulo  "Cloud Tales")
        (valoracion 0)
    )

    ([libro3] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Infantil] [Fantasia] [Comedia] [Facil] [Urbano] [Supervivencia] [BestSeller] [Grande] )
        (titulo  "Light Nightmare")
        (valoracion 3)
    )

    ([libro4] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Infantil] [Aventura] [Sobrenatural] [Intermedia] [Samurai] [Oeste] [Conocido] [Grande] )
        (titulo  "Emergency Age")
        (valoracion 5)
    )

    ([libro5] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Adulta_masculina] [Accion] [Fantasia] [Facil] [Policiaco] [Militar] [Conocido] [Pequeno] )
        (titulo  "Bio Syndrome")
        (valoracion 1)
    )

    ([libro6] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Juvenil_masculina] [Romance] [Misterio] [Dificil] [Vikingos] [Crimen_organizado] [Nada_popular] [Grande] )
        (titulo  "Phantom Realm")
        (valoracion 0)
    )

    ([libro7] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Juvenil_masculina] [Aventura] [Fantasia] [Intermedia] [Urbano] [Vikingos] [Nada_popular] [Pequeno] )
        (titulo  "Celestial Panic")
        (valoracion 4)
    )

    ([libro8] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Juvenil_masculina] [Aventura] [Misterio] [Intermedia] [Mitologia] [Militar] [Conocido] [Grande] )
        (titulo  "Dragon Alert")
        (valoracion 4)
    )

    ([libro9] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Juvenil_femenina] [Sobrenatural] [Drama] [Intermedia] [Superheroes] [Supervivencia] [BestSeller] [Grande] )
        (titulo  "Arctic Betrayal")
        (valoracion 4)
    )

    ([libro10] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Juvenil_masculina] [Drama] [Accion] [Facil] [Vampiros] [Samurai] [Nada_popular] [Grande] )
        (titulo  "Strife of Lies")
        (valoracion 0)
    )

    ([libro11] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Adulta_masculina] [Romance] [Fantasia] [Intermedia] [Supervivencia] [Mitologia] [BestSeller] [Grande] )
        (titulo  "Rise of Democracy")
        (valoracion 4)
    )

    ([libro12] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Juvenil_masculina] [Aventura] [Sobrenatural] [Facil] [Medieval] [Policiaco] [Nada_popular] [Pequeno] )
        (titulo  "Incinerate of Law")
        (valoracion 0)
    )

    ([libro13] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Infantil] [Accion] [Romance] [Intermedia] [Policiaco] [Medieval] [Conocido] [Grande] )
        (titulo  "Strife of Immunity")
        (valoracion 2)
    )

    ([libro14] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Juvenil_masculina] [Romance] [Terror] [Intermedia] [Viajes_en_el_tiempo] [Supervivencia] [Nada_popular] [Grande] )
        (titulo  "Clash of Transgression")
        (valoracion 1)
    )

    ([libro15] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Adulta_femenina] [Accion] [Romance] [Dificil] [Viajes_en_el_tiempo] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Battle of War")
        (valoracion 3)
    )

    ([libro16] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Juvenil_masculina] [Suspense] [Terror] [Intermedia] [Superheroes] [Militar] [Nada_popular] [Pequeno] )
        (titulo  "Infect of Immunity")
        (valoracion 0)
    )

    ([libro17] of NovelaFiccion
        (tieneCaracteristica  [autor81] [Juvenil_femenina] [Suspense] [Terror] [Dificil] [Vikingos] [Medieval] [Nada_popular] [Pequeno] )
        (titulo  "Shoot of Deception")
        (valoracion 4)
    )

    ([libro18] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Infantil] [Fantasia] [Drama] [Intermedia] [Viajes_en_el_tiempo] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Battle of Truth")
        (valoracion 0)
    )

    ([libro19] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Infantil] [Sobrenatural] [Fantasia] [Intermedia] [Urbano] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Chase of Retribution")
        (valoracion 4)
    )

    ([libro20] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Adulta_femenina] [CienciaFiccion] [Terror] [Intermedia] [Vampiros] [Medieval] [BestSeller] [Pequeno] )
        (titulo  "Decade and World")
        (valoracion 4)
    )

    ([libro21] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Juvenil_femenina] [Accion] [Sobrenatural] [Facil] [Policiaco] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Embers and Cult")
        (valoracion 4)
    )

    ([libro22] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Juvenil_femenina] [Misterio] [Romance] [Intermedia] [Espacial] [Samurai] [Nada_popular] [Grande] )
        (titulo  "Crime and Force")
        (valoracion 2)
    )

    ([libro23] of NovelaFiccion
        (tieneCaracteristica  [autor43] [Adulta_femenina] [CienciaFiccion] [Suspense] [Dificil] [Crimen_organizado] [Pirata] [BestSeller] [Grande] )
        (titulo  "Maze and Remorse")
        (valoracion 3)
    )

    ([libro24] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Infantil] [Accion] [Sobrenatural] [Facil] [Urbano] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Year and Command")
        (valoracion 1)
    )

    ([libro25] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Adulta_femenina] [Comedia] [Accion] [Facil] [Militar] [Vikingos] [Nada_popular] [Pequeno] )
        (titulo  "Ghosts and Year")
        (valoracion 3)
    )

    ([libro26] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Juvenil_femenina] [Comedia] [Misterio] [Facil] [Mitologia] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Land and Nature")
        (valoracion 5)
    )

    ([libro27] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Adulta_femenina] [Fantasia] [CienciaFiccion] [Intermedia] [Superheroes] [Pirata] [Conocido] [Grande] )
        (titulo  "Day and Dimension")
        (valoracion 1)
    )

    ([libro28] of NovelaFiccion
        (tieneCaracteristica  [autor97] [Infantil] [Sobrenatural] [Comedia] [Intermedia] [Mitologia] [Policiaco] [BestSeller] [Pequeno] )
        (titulo  "Invasion and House")
        (valoracion 2)
    )

    ([libro29] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Adulta_masculina] [Fantasia] [Drama] [Intermedia] [Militar] [Viajes_en_el_tiempo] [BestSeller] [Grande] )
        (titulo  "Century and Battlefield")
        (valoracion 2)
    )

    ([libro30] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Infantil] [Accion] [Misterio] [Facil] [Supervivencia] [Urbano] [Conocido] [Pequeno] )
        (titulo  "Gangs and Reckoning")
        (valoracion 1)
    )

    ([libro31] of NovelaFiccion
        (tieneCaracteristica  [autor8] [Infantil] [Aventura] [Sobrenatural] [Facil] [Vikingos] [Mitologia] [BestSeller] [Pequeno] )
        (titulo  "Destruction and Infinity")
        (valoracion 0)
    )

    ([libro32] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Infantil] [Drama] [Misterio] [Facil] [Espacial] [Oeste] [Conocido] [Grande] )
        (titulo  "Mayhem and Nightmares")
        (valoracion 2)
    )

    ([libro33] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Adulta_femenina] [Aventura] [Romance] [Facil] [Vampiros] [Superheroes] [Conocido] [Grande] )
        (titulo  "Fortune and Heroes")
        (valoracion 1)
    )

    ([libro34] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Adulta_femenina] [Misterio] [Sobrenatural] [Dificil] [Pirata] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Mortals and Zombies")
        (valoracion 1)
    )

    ([libro35] of NovelaFiccion
        (tieneCaracteristica  [autor58] [Infantil] [Comedia] [Accion] [Facil] [Policiaco] [Supervivencia] [Nada_popular] [Grande] )
        (titulo  "Disorder and Victory")
        (valoracion 4)
    )

    ([libro36] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Adulta_femenina] [CienciaFiccion] [Drama] [Facil] [Psicologico] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Despair and Freedom")
        (valoracion 1)
    )

    ([libro37] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Adulta_femenina] [Accion] [Sobrenatural] [Intermedia] [Superheroes] [Psicologico] [BestSeller] [Pequeno] )
        (titulo  "Heroes and Mayhem")
        (valoracion 2)
    )

    ([libro38] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Juvenil_masculina] [Suspense] [Romance] [Intermedia] [Vampiros] [Urbano] [Nada_popular] [Grande] )
        (titulo  "Kings and Doubt")
        (valoracion 0)
    )

    ([libro39] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Juvenil_femenina] [Sobrenatural] [Fantasia] [Intermedia] [Urbano] [Crimen_organizado] [Nada_popular] [Pequeno] )
        (titulo  "Hope and Awe")
        (valoracion 1)
    )

    ([libro40] of NovelaFiccion
        (tieneCaracteristica  [autor7] [Juvenil_femenina] [Fantasia] [Misterio] [Intermedia] [Psicologico] [Mitologia] [BestSeller] [Grande] )
        (titulo  "Bordershot")
        (valoracion 3)
    )

    ([libro41] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Juvenil_masculina] [Terror] [Drama] [Facil] [Crimen_organizado] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Airbot")
        (valoracion 0)
    )

    ([libro42] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Juvenil_masculina] [Drama] [Fantasia] [Dificil] [Superheroes] [Supervivencia] [Nada_popular] [Grande] )
        (titulo  "Brutalreign")
        (valoracion 0)
    )

    ([libro43] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Adulta_femenina] [Romance] [Aventura] [Facil] [Vikingos] [Viajes_en_el_tiempo] [Nada_popular] [Pequeno] )
        (titulo  "Fusionland")
        (valoracion 0)
    )

    ([libro44] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Adulta_femenina] [Fantasia] [Suspense] [Facil] [Superheroes] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Blasterblast")
        (valoracion 5)
    )

    ([libro45] of NovelaFiccion
        (tieneCaracteristica  [autor76] [Juvenil_femenina] [Terror] [Comedia] [Dificil] [Viajes_en_el_tiempo] [Vikingos] [Conocido] [Grande] )
        (titulo  "Blocknite")
        (valoracion 2)
    )

    ([libro46] of NovelaFiccion
        (tieneCaracteristica  [autor8] [Infantil] [CienciaFiccion] [Comedia] [Dificil] [Oeste] [Medieval] [Nada_popular] [Grande] )
        (titulo  "Alterforce")
        (valoracion 0)
    )

    ([libro47] of NovelaFiccion
        (tieneCaracteristica  [autor76] [Adulta_femenina] [Misterio] [Accion] [Intermedia] [Crimen_organizado] [Espacial] [Conocido] [Grande] )
        (titulo  "Crosschase")
        (valoracion 1)
    )

    ([libro48] of NovelaFiccion
        (tieneCaracteristica  [autor10] [Infantil] [Drama] [Terror] [Intermedia] [Crimen_organizado] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Evercore")
        (valoracion 4)
    )

    ([libro49] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Adulta_masculina] [Drama] [Sobrenatural] [Facil] [Oeste] [Psicologico] [Conocido] [Grande] )
        (titulo  "Fuselight")
        (valoracion 0)
    )

    ([libro50] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Infantil] [Terror] [Suspense] [Dificil] [Crimen_organizado] [Urbano] [Nada_popular] [Pequeno] )
        (titulo  "Private Breed")
        (valoracion 4)
    )

    ([libro51] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Juvenil_femenina] [Comedia] [CienciaFiccion] [Intermedia] [Espacial] [Samurai] [Conocido] [Pequeno] )
        (titulo  "Honor Barrage")
        (valoracion 2)
    )

    ([libro52] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Juvenil_masculina] [Accion] [Comedia] [Intermedia] [Urbano] [Samurai] [BestSeller] [Grande] )
        (titulo  "Infernal Inquisition")
        (valoracion 3)
    )

    ([libro53] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Adulta_masculina] [Accion] [Fantasia] [Intermedia] [Viajes_en_el_tiempo] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Carnivore Castle")
        (valoracion 2)
    )

    ([libro54] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Adulta_masculina] [Romance] [Drama] [Dificil] [Supervivencia] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Bullet Assault")
        (valoracion 2)
    )

    ([libro55] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Infantil] [Misterio] [CienciaFiccion] [Dificil] [Militar] [Viajes_en_el_tiempo] [BestSeller] [Grande] )
        (titulo  "Crimson Edge")
        (valoracion 1)
    )

    ([libro56] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Infantil] [Terror] [Comedia] [Intermedia] [Pirata] [Psicologico] [Conocido] [Pequeno] )
        (titulo  "Forbidden Omen")
        (valoracion 3)
    )

    ([libro57] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Adulta_masculina] [Aventura] [CienciaFiccion] [Intermedia] [Mitologia] [Medieval] [Nada_popular] [Pequeno] )
        (titulo  "Hunting Impact")
        (valoracion 3)
    )

    ([libro58] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_masculina] [Sobrenatural] [Terror] [Dificil] [Viajes_en_el_tiempo] [Militar] [Nada_popular] [Grande] )
        (titulo  "Phantom Betrayal")
        (valoracion 4)
    )

    ([libro59] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Infantil] [Suspense] [Drama] [Dificil] [Urbano] [Supervivencia] [Nada_popular] [Grande] )
        (titulo  "Cloud Survival")
        (valoracion 0)
    )

    ([libro60] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Adulta_masculina] [Drama] [Fantasia] [Facil] [Vampiros] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Infect of Autonomy")
        (valoracion 0)
    )

    ([libro61] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Adulta_masculina] [Sobrenatural] [CienciaFiccion] [Intermedia] [Oeste] [Vampiros] [Conocido] [Grande] )
        (titulo  "Incinerate of Infringement")
        (valoracion 5)
    )

    ([libro62] of NovelaFiccion
        (tieneCaracteristica  [autor53] [Adulta_femenina] [Comedia] [Sobrenatural] [Dificil] [Samurai] [Medieval] [Conocido] [Pequeno] )
        (titulo  "Breakout of War")
        (valoracion 2)
    )

    ([libro63] of NovelaFiccion
        (tieneCaracteristica  [autor4] [Infantil] [Romance] [Fantasia] [Dificil] [Urbano] [Crimen_organizado] [Nada_popular] [Pequeno] )
        (titulo  "Defeat of Immunity")
        (valoracion 2)
    )

    ([libro64] of NovelaFiccion
        (tieneCaracteristica  [autor34] [Adulta_masculina] [Comedia] [Aventura] [Intermedia] [Militar] [Mitologia] [Nada_popular] [Pequeno] )
        (titulo  "Crash of Conflict")
        (valoracion 1)
    )

    ([libro65] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Juvenil_femenina] [Suspense] [Romance] [Intermedia] [Militar] [Samurai] [Conocido] [Pequeno] )
        (titulo  "Guard of Rule")
        (valoracion 5)
    )

    ([libro66] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Juvenil_femenina] [Suspense] [Fantasia] [Facil] [Psicologico] [Vikingos] [Conocido] [Grande] )
        (titulo  "Vengeance of Regulations")
        (valoracion 4)
    )

    ([libro67] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Juvenil_masculina] [Accion] [Aventura] [Facil] [Viajes_en_el_tiempo] [Vampiros] [Conocido] [Grande] )
        (titulo  "Guard of Autonomy")
        (valoracion 1)
    )

    ([libro68] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Juvenil_masculina] [Fantasia] [Aventura] [Dificil] [Pirata] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Fight of Campaigns")
        (valoracion 1)
    )

    ([libro69] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Adulta_masculina] [Drama] [Romance] [Dificil] [Samurai] [Viajes_en_el_tiempo] [Conocido] [Grande] )
        (titulo  "Fortify of Transgression")
        (valoracion 1)
    )

    ([libro70] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Juvenil_femenina] [Drama] [Aventura] [Intermedia] [Vampiros] [Medieval] [BestSeller] [Grande] )
        (titulo  "Graves and Weapons")
        (valoracion 2)
    )

    ([libro71] of NovelaFiccion
        (tieneCaracteristica  [autor10] [Infantil] [Aventura] [Misterio] [Intermedia] [Vikingos] [Mitologia] [Conocido] [Grande] )
        (titulo  "Descent and Words")
        (valoracion 4)
    )

    ([libro72] of NovelaFiccion
        (tieneCaracteristica  [autor48] [Juvenil_masculina] [Fantasia] [Comedia] [Dificil] [Urbano] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Words and Fight")
        (valoracion 4)
    )

    ([libro73] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Juvenil_femenina] [Drama] [Accion] [Intermedia] [Vampiros] [Viajes_en_el_tiempo] [Nada_popular] [Pequeno] )
        (titulo  "Thunder and Voyage")
        (valoracion 5)
    )

    ([libro74] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Juvenil_femenina] [Misterio] [CienciaFiccion] [Intermedia] [Oeste] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Dream and Century")
        (valoracion 1)
    )

    ([libro75] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Juvenil_femenina] [Aventura] [Drama] [Dificil] [Policiaco] [Viajes_en_el_tiempo] [Nada_popular] [Pequeno] )
        (titulo  "Shadow and Descent")
        (valoracion 3)
    )

    ([libro76] of NovelaFiccion
        (tieneCaracteristica  [autor46] [Juvenil_femenina] [Fantasia] [Comedia] [Intermedia] [Crimen_organizado] [Medieval] [BestSeller] [Grande] )
        (titulo  "Sons and Graves")
        (valoracion 1)
    )

    ([libro77] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Juvenil_femenina] [Accion] [Misterio] [Facil] [Pirata] [Psicologico] [BestSeller] [Pequeno] )
        (titulo  "Danger and Cult")
        (valoracion 5)
    )

    ([libro78] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Infantil] [Comedia] [Sobrenatural] [Facil] [Espacial] [Vampiros] [Conocido] [Pequeno] )
        (titulo  "Sword and Science")
        (valoracion 1)
    )

    ([libro79] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Juvenil_femenina] [Drama] [Comedia] [Dificil] [Supervivencia] [Vikingos] [Nada_popular] [Grande] )
        (titulo  "Defense and Codename")
        (valoracion 0)
    )

    ([libro80] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Juvenil_masculina] [Aventura] [Accion] [Dificil] [Pirata] [Medieval] [Conocido] [Pequeno] )
        (titulo  "Liberty and Fortune")
        (valoracion 0)
    )

    ([libro81] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_masculina] [Suspense] [Fantasia] [Dificil] [Mitologia] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Agony and Harmony")
        (valoracion 2)
    )

    ([libro82] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Juvenil_femenina] [Misterio] [Accion] [Facil] [Mitologia] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Fire and Logic")
        (valoracion 4)
    )

    ([libro83] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Adulta_masculina] [Sobrenatural] [Accion] [Dificil] [Crimen_organizado] [Urbano] [Nada_popular] [Grande] )
        (titulo  "Hell and Existence")
        (valoracion 4)
    )

    ([libro84] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_femenina] [Accion] [CienciaFiccion] [Facil] [Policiaco] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Gangs and Infinity")
        (valoracion 3)
    )

    ([libro85] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Adulta_femenina] [Suspense] [Fantasia] [Dificil] [Vampiros] [Medieval] [Nada_popular] [Pequeno] )
        (titulo  "Reckoning and Infinity")
        (valoracion 5)
    )

    ([libro86] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Juvenil_femenina] [Drama] [Romance] [Intermedia] [Samurai] [Psicologico] [Nada_popular] [Grande] )
        (titulo  "Action and Panic")
        (valoracion 0)
    )

    ([libro87] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Adulta_masculina] [Suspense] [Fantasia] [Facil] [Viajes_en_el_tiempo] [Militar] [BestSeller] [Pequeno] )
        (titulo  "Oracles and Angels")
        (valoracion 5)
    )

    ([libro88] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Juvenil_femenina] [Sobrenatural] [Fantasia] [Intermedia] [Medieval] [Espacial] [BestSeller] [Pequeno] )
        (titulo  "Evil and Angels")
        (valoracion 3)
    )

    ([libro89] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Adulta_masculina] [Misterio] [Accion] [Facil] [Superheroes] [Samurai] [BestSeller] [Grande] )
        (titulo  "Harmony and Misery")
        (valoracion 1)
    )

    ([libro90] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Juvenil_femenina] [Fantasia] [Suspense] [Intermedia] [Policiaco] [Mitologia] [BestSeller] [Pequeno] )
        (titulo  "Grimchase")
        (valoracion 4)
    )

    ([libro91] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Adulta_femenina] [Terror] [Sobrenatural] [Dificil] [Samurai] [Psicologico] [Conocido] [Pequeno] )
        (titulo  "Cloudstorm")
        (valoracion 5)
    )

    ([libro92] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_masculina] [Aventura] [Romance] [Dificil] [Pirata] [Espacial] [BestSeller] [Grande] )
        (titulo  "Bordersky")
        (valoracion 5)
    )

    ([libro93] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Adulta_masculina] [Sobrenatural] [Accion] [Facil] [Supervivencia] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Dynadude")
        (valoracion 0)
    )

    ([libro94] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Juvenil_femenina] [Sobrenatural] [Accion] [Facil] [Supervivencia] [Policiaco] [Nada_popular] [Pequeno] )
        (titulo  "Fireshock")
        (valoracion 3)
    )

    ([libro95] of NovelaFiccion
        (tieneCaracteristica  [autor10] [Juvenil_masculina] [Comedia] [Suspense] [Facil] [Oeste] [Espacial] [BestSeller] [Grande] )
        (titulo  "Crystalrage")
        (valoracion 4)
    )

    ([libro96] of NovelaFiccion
        (tieneCaracteristica  [autor0] [Adulta_femenina] [Suspense] [Fantasia] [Dificil] [Espacial] [Mitologia] [Conocido] [Grande] )
        (titulo  "Everdoom")
        (valoracion 1)
    )

    ([libro97] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_masculina] [Aventura] [Romance] [Dificil] [Oeste] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Endorwatch")
        (valoracion 4)
    )

    ([libro98] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Infantil] [Aventura] [Suspense] [Facil] [Mitologia] [Espacial] [BestSeller] [Pequeno] )
        (titulo  "Exrush")
        (valoracion 5)
    )

    ([libro99] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Adulta_masculina] [Sobrenatural] [Suspense] [Dificil] [Samurai] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Antipoint")
        (valoracion 5)
    )

    ([libro100] of NovelaFiccion
        (tieneCaracteristica  [autor19] [Infantil] [CienciaFiccion] [Aventura] [Dificil] [Espacial] [Pirata] [BestSeller] [Grande] )
        (titulo  "Carnivore Theft")
        (valoracion 2)
    )

    ([libro101] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Adulta_femenina] [Misterio] [Aventura] [Dificil] [Superheroes] [Vikingos] [Conocido] [Pequeno] )
        (titulo  "Dark Crusade")
        (valoracion 4)
    )

    ([libro102] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Juvenil_masculina] [Terror] [Drama] [Intermedia] [Vampiros] [Oeste] [BestSeller] [Grande] )
        (titulo  "Werewolf Age")
        (valoracion 4)
    )

    ([libro103] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Adulta_masculina] [Accion] [Fantasia] [Dificil] [Pirata] [Militar] [BestSeller] [Pequeno] )
        (titulo  "Obscure Master")
        (valoracion 1)
    )

    ([libro104] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_masculina] [Romance] [Suspense] [Facil] [Crimen_organizado] [Psicologico] [Conocido] [Pequeno] )
        (titulo  "Immortal Call")
        (valoracion 4)
    )

    ([libro105] of NovelaFiccion
        (tieneCaracteristica  [autor43] [Adulta_masculina] [Drama] [CienciaFiccion] [Facil] [Militar] [Psicologico] [Nada_popular] [Pequeno] )
        (titulo  "Secret Tales")
        (valoracion 2)
    )

    ([libro106] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Juvenil_masculina] [Terror] [Romance] [Intermedia] [Medieval] [Viajes_en_el_tiempo] [Conocido] [Pequeno] )
        (titulo  "Forbidden Escape")
        (valoracion 5)
    )

    ([libro107] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Adulta_masculina] [Misterio] [Romance] [Facil] [Viajes_en_el_tiempo] [Oeste] [Conocido] [Pequeno] )
        (titulo  "Ace Master")
        (valoracion 5)
    )

    ([libro108] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Juvenil_masculina] [Accion] [Sobrenatural] [Intermedia] [Viajes_en_el_tiempo] [Espacial] [Nada_popular] [Grande] )
        (titulo  "Bionic Armada")
        (valoracion 4)
    )

    ([libro109] of NovelaFiccion
        (tieneCaracteristica  [autor55] [Adulta_masculina] [Terror] [Fantasia] [Facil] [Urbano] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Twilight Elements")
        (valoracion 5)
    )

    ([libro110] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Adulta_femenina] [Romance] [Sobrenatural] [Intermedia] [Urbano] [Psicologico] [Nada_popular] [Grande] )
        (titulo  "Blast of Reason")
        (valoracion 0)
    )

    ([libro111] of NovelaFiccion
        (tieneCaracteristica  [autor10] [Infantil] [Fantasia] [Comedia] [Intermedia] [Medieval] [Espacial] [Nada_popular] [Grande] )
        (titulo  "Blast of Rivalry")
        (valoracion 5)
    )

    ([libro112] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Adulta_femenina] [Terror] [Romance] [Intermedia] [Samurai] [Urbano] [Nada_popular] [Grande] )
        (titulo  "Revolt of Friction")
        (valoracion 3)
    )

    ([libro113] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Infantil] [Misterio] [Fantasia] [Intermedia] [Viajes_en_el_tiempo] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Struggle of Treachery")
        (valoracion 0)
    )

    ([libro114] of NovelaFiccion
        (tieneCaracteristica  [autor93] [Infantil] [CienciaFiccion] [Romance] [Intermedia] [Urbano] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Assault of Violation")
        (valoracion 2)
    )

    ([libro115] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_femenina] [CienciaFiccion] [Aventura] [Facil] [Urbano] [Crimen_organizado] [Nada_popular] [Pequeno] )
        (titulo  "Destroy of Reason")
        (valoracion 5)
    )

    ([libro116] of NovelaFiccion
        (tieneCaracteristica  [autor22] [Juvenil_masculina] [Sobrenatural] [Romance] [Intermedia] [Vikingos] [Viajes_en_el_tiempo] [Conocido] [Grande] )
        (titulo  "Rise of Hypocrisy")
        (valoracion 2)
    )

    ([libro117] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Adulta_femenina] [Terror] [Sobrenatural] [Intermedia] [Urbano] [Superheroes] [Conocido] [Pequeno] )
        (titulo  "Strife of Opportunity")
        (valoracion 1)
    )

    ([libro118] of NovelaFiccion
        (tieneCaracteristica  [autor38] [Adulta_femenina] [Terror] [CienciaFiccion] [Facil] [Samurai] [Urbano] [Conocido] [Pequeno] )
        (titulo  "Crash of Violation")
        (valoracion 4)
    )

    ([libro119] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Juvenil_femenina] [Drama] [CienciaFiccion] [Facil] [Mitologia] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Wipe Out of Order")
        (valoracion 1)
    )

    ([libro120] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Juvenil_masculina] [Terror] [Misterio] [Facil] [Samurai] [Policiaco] [Nada_popular] [Pequeno] )
        (titulo  "Graves and Sons")
        (valoracion 1)
    )

    ([libro121] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_masculina] [Terror] [Misterio] [Facil] [Psicologico] [Vikingos] [BestSeller] [Grande] )
        (titulo  "Glitch and City")
        (valoracion 5)
    )

    ([libro122] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Adulta_femenina] [Accion] [Suspense] [Intermedia] [Urbano] [Medieval] [Conocido] [Pequeno] )
        (titulo  "Echoes and Weapons")
        (valoracion 1)
    )

    ([libro123] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Juvenil_femenina] [Accion] [Fantasia] [Dificil] [Oeste] [Espacial] [Nada_popular] [Grande] )
        (titulo  "Command and Order")
        (valoracion 2)
    )

    ([libro124] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_femenina] [CienciaFiccion] [Romance] [Facil] [Militar] [Policiaco] [Conocido] [Grande] )
        (titulo  "House and Battle")
        (valoracion 4)
    )

    ([libro125] of NovelaFiccion
        (tieneCaracteristica  [autor51] [Adulta_femenina] [Suspense] [Fantasia] [Intermedia] [Viajes_en_el_tiempo] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Embers and Sons")
        (valoracion 1)
    )

    ([libro126] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_femenina] [Sobrenatural] [Suspense] [Dificil] [Pirata] [Espacial] [Conocido] [Grande] )
        (titulo  "Knights and Danger")
        (valoracion 5)
    )

    ([libro127] of NovelaFiccion
        (tieneCaracteristica  [autor46] [Infantil] [Romance] [CienciaFiccion] [Facil] [Crimen_organizado] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Century and Hazard")
        (valoracion 0)
    )

    ([libro128] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Adulta_masculina] [Accion] [Drama] [Intermedia] [Medieval] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Quest and Force")
        (valoracion 3)
    )

    ([libro129] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_femenina] [Accion] [Aventura] [Dificil] [Supervivencia] [Espacial] [BestSeller] [Pequeno] )
        (titulo  "Battlefield and Doom")
        (valoracion 5)
    )

    ([libro130] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Adulta_femenina] [Romance] [Sobrenatural] [Dificil] [Policiaco] [Superheroes] [Conocido] [Grande] )
        (titulo  "Mayhem and Vampires")
        (valoracion 3)
    )

    ([libro131] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Adulta_masculina] [Sobrenatural] [Terror] [Dificil] [Vampiros] [Medieval] [BestSeller] [Grande] )
        (titulo  "Dragons and Truth")
        (valoracion 2)
    )

    ([libro132] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Adulta_masculina] [CienciaFiccion] [Comedia] [Facil] [Crimen_organizado] [Superheroes] [BestSeller] [Grande] )
        (titulo  "Legends and Death")
        (valoracion 2)
    )

    ([libro133] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Juvenil_masculina] [Romance] [Terror] [Intermedia] [Superheroes] [Crimen_organizado] [Conocido] [Grande] )
        (titulo  "Dread and Androids")
        (valoracion 0)
    )

    ([libro134] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Infantil] [Aventura] [Misterio] [Intermedia] [Mitologia] [Espacial] [Nada_popular] [Pequeno] )
        (titulo  "Victory and Disorder")
        (valoracion 3)
    )

    ([libro135] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Adulta_femenina] [Drama] [CienciaFiccion] [Intermedia] [Viajes_en_el_tiempo] [Crimen_organizado] [BestSeller] [Pequeno] )
        (titulo  "Truth and Dust")
        (valoracion 4)
    )

    ([libro136] of NovelaFiccion
        (tieneCaracteristica  [autor31] [Juvenil_femenina] [Drama] [Comedia] [Dificil] [Pirata] [Espacial] [BestSeller] [Pequeno] )
        (titulo  "Solitude and Immortals")
        (valoracion 2)
    )

    ([libro137] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Juvenil_masculina] [CienciaFiccion] [Suspense] [Dificil] [Viajes_en_el_tiempo] [Militar] [Nada_popular] [Grande] )
        (titulo  "Evolution and Nothing")
        (valoracion 5)
    )

    ([libro138] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Adulta_masculina] [Suspense] [Terror] [Dificil] [Samurai] [Pirata] [Conocido] [Grande] )
        (titulo  "Evolution and Logic")
        (valoracion 4)
    )

    ([libro139] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Adulta_femenina] [Terror] [Aventura] [Dificil] [Samurai] [Pirata] [BestSeller] [Grande] )
        (titulo  "Order and Vampires")
        (valoracion 3)
    )

    ([libro140] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Juvenil_masculina] [CienciaFiccion] [Drama] [Dificil] [Supervivencia] [Pirata] [Conocido] [Grande] )
        (titulo  "Blockblast")
        (valoracion 0)
    )

    ([libro141] of NovelaFiccion
        (tieneCaracteristica  [autor26] [Infantil] [Misterio] [Accion] [Dificil] [Pirata] [Urbano] [Nada_popular] [Pequeno] )
        (titulo  "Bioreign")
        (valoracion 4)
    )

    ([libro142] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_masculina] [Misterio] [Fantasia] [Facil] [Medieval] [Vikingos] [Nada_popular] [Grande] )
        (titulo  "Masterlust")
        (valoracion 5)
    )

    ([libro143] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Juvenil_femenina] [Aventura] [Terror] [Intermedia] [Viajes_en_el_tiempo] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Clustercraze")
        (valoracion 3)
    )

    ([libro144] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Adulta_masculina] [CienciaFiccion] [Misterio] [Intermedia] [Vampiros] [Espacial] [BestSeller] [Grande] )
        (titulo  "Airnite")
        (valoracion 1)
    )

    ([libro145] of NovelaFiccion
        (tieneCaracteristica  [autor55] [Juvenil_femenina] [Romance] [Misterio] [Facil] [Medieval] [Viajes_en_el_tiempo] [BestSeller] [Pequeno] )
        (titulo  "Deadsite")
        (valoracion 3)
    )

    ([libro146] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Adulta_masculina] [Drama] [Sobrenatural] [Dificil] [Medieval] [Superheroes] [Nada_popular] [Pequeno] )
        (titulo  "Demonnite")
        (valoracion 4)
    )

    ([libro147] of NovelaFiccion
        (tieneCaracteristica  [autor47] [Infantil] [CienciaFiccion] [Misterio] [Dificil] [Urbano] [Mitologia] [Nada_popular] [Pequeno] )
        (titulo  "Archewind")
        (valoracion 5)
    )

    ([libro148] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Adulta_femenina] [Sobrenatural] [Misterio] [Dificil] [Psicologico] [Policiaco] [BestSeller] [Grande] )
        (titulo  "Hellwatch")
        (valoracion 3)
    )

    ([libro149] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Adulta_femenina] [Drama] [Accion] [Intermedia] [Samurai] [Superheroes] [Conocido] [Grande] )
        (titulo  "Bladeflight")
        (valoracion 1)
    )

    ([libro150] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Juvenil_masculina] [Misterio] [Romance] [Facil] [Crimen_organizado] [Espacial] [Nada_popular] [Grande] )
        (titulo  "Silver Elements")
        (valoracion 0)
    )

    ([libro151] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Juvenil_femenina] [Comedia] [Sobrenatural] [Dificil] [Mitologia] [Crimen_organizado] [Conocido] [Pequeno] )
        (titulo  "Zombie Tombs")
        (valoracion 2)
    )

    ([libro152] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Juvenil_femenina] [Drama] [Suspense] [Intermedia] [Psicologico] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Death Invasion")
        (valoracion 1)
    )

    ([libro153] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Juvenil_femenina] [Fantasia] [Drama] [Facil] [Medieval] [Vikingos] [BestSeller] [Pequeno] )
        (titulo  "Armageddon Omen")
        (valoracion 1)
    )

    ([libro154] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Romance] [Sobrenatural] [Facil] [Policiaco] [Crimen_organizado] [Nada_popular] [Grande] )
        (titulo  "Werewolf Vendetta")
        (valoracion 5)
    )

    ([libro155] of NovelaFiccion
        (tieneCaracteristica  [autor40] [Juvenil_masculina] [Misterio] [Romance] [Dificil] [Psicologico] [Mitologia] [Conocido] [Grande] )
        (titulo  "Atomic Panic")
        (valoracion 5)
    )

    ([libro156] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Adulta_masculina] [Suspense] [Drama] [Intermedia] [Pirata] [Samurai] [BestSeller] [Pequeno] )
        (titulo  "Shadow Experiment")
        (valoracion 4)
    )

    ([libro157] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Infantil] [Aventura] [Romance] [Intermedia] [Medieval] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Red State")
        (valoracion 4)
    )

    ([libro158] of NovelaFiccion
        (tieneCaracteristica  [autor33] [Adulta_femenina] [Misterio] [Sobrenatural] [Facil] [Militar] [Crimen_organizado] [Nada_popular] [Grande] )
        (titulo  "Human Tombs")
        (valoracion 0)
    )

    ([libro159] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Adulta_masculina] [Suspense] [Aventura] [Facil] [Supervivencia] [Militar] [Nada_popular] [Pequeno] )
        (titulo  "Secret Universe")
        (valoracion 1)
    )

    ([libro160] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Infantil] [Drama] [Suspense] [Dificil] [Viajes_en_el_tiempo] [Superheroes] [Conocido] [Grande] )
        (titulo  "Breakout of Order")
        (valoracion 2)
    )

    ([libro161] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Adulta_masculina] [Misterio] [Aventura] [Intermedia] [Medieval] [Policiaco] [BestSeller] [Pequeno] )
        (titulo  "Chase of Betrayal")
        (valoracion 2)
    )

    ([libro162] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_femenina] [Comedia] [Misterio] [Facil] [Vikingos] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Destroy of Salvation")
        (valoracion 2)
    )

    ([libro163] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Adulta_masculina] [Romance] [Comedia] [Facil] [Viajes_en_el_tiempo] [Crimen_organizado] [Conocido] [Pequeno] )
        (titulo  "Resist of Immunity")
        (valoracion 5)
    )

    ([libro164] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Adulta_femenina] [Fantasia] [Romance] [Dificil] [Samurai] [Superheroes] [Nada_popular] [Pequeno] )
        (titulo  "Besiege of Vengeance")
        (valoracion 4)
    )

    ([libro165] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Juvenil_femenina] [Aventura] [Sobrenatural] [Intermedia] [Espacial] [Oeste] [Nada_popular] [Pequeno] )
        (titulo  "Plan of Prosecution")
        (valoracion 0)
    )

    ([libro166] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Juvenil_femenina] [Comedia] [Sobrenatural] [Intermedia] [Urbano] [Superheroes] [Nada_popular] [Pequeno] )
        (titulo  "Rule of Autonomy")
        (valoracion 2)
    )

    ([libro167] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Juvenil_masculina] [Comedia] [Accion] [Dificil] [Policiaco] [Psicologico] [BestSeller] [Pequeno] )
        (titulo  "Attack of Wrath")
        (valoracion 0)
    )

    ([libro168] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Juvenil_masculina] [Accion] [Fantasia] [Dificil] [Medieval] [Vikingos] [BestSeller] [Grande] )
        (titulo  "Strike of Combat")
        (valoracion 2)
    )

    ([libro169] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Juvenil_femenina] [Accion] [Romance] [Dificil] [Espacial] [Superheroes] [Conocido] [Pequeno] )
        (titulo  "Counter of Trickery")
        (valoracion 0)
    )

    ([libro170] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Adulta_femenina] [Romance] [Suspense] [Intermedia] [Samurai] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Invasion and Revenge")
        (valoracion 2)
    )

    ([libro171] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Adulta_femenina] [Accion] [CienciaFiccion] [Dificil] [Viajes_en_el_tiempo] [Superheroes] [Nada_popular] [Pequeno] )
        (titulo  "Science and Embers")
        (valoracion 1)
    )

    ([libro172] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Adulta_masculina] [Suspense] [Comedia] [Facil] [Pirata] [Superheroes] [Conocido] [Grande] )
        (titulo  "Born and Galaxy")
        (valoracion 3)
    )

    ([libro173] of NovelaFiccion
        (tieneCaracteristica  [autor7] [Juvenil_femenina] [Romance] [Terror] [Dificil] [Viajes_en_el_tiempo] [Urbano] [Conocido] [Grande] )
        (titulo  "Death and Treasures")
        (valoracion 3)
    )

    ([libro174] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Adulta_masculina] [Accion] [Comedia] [Facil] [Militar] [Vikingos] [Conocido] [Grande] )
        (titulo  "Law and Game")
        (valoracion 1)
    )

    ([libro175] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Juvenil_femenina] [Suspense] [Sobrenatural] [Intermedia] [Espacial] [Policiaco] [BestSeller] [Grande] )
        (titulo  "Revenge and Rush")
        (valoracion 3)
    )

    ([libro176] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Adulta_masculina] [Comedia] [Terror] [Facil] [Militar] [Policiaco] [Conocido] [Pequeno] )
        (titulo  "Sons and Chase")
        (valoracion 1)
    )

    ([libro177] of NovelaFiccion
        (tieneCaracteristica  [autor32] [Infantil] [Romance] [Accion] [Dificil] [Espacial] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Born and Revenge")
        (valoracion 3)
    )

    ([libro178] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Adulta_masculina] [Terror] [Romance] [Intermedia] [Medieval] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Paradise and Age")
        (valoracion 3)
    )

    ([libro179] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Adulta_femenina] [Misterio] [Sobrenatural] [Facil] [Policiaco] [Psicologico] [Nada_popular] [Pequeno] )
        (titulo  "Quest and Genesis")
        (valoracion 4)
    )

    ([libro180] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Juvenil_femenina] [Accion] [Drama] [Facil] [Crimen_organizado] [Pirata] [Nada_popular] [Grande] )
        (titulo  "Prototypes and Evil")
        (valoracion 1)
    )

    ([libro181] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Adulta_masculina] [Misterio] [Drama] [Intermedia] [Samurai] [Viajes_en_el_tiempo] [Conocido] [Pequeno] )
        (titulo  "Misery and Lies")
        (valoracion 1)
    )

    ([libro182] of NovelaFiccion
        (tieneCaracteristica  [autor93] [Juvenil_femenina] [Misterio] [Sobrenatural] [Intermedia] [Viajes_en_el_tiempo] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Evolution and Death")
        (valoracion 2)
    )

    ([libro183] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Infantil] [Accion] [CienciaFiccion] [Facil] [Superheroes] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Disarray and Dragons")
        (valoracion 4)
    )

    ([libro184] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Juvenil_masculina] [Comedia] [CienciaFiccion] [Intermedia] [Policiaco] [Crimen_organizado] [Nada_popular] [Grande] )
        (titulo  "Riddles and Honor")
        (valoracion 2)
    )

    ([libro185] of NovelaFiccion
        (tieneCaracteristica  [autor46] [Adulta_masculina] [Drama] [Misterio] [Dificil] [Samurai] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Infinity and Resistance")
        (valoracion 4)
    )

    ([libro186] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Infantil] [Accion] [CienciaFiccion] [Dificil] [Vampiros] [Crimen_organizado] [Nada_popular] [Grande] )
        (titulo  "Valor and Disarray")
        (valoracion 0)
    )

    ([libro187] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Juvenil_masculina] [CienciaFiccion] [Comedia] [Dificil] [Samurai] [Vikingos] [Nada_popular] [Grande] )
        (titulo  "Salvation and Immortals")
        (valoracion 3)
    )

    ([libro188] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Adulta_femenina] [Drama] [Aventura] [Dificil] [Policiaco] [Oeste] [Conocido] [Grande] )
        (titulo  "Heroes and Androids")
        (valoracion 0)
    )

    ([libro189] of NovelaFiccion
        (tieneCaracteristica  [autor53] [Juvenil_femenina] [Romance] [Misterio] [Intermedia] [Vikingos] [Militar] [BestSeller] [Pequeno] )
        (titulo  "Nature and Pain")
        (valoracion 2)
    )

    ([libro190] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Adulta_masculina] [Accion] [Sobrenatural] [Facil] [Medieval] [Superheroes] [Conocido] [Grande] )
        (titulo  "Excry")
        (valoracion 1)
    )

    ([libro191] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Juvenil_masculina] [CienciaFiccion] [Terror] [Dificil] [Supervivencia] [Samurai] [Conocido] [Pequeno] )
        (titulo  "Bordersky")
        (valoracion 2)
    )

    ([libro192] of NovelaFiccion
        (tieneCaracteristica  [autor75] [Infantil] [Sobrenatural] [Romance] [Dificil] [Vikingos] [Supervivencia] [Nada_popular] [Grande] )
        (titulo  "Evohunt")
        (valoracion 5)
    )

    ([libro193] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Adulta_femenina] [Romance] [Fantasia] [Dificil] [Espacial] [Militar] [Nada_popular] [Pequeno] )
        (titulo  "Farback")
        (valoracion 4)
    )

    ([libro194] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Adulta_femenina] [Aventura] [Terror] [Facil] [Medieval] [Militar] [BestSeller] [Grande] )
        (titulo  "Fuselust")
        (valoracion 3)
    )

    ([libro195] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Juvenil_masculina] [Sobrenatural] [CienciaFiccion] [Dificil] [Policiaco] [Oeste] [Conocido] [Grande] )
        (titulo  "Deltashot")
        (valoracion 0)
    )

    ([libro196] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Juvenil_femenina] [CienciaFiccion] [Comedia] [Dificil] [Psicologico] [Supervivencia] [BestSeller] [Grande] )
        (titulo  "Bulletrush")
        (valoracion 1)
    )

    ([libro197] of NovelaFiccion
        (tieneCaracteristica  [autor36] [Infantil] [Comedia] [Aventura] [Dificil] [Oeste] [Pirata] [Nada_popular] [Pequeno] )
        (titulo  "Alterrain")
        (valoracion 2)
    )

    ([libro198] of NovelaFiccion
        (tieneCaracteristica  [autor5] [Juvenil_femenina] [Drama] [Romance] [Facil] [Pirata] [Medieval] [Nada_popular] [Grande] )
        (titulo  "Bulletblast")
        (valoracion 4)
    )

    ([libro199] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Adulta_femenina] [Aventura] [Suspense] [Intermedia] [Oeste] [Mitologia] [BestSeller] [Grande] )
        (titulo  "Brutalshot")
        (valoracion 2)
    )

    ([libro200] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Infantil] [Terror] [Comedia] [Facil] [Mitologia] [Urbano] [Nada_popular] [Grande] )
        (titulo  "Cosmic Freedom")
        (valoracion 3)
    )

    ([libro201] of NovelaFiccion
        (tieneCaracteristica  [autor26] [Adulta_masculina] [Comedia] [CienciaFiccion] [Facil] [Psicologico] [Supervivencia] [BestSeller] [Grande] )
        (titulo  "Bullet Impact")
        (valoracion 0)
    )

    ([libro202] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Adulta_femenina] [Aventura] [Comedia] [Intermedia] [Vampiros] [Urbano] [BestSeller] [Grande] )
        (titulo  "Ghost Possession")
        (valoracion 2)
    )

    ([libro203] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_femenina] [Suspense] [Accion] [Dificil] [Militar] [Samurai] [Nada_popular] [Pequeno] )
        (titulo  "Bio Calamity")
        (valoracion 0)
    )

    ([libro204] of NovelaFiccion
        (tieneCaracteristica  [autor59] [Adulta_masculina] [Aventura] [CienciaFiccion] [Dificil] [Vampiros] [Superheroes] [Nada_popular] [Pequeno] )
        (titulo  "Hallowed Kingdom")
        (valoracion 0)
    )

    ([libro205] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Adulta_masculina] [Terror] [Romance] [Intermedia] [Samurai] [Vampiros] [Conocido] [Grande] )
        (titulo  "Atomic Alert")
        (valoracion 0)
    )

    ([libro206] of NovelaFiccion
        (tieneCaracteristica  [autor90] [Infantil] [CienciaFiccion] [Fantasia] [Dificil] [Policiaco] [Pirata] [Nada_popular] [Pequeno] )
        (titulo  "Arctic Cell")
        (valoracion 2)
    )

    ([libro207] of NovelaFiccion
        (tieneCaracteristica  [autor40] [Juvenil_masculina] [Comedia] [Sobrenatural] [Dificil] [Medieval] [Viajes_en_el_tiempo] [BestSeller] [Pequeno] )
        (titulo  "Hunting Emergency")
        (valoracion 1)
    )

    ([libro208] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Juvenil_masculina] [Suspense] [Romance] [Intermedia] [Crimen_organizado] [Militar] [Conocido] [Grande] )
        (titulo  "Tactical Money")
        (valoracion 4)
    )

    ([libro209] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Juvenil_femenina] [CienciaFiccion] [Misterio] [Intermedia] [Oeste] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Infernal Rage")
        (valoracion 5)
    )

    ([libro210] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Adulta_masculina] [Suspense] [Comedia] [Facil] [Militar] [Samurai] [BestSeller] [Grande] )
        (titulo  "Crush of Strife")
        (valoracion 1)
    )

    ([libro211] of NovelaFiccion
        (tieneCaracteristica  [autor59] [Juvenil_masculina] [Drama] [Accion] [Facil] [Viajes_en_el_tiempo] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Rescue of Duplicity")
        (valoracion 4)
    )

    ([libro212] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Infantil] [Suspense] [Aventura] [Dificil] [Mitologia] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Bombard of Power")
        (valoracion 4)
    )

    ([libro213] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Juvenil_masculina] [Aventura] [Misterio] [Facil] [Urbano] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Crush of Rule")
        (valoracion 1)
    )

    ([libro214] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Infantil] [Sobrenatural] [CienciaFiccion] [Intermedia] [Urbano] [Psicologico] [Conocido] [Pequeno] )
        (titulo  "Vengeance of Rescue")
        (valoracion 1)
    )

    ([libro215] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Adulta_masculina] [CienciaFiccion] [Drama] [Dificil] [Crimen_organizado] [Urbano] [Nada_popular] [Pequeno] )
        (titulo  "Arm of Power")
        (valoracion 0)
    )

    ([libro216] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Adulta_masculina] [CienciaFiccion] [Romance] [Dificil] [Oeste] [Espacial] [Conocido] [Pequeno] )
        (titulo  "Breakout of Liberty")
        (valoracion 5)
    )

    ([libro217] of NovelaFiccion
        (tieneCaracteristica  [autor33] [Juvenil_femenina] [Sobrenatural] [Comedia] [Intermedia] [Samurai] [Supervivencia] [Conocido] [Pequeno] )
        (titulo  "Resist of Regulations")
        (valoracion 3)
    )

    ([libro218] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_femenina] [Terror] [Sobrenatural] [Intermedia] [Supervivencia] [Militar] [Nada_popular] [Grande] )
        (titulo  "Demolish of Transgression")
        (valoracion 3)
    )

    ([libro219] of NovelaFiccion
        (tieneCaracteristica  [autor38] [Juvenil_masculina] [Accion] [Fantasia] [Facil] [Espacial] [Militar] [Conocido] [Grande] )
        (titulo  "Rise of Resitution")
        (valoracion 2)
    )

    ([libro220] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Juvenil_femenina] [CienciaFiccion] [Drama] [Facil] [Pirata] [Medieval] [Conocido] [Pequeno] )
        (titulo  "Streets and Decade")
        (valoracion 4)
    )

    ([libro221] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_femenina] [Suspense] [Terror] [Intermedia] [Crimen_organizado] [Vampiros] [Nada_popular] [Grande] )
        (titulo  "Garden and Memories")
        (valoracion 5)
    )

    ([libro222] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_masculina] [Sobrenatural] [Misterio] [Intermedia] [Pirata] [Mitologia] [BestSeller] [Pequeno] )
        (titulo  "Garden and Gateway")
        (valoracion 2)
    )

    ([libro223] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Adulta_masculina] [Fantasia] [Accion] [Facil] [Crimen_organizado] [Oeste] [BestSeller] [Grande] )
        (titulo  "Rush and Nature")
        (valoracion 2)
    )

    ([libro224] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Adulta_femenina] [Misterio] [Aventura] [Intermedia] [Superheroes] [Pirata] [Conocido] [Grande] )
        (titulo  "Matter and Science")
        (valoracion 0)
    )

    ([libro225] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Juvenil_masculina] [CienciaFiccion] [Comedia] [Facil] [Vikingos] [Policiaco] [BestSeller] [Pequeno] )
        (titulo  "Chamber and Galaxy")
        (valoracion 2)
    )

    ([libro226] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Juvenil_femenina] [Romance] [Suspense] [Facil] [Supervivencia] [Vikingos] [BestSeller] [Pequeno] )
        (titulo  "Nature and Thunder")
        (valoracion 5)
    )

    ([libro227] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Infantil] [Drama] [Romance] [Facil] [Espacial] [Policiaco] [Conocido] [Grande] )
        (titulo  "Fight and Edge")
        (valoracion 0)
    )

    ([libro228] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Infantil] [CienciaFiccion] [Accion] [Dificil] [Crimen_organizado] [Viajes_en_el_tiempo] [BestSeller] [Pequeno] )
        (titulo  "City and Ghosts")
        (valoracion 0)
    )

    ([libro229] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Juvenil_femenina] [Drama] [Misterio] [Intermedia] [Psicologico] [Urbano] [Nada_popular] [Grande] )
        (titulo  "Fortress and Land")
        (valoracion 0)
    )

    ([libro230] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Infantil] [Misterio] [Romance] [Intermedia] [Psicologico] [Espacial] [BestSeller] [Pequeno] )
        (titulo  "Nature and Havoc")
        (valoracion 2)
    )

    ([libro231] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Juvenil_masculina] [Misterio] [Accion] [Intermedia] [Psicologico] [Medieval] [BestSeller] [Grande] )
        (titulo  "Time and Victory")
        (valoracion 1)
    )

    ([libro232] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_masculina] [Comedia] [Aventura] [Intermedia] [Vikingos] [Psicologico] [Nada_popular] [Grande] )
        (titulo  "Heroes and Evolution")
        (valoracion 5)
    )

    ([libro233] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Adulta_femenina] [Romance] [Fantasia] [Facil] [Militar] [Crimen_organizado] [Nada_popular] [Grande] )
        (titulo  "Ambition and Revolution")
        (valoracion 0)
    )

    ([libro234] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Adulta_femenina] [Drama] [Terror] [Dificil] [Viajes_en_el_tiempo] [Superheroes] [Nada_popular] [Pequeno] )
        (titulo  "Earth and Innocents")
        (valoracion 3)
    )

    ([libro235] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Adulta_masculina] [Fantasia] [Romance] [Intermedia] [Viajes_en_el_tiempo] [Medieval] [BestSeller] [Pequeno] )
        (titulo  "Predators and Pain")
        (valoracion 3)
    )

    ([libro236] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Infantil] [Suspense] [Accion] [Dificil] [Oeste] [Mitologia] [Conocido] [Pequeno] )
        (titulo  "Disorder and Domination")
        (valoracion 3)
    )

    ([libro237] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Juvenil_masculina] [Suspense] [Comedia] [Dificil] [Espacial] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Fire and Reckoning")
        (valoracion 0)
    )

    ([libro238] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Infantil] [Suspense] [Fantasia] [Facil] [Supervivencia] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Lies and Doubt")
        (valoracion 0)
    )

    ([libro239] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_masculina] [Romance] [Terror] [Intermedia] [Mitologia] [Superheroes] [BestSeller] [Grande] )
        (titulo  "Honor and Dragons")
        (valoracion 4)
    )

    ([libro240] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Infantil] [Accion] [CienciaFiccion] [Intermedia] [Viajes_en_el_tiempo] [Supervivencia] [Conocido] [Pequeno] )
        (titulo  "Madzone")
        (valoracion 4)
    )

    ([libro241] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Infantil] [Misterio] [Aventura] [Facil] [Militar] [Mitologia] [Nada_popular] [Pequeno] )
        (titulo  "Dreaddude")
        (valoracion 2)
    )

    ([libro242] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Juvenil_femenina] [Sobrenatural] [Fantasia] [Facil] [Vikingos] [Pirata] [BestSeller] [Pequeno] )
        (titulo  "Masterzone")
        (valoracion 1)
    )

    ([libro243] of NovelaFiccion
        (tieneCaracteristica  [autor99] [Juvenil_femenina] [Romance] [Drama] [Dificil] [Pirata] [Espacial] [Nada_popular] [Pequeno] )
        (titulo  "Bladewind")
        (valoracion 1)
    )

    ([libro244] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_femenina] [Suspense] [Accion] [Facil] [Pirata] [Supervivencia] [Nada_popular] [Pequeno] )
        (titulo  "Fusionspace")
        (valoracion 1)
    )

    ([libro245] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Infantil] [CienciaFiccion] [Misterio] [Facil] [Psicologico] [Crimen_organizado] [Nada_popular] [Pequeno] )
        (titulo  "Mastermania")
        (valoracion 5)
    )

    ([libro246] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Juvenil_femenina] [Sobrenatural] [Accion] [Dificil] [Oeste] [Espacial] [Nada_popular] [Grande] )
        (titulo  "Antilight")
        (valoracion 5)
    )

    ([libro247] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Adulta_femenina] [Sobrenatural] [Misterio] [Intermedia] [Viajes_en_el_tiempo] [Samurai] [BestSeller] [Grande] )
        (titulo  "Dreadstar")
        (valoracion 4)
    )

    ([libro248] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Juvenil_femenina] [Terror] [CienciaFiccion] [Intermedia] [Urbano] [Vikingos] [Nada_popular] [Grande] )
        (titulo  "Clusterback")
        (valoracion 3)
    )

    ([libro249] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Juvenil_femenina] [Accion] [Misterio] [Facil] [Espacial] [Medieval] [BestSeller] [Grande] )
        (titulo  "Warlife")
        (valoracion 5)
    )

    ([libro250] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Adulta_masculina] [Misterio] [Drama] [Facil] [Pirata] [Policiaco] [Conocido] [Grande] )
        (titulo  "Forgotten Games")
        (valoracion 2)
    )

    ([libro251] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Adulta_femenina] [Aventura] [Suspense] [Intermedia] [Samurai] [Medieval] [Nada_popular] [Grande] )
        (titulo  "Titan Haven")
        (valoracion 0)
    )

    ([libro252] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Adulta_masculina] [Terror] [Accion] [Facil] [Militar] [Vampiros] [Conocido] [Grande] )
        (titulo  "Tactical Cavern")
        (valoracion 3)
    )

    ([libro253] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Infantil] [Suspense] [Misterio] [Dificil] [Vikingos] [Militar] [Conocido] [Pequeno] )
        (titulo  "Android Attack")
        (valoracion 4)
    )

    ([libro254] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Juvenil_masculina] [Suspense] [Fantasia] [Intermedia] [Samurai] [Mitologia] [Nada_popular] [Grande] )
        (titulo  "Forgotten Legacy")
        (valoracion 2)
    )

    ([libro255] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Juvenil_masculina] [Drama] [Terror] [Facil] [Psicologico] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Bullet Armada")
        (valoracion 5)
    )

    ([libro256] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Adulta_masculina] [Misterio] [Romance] [Facil] [Medieval] [Policiaco] [BestSeller] [Grande] )
        (titulo  "Red Breed")
        (valoracion 3)
    )

    ([libro257] of NovelaFiccion
        (tieneCaracteristica  [autor54] [Adulta_femenina] [Romance] [Drama] [Intermedia] [Supervivencia] [Vikingos] [Conocido] [Grande] )
        (titulo  "Killing Escape")
        (valoracion 1)
    )

    ([libro258] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Juvenil_masculina] [Comedia] [Aventura] [Dificil] [Pirata] [Vikingos] [Nada_popular] [Pequeno] )
        (titulo  "Parasite Edge")
        (valoracion 5)
    )

    ([libro259] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Infantil] [Terror] [Romance] [Facil] [Urbano] [Superheroes] [Conocido] [Grande] )
        (titulo  "Special Project")
        (valoracion 5)
    )

    ([libro260] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Adulta_masculina] [Accion] [Drama] [Facil] [Urbano] [Espacial] [Nada_popular] [Pequeno] )
        (titulo  "Charge of Resitution")
        (valoracion 5)
    )

    ([libro261] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Infantil] [Suspense] [Comedia] [Intermedia] [Pirata] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Strategize of Strife")
        (valoracion 0)
    )

    ([libro262] of NovelaFiccion
        (tieneCaracteristica  [autor40] [Juvenil_femenina] [Accion] [Aventura] [Dificil] [Psicologico] [Superheroes] [Conocido] [Grande] )
        (titulo  "Destroy of Campaigns")
        (valoracion 5)
    )

    ([libro263] of NovelaFiccion
        (tieneCaracteristica  [autor60] [Infantil] [Terror] [Misterio] [Intermedia] [Militar] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Conquer of Stipulation")
        (valoracion 4)
    )

    ([libro264] of NovelaFiccion
        (tieneCaracteristica  [autor30] [Juvenil_femenina] [CienciaFiccion] [Comedia] [Dificil] [Mitologia] [Crimen_organizado] [Conocido] [Grande] )
        (titulo  "Fortify of Liberty")
        (valoracion 1)
    )

    ([libro265] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Juvenil_femenina] [Drama] [Suspense] [Dificil] [Samurai] [Supervivencia] [Conocido] [Grande] )
        (titulo  "Strife of Assault")
        (valoracion 1)
    )

    ([libro266] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Infantil] [Terror] [Drama] [Dificil] [Supervivencia] [Crimen_organizado] [BestSeller] [Pequeno] )
        (titulo  "Pillage of Trickery")
        (valoracion 0)
    )

    ([libro267] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Juvenil_femenina] [Fantasia] [Sobrenatural] [Intermedia] [Mitologia] [Samurai] [BestSeller] [Pequeno] )
        (titulo  "Retaliate of Duplicity")
        (valoracion 4)
    )

    ([libro268] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_masculina] [Sobrenatural] [Fantasia] [Intermedia] [Superheroes] [Mitologia] [Nada_popular] [Pequeno] )
        (titulo  "Resist of Assault")
        (valoracion 4)
    )

    ([libro269] of NovelaFiccion
        (tieneCaracteristica  [autor0] [Juvenil_masculina] [Drama] [Suspense] [Intermedia] [Espacial] [Supervivencia] [BestSeller] [Pequeno] )
        (titulo  "Command of Assault")
        (valoracion 5)
    )

    ([libro270] of NovelaFiccion
        (tieneCaracteristica  [autor90] [Adulta_masculina] [CienciaFiccion] [Accion] [Dificil] [Policiaco] [Supervivencia] [Conocido] [Grande] )
        (titulo  "Law and Journey")
        (valoracion 4)
    )

    ([libro271] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_masculina] [Suspense] [Misterio] [Facil] [Vikingos] [Viajes_en_el_tiempo] [BestSeller] [Grande] )
        (titulo  "Whispers and Weapons")
        (valoracion 1)
    )

    ([libro272] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Infantil] [Terror] [Accion] [Dificil] [Supervivencia] [Pirata] [Conocido] [Pequeno] )
        (titulo  "Extinction and Home")
        (valoracion 0)
    )

    ([libro273] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Juvenil_masculina] [Terror] [Suspense] [Dificil] [Vampiros] [Crimen_organizado] [Nada_popular] [Pequeno] )
        (titulo  "Defense and Codename")
        (valoracion 2)
    )

    ([libro274] of NovelaFiccion
        (tieneCaracteristica  [autor16] [Adulta_masculina] [Comedia] [Drama] [Facil] [Militar] [Psicologico] [Nada_popular] [Grande] )
        (titulo  "Apocalypse and Sons")
        (valoracion 1)
    )

    ([libro275] of NovelaFiccion
        (tieneCaracteristica  [autor19] [Infantil] [Suspense] [Misterio] [Dificil] [Crimen_organizado] [Militar] [BestSeller] [Grande] )
        (titulo  "Order and Hunt")
        (valoracion 0)
    )

    ([libro276] of NovelaFiccion
        (tieneCaracteristica  [autor65] [Adulta_femenina] [Aventura] [Terror] [Dificil] [Mitologia] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Weapons and Life")
        (valoracion 2)
    )

    ([libro277] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Adulta_masculina] [Sobrenatural] [CienciaFiccion] [Intermedia] [Vikingos] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Echoes and Edge")
        (valoracion 1)
    )

    ([libro278] of NovelaFiccion
        (tieneCaracteristica  [autor51] [Adulta_femenina] [CienciaFiccion] [Comedia] [Dificil] [Supervivencia] [Viajes_en_el_tiempo] [Nada_popular] [Grande] )
        (titulo  "Thunder and Order")
        (valoracion 0)
    )

    ([libro279] of NovelaFiccion
        (tieneCaracteristica  [autor39] [Juvenil_masculina] [Misterio] [CienciaFiccion] [Dificil] [Pirata] [Policiaco] [Nada_popular] [Pequeno] )
        (titulo  "Retribution and Defense")
        (valoracion 0)
    )

    ([libro280] of NovelaFiccion
        (tieneCaracteristica  [autor15] [Adulta_femenina] [Sobrenatural] [Accion] [Dificil] [Espacial] [Superheroes] [Conocido] [Grande] )
        (titulo  "Disorder and Faith")
        (valoracion 3)
    )

    ([libro281] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Infantil] [Aventura] [Fantasia] [Intermedia] [Medieval] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Predators and Sacrifice")
        (valoracion 5)
    )

    ([libro282] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Juvenil_masculina] [Comedia] [Terror] [Facil] [Samurai] [Medieval] [Conocido] [Grande] )
        (titulo  "Resistance and Freedom")
        (valoracion 4)
    )

    ([libro283] of NovelaFiccion
        (tieneCaracteristica  [autor73] [Adulta_femenina] [CienciaFiccion] [Suspense] [Intermedia] [Medieval] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Rage and Terror")
        (valoracion 2)
    )

    ([libro284] of NovelaFiccion
        (tieneCaracteristica  [autor70] [Juvenil_masculina] [Sobrenatural] [Suspense] [Facil] [Supervivencia] [Vampiros] [Conocido] [Grande] )
        (titulo  "Mayhem and Souls")
        (valoracion 4)
    )

    ([libro285] of NovelaFiccion
        (tieneCaracteristica  [autor82] [Juvenil_femenina] [Sobrenatural] [CienciaFiccion] [Facil] [Vampiros] [Militar] [Nada_popular] [Pequeno] )
        (titulo  "Zombies and Infinity")
        (valoracion 0)
    )

    ([libro286] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Infantil] [Drama] [CienciaFiccion] [Facil] [Medieval] [Oeste] [Conocido] [Grande] )
        (titulo  "Hell and Awe")
        (valoracion 4)
    )

    ([libro287] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Adulta_femenina] [Comedia] [Romance] [Intermedia] [Superheroes] [Mitologia] [Nada_popular] [Pequeno] )
        (titulo  "Insanity and Lies")
        (valoracion 2)
    )

    ([libro288] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Juvenil_femenina] [Terror] [Misterio] [Dificil] [Pirata] [Psicologico] [Nada_popular] [Pequeno] )
        (titulo  "Evolution and Skulls")
        (valoracion 5)
    )

    ([libro289] of NovelaFiccion
        (tieneCaracteristica  [autor43] [Adulta_femenina] [Fantasia] [Misterio] [Facil] [Samurai] [Supervivencia] [BestSeller] [Pequeno] )
        (titulo  "Valor and Victory")
        (valoracion 1)
    )

    ([libro290] of NovelaFiccion
        (tieneCaracteristica  [autor50] [Adulta_masculina] [Romance] [Misterio] [Dificil] [Psicologico] [Oeste] [Nada_popular] [Grande] )
        (titulo  "Datawatch")
        (valoracion 0)
    )

    ([libro291] of NovelaFiccion
        (tieneCaracteristica  [autor79] [Infantil] [Comedia] [Misterio] [Facil] [Superheroes] [Espacial] [Nada_popular] [Pequeno] )
        (titulo  "Castleback")
        (valoracion 0)
    )

    ([libro292] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Juvenil_masculina] [Suspense] [Aventura] [Intermedia] [Vampiros] [Policiaco] [BestSeller] [Grande] )
        (titulo  "Warcell")
        (valoracion 0)
    )

    ([libro293] of NovelaFiccion
        (tieneCaracteristica  [autor67] [Adulta_femenina] [Fantasia] [Accion] [Intermedia] [Urbano] [Vampiros] [Conocido] [Grande] )
        (titulo  "Ultraborne")
        (valoracion 3)
    )

    ([libro294] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Adulta_masculina] [Aventura] [Drama] [Facil] [Medieval] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Dreampoint")
        (valoracion 0)
    )

    ([libro295] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_femenina] [Drama] [Suspense] [Dificil] [Oeste] [Viajes_en_el_tiempo] [BestSeller] [Grande] )
        (titulo  "Datazone")
        (valoracion 5)
    )

    ([libro296] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Adulta_masculina] [Misterio] [Accion] [Facil] [Samurai] [Militar] [BestSeller] [Grande] )
        (titulo  "Firecraft")
        (valoracion 0)
    )

    ([libro297] of NovelaFiccion
        (tieneCaracteristica  [autor18] [Adulta_masculina] [CienciaFiccion] [Drama] [Intermedia] [Mitologia] [Psicologico] [Conocido] [Grande] )
        (titulo  "Emberwind")
        (valoracion 3)
    )

    ([libro298] of NovelaFiccion
        (tieneCaracteristica  [autor32] [Juvenil_masculina] [Sobrenatural] [Drama] [Intermedia] [Urbano] [Supervivencia] [Conocido] [Pequeno] )
        (titulo  "Endorbot")
        (valoracion 3)
    )

    ([libro299] of NovelaFiccion
        (tieneCaracteristica  [autor43] [Infantil] [Fantasia] [Aventura] [Dificil] [Pirata] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Deadborne")
        (valoracion 0)
    )

    ([libro300] of NovelaFiccion
        (tieneCaracteristica  [autor32] [Juvenil_masculina] [Terror] [Fantasia] [Intermedia] [Samurai] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Just Frontier")
        (valoracion 2)
    )

    ([libro301] of NovelaFiccion
        (tieneCaracteristica  [autor37] [Adulta_masculina] [Misterio] [Drama] [Facil] [Medieval] [Oeste] [Nada_popular] [Pequeno] )
        (titulo  "Special Prototype")
        (valoracion 0)
    )

    ([libro302] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Adulta_masculina] [Aventura] [Fantasia] [Facil] [Viajes_en_el_tiempo] [Pirata] [Nada_popular] [Grande] )
        (titulo  "Covert Operation")
        (valoracion 1)
    )

    ([libro303] of NovelaFiccion
        (tieneCaracteristica  [autor64] [Adulta_masculina] [Accion] [Misterio] [Intermedia] [Superheroes] [Policiaco] [BestSeller] [Grande] )
        (titulo  "Armageddon Agent")
        (valoracion 2)
    )

    ([libro304] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Juvenil_femenina] [Aventura] [Suspense] [Facil] [Urbano] [Mitologia] [Conocido] [Grande] )
        (titulo  "Alpha Rising")
        (valoracion 1)
    )

    ([libro305] of NovelaFiccion
        (tieneCaracteristica  [autor56] [Juvenil_femenina] [Comedia] [Fantasia] [Intermedia] [Pirata] [Vampiros] [BestSeller] [Pequeno] )
        (titulo  "Phantom Crusade")
        (valoracion 3)
    )

    ([libro306] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Infantil] [Comedia] [Aventura] [Intermedia] [Militar] [Viajes_en_el_tiempo] [Conocido] [Pequeno] )
        (titulo  "Twilight Conquest")
        (valoracion 5)
    )

    ([libro307] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Juvenil_femenina] [Romance] [Sobrenatural] [Intermedia] [Superheroes] [Policiaco] [Conocido] [Grande] )
        (titulo  "Infinite Apocalypse")
        (valoracion 2)
    )

    ([libro308] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Infantil] [Drama] [Comedia] [Facil] [Supervivencia] [Oeste] [Nada_popular] [Pequeno] )
        (titulo  "Warrior Road")
        (valoracion 1)
    )

    ([libro309] of NovelaFiccion
        (tieneCaracteristica  [autor35] [Juvenil_masculina] [Drama] [CienciaFiccion] [Facil] [Psicologico] [Urbano] [Conocido] [Pequeno] )
        (titulo  "Light Age")
        (valoracion 2)
    )

    ([libro310] of NovelaFiccion
        (tieneCaracteristica  [autor59] [Adulta_masculina] [Comedia] [CienciaFiccion] [Dificil] [Vikingos] [Medieval] [Nada_popular] [Pequeno] )
        (titulo  "Raid of Trickery")
        (valoracion 3)
    )

    ([libro311] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_femenina] [Terror] [Suspense] [Dificil] [Urbano] [Pirata] [BestSeller] [Grande] )
        (titulo  "Plan of Lies")
        (valoracion 0)
    )

    ([libro312] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Juvenil_femenina] [Comedia] [Fantasia] [Dificil] [Mitologia] [Samurai] [BestSeller] [Grande] )
        (titulo  "Struggle of Combat")
        (valoracion 1)
    )

    ([libro313] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Adulta_femenina] [Misterio] [Sobrenatural] [Facil] [Oeste] [Pirata] [Nada_popular] [Grande] )
        (titulo  "Strategize of Opportunity")
        (valoracion 5)
    )

    ([libro314] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Juvenil_femenina] [Aventura] [Sobrenatural] [Facil] [Superheroes] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Decimate of Regulations")
        (valoracion 5)
    )

    ([libro315] of NovelaFiccion
        (tieneCaracteristica  [autor28] [Adulta_femenina] [Sobrenatural] [CienciaFiccion] [Facil] [Urbano] [Vikingos] [Conocido] [Grande] )
        (titulo  "Attack of Freedom")
        (valoracion 0)
    )

    ([libro316] of NovelaFiccion
        (tieneCaracteristica  [autor13] [Infantil] [Aventura] [Drama] [Intermedia] [Militar] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Divide of Vengeance")
        (valoracion 5)
    )

    ([libro317] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Infantil] [Drama] [Sobrenatural] [Dificil] [Oeste] [Espacial] [Conocido] [Pequeno] )
        (titulo  "Attack of Autonomy")
        (valoracion 4)
    )

    ([libro318] of NovelaFiccion
        (tieneCaracteristica  [autor17] [Infantil] [Fantasia] [Aventura] [Intermedia] [Superheroes] [Oeste] [Nada_popular] [Pequeno] )
        (titulo  "Infect of Redemption")
        (valoracion 3)
    )

    ([libro319] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Adulta_femenina] [Terror] [Misterio] [Dificil] [Oeste] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Rule of Violation")
        (valoracion 2)
    )

    ([libro320] of NovelaFiccion
        (tieneCaracteristica  [autor14] [Infantil] [Suspense] [Terror] [Dificil] [Medieval] [Psicologico] [Conocido] [Grande] )
        (titulo  "Destruction and Power")
        (valoracion 2)
    )

    ([libro321] of NovelaFiccion
        (tieneCaracteristica  [autor76] [Adulta_femenina] [Fantasia] [Romance] [Dificil] [Militar] [Superheroes] [BestSeller] [Pequeno] )
        (titulo  "Fortress and Land")
        (valoracion 5)
    )

    ([libro322] of NovelaFiccion
        (tieneCaracteristica  [autor49] [Juvenil_masculina] [Accion] [Fantasia] [Dificil] [Superheroes] [Medieval] [Conocido] [Pequeno] )
        (titulo  "Gateway and Cult")
        (valoracion 3)
    )

    ([libro323] of NovelaFiccion
        (tieneCaracteristica  [autor85] [Juvenil_masculina] [Accion] [Misterio] [Facil] [Viajes_en_el_tiempo] [Vikingos] [Conocido] [Pequeno] )
        (titulo  "Contract and Spells")
        (valoracion 3)
    )

    ([libro324] of NovelaFiccion
        (tieneCaracteristica  [autor6] [Adulta_femenina] [Accion] [Fantasia] [Facil] [Militar] [Samurai] [Conocido] [Grande] )
        (titulo  "Murder and Dimension")
        (valoracion 3)
    )

    ([libro325] of NovelaFiccion
        (tieneCaracteristica  [autor55] [Juvenil_masculina] [Romance] [CienciaFiccion] [Dificil] [Medieval] [Policiaco] [Nada_popular] [Grande] )
        (titulo  "Memories and Codename")
        (valoracion 0)
    )

    ([libro326] of NovelaFiccion
        (tieneCaracteristica  [autor4] [Adulta_masculina] [Comedia] [Aventura] [Intermedia] [Oeste] [Medieval] [Nada_popular] [Grande] )
        (titulo  "Destruction and Symphony")
        (valoracion 3)
    )

    ([libro327] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Infantil] [Misterio] [Terror] [Intermedia] [Vampiros] [Samurai] [Nada_popular] [Grande] )
        (titulo  "Extinction and Year")
        (valoracion 5)
    )

    ([libro328] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Juvenil_masculina] [Drama] [Suspense] [Facil] [Superheroes] [Oeste] [Conocido] [Pequeno] )
        (titulo  "Hunt and Codename")
        (valoracion 5)
    )

    ([libro329] of NovelaFiccion
        (tieneCaracteristica  [autor41] [Adulta_femenina] [Terror] [Aventura] [Facil] [Samurai] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Guns and Garden")
        (valoracion 4)
    )

    ([libro330] of NovelaFiccion
        (tieneCaracteristica  [autor78] [Juvenil_masculina] [Comedia] [CienciaFiccion] [Intermedia] [Superheroes] [Crimen_organizado] [BestSeller] [Pequeno] )
        (titulo  "Salvation and War")
        (valoracion 1)
    )

    ([libro331] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Juvenil_femenina] [CienciaFiccion] [Aventura] [Intermedia] [Mitologia] [Policiaco] [Conocido] [Grande] )
        (titulo  "Mutants and Dread")
        (valoracion 5)
    )

    ([libro332] of NovelaFiccion
        (tieneCaracteristica  [autor29] [Juvenil_masculina] [Comedia] [Sobrenatural] [Intermedia] [Supervivencia] [Mitologia] [Nada_popular] [Pequeno] )
        (titulo  "Prototypes and Disarray")
        (valoracion 2)
    )

    ([libro333] of NovelaFiccion
        (tieneCaracteristica  [autor32] [Juvenil_femenina] [Drama] [Misterio] [Intermedia] [Policiaco] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Warfare and Disarray")
        (valoracion 5)
    )

    ([libro334] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Juvenil_masculina] [Drama] [Fantasia] [Dificil] [Pirata] [Psicologico] [BestSeller] [Grande] )
        (titulo  "Ambition and Oracles")
        (valoracion 0)
    )

    ([libro335] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_masculina] [Fantasia] [Suspense] [Dificil] [Superheroes] [Mitologia] [Conocido] [Pequeno] )
        (titulo  "Vampires and Immortals")
        (valoracion 3)
    )

    ([libro336] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Juvenil_masculina] [Aventura] [Misterio] [Facil] [Pirata] [Psicologico] [Nada_popular] [Pequeno] )
        (titulo  "Innocents and Souls")
        (valoracion 4)
    )

    ([libro337] of NovelaFiccion
        (tieneCaracteristica  [autor77] [Adulta_femenina] [Romance] [Accion] [Facil] [Oeste] [Crimen_organizado] [BestSeller] [Pequeno] )
        (titulo  "Insanity and Truth")
        (valoracion 2)
    )

    ([libro338] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Juvenil_femenina] [Fantasia] [Misterio] [Intermedia] [Supervivencia] [Samurai] [Conocido] [Pequeno] )
        (titulo  "Armor and Valor")
        (valoracion 5)
    )

    ([libro339] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Adulta_masculina] [Sobrenatural] [Aventura] [Dificil] [Viajes_en_el_tiempo] [Vikingos] [Nada_popular] [Pequeno] )
        (titulo  "Nightmares and Blood")
        (valoracion 5)
    )

    ([libro340] of NovelaFiccion
        (tieneCaracteristica  [autor44] [Adulta_masculina] [Misterio] [Fantasia] [Dificil] [Crimen_organizado] [Mitologia] [Conocido] [Pequeno] )
        (titulo  "Astroheart")
        (valoracion 4)
    )

    ([libro341] of NovelaFiccion
        (tieneCaracteristica  [autor50] [Juvenil_masculina] [Drama] [Accion] [Intermedia] [Vikingos] [Oeste] [Conocido] [Pequeno] )
        (titulo  "Datarush")
        (valoracion 0)
    )

    ([libro342] of NovelaFiccion
        (tieneCaracteristica  [autor98] [Juvenil_masculina] [Aventura] [Drama] [Intermedia] [Urbano] [Psicologico] [Conocido] [Grande] )
        (titulo  "Evercraze")
        (valoracion 2)
    )

    ([libro343] of NovelaFiccion
        (tieneCaracteristica  [autor91] [Infantil] [Comedia] [Drama] [Facil] [Mitologia] [Militar] [BestSeller] [Pequeno] )
        (titulo  "Fusionfight")
        (valoracion 3)
    )

    ([libro344] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Romance] [Suspense] [Facil] [Urbano] [Supervivencia] [Conocido] [Grande] )
        (titulo  "Crossforce")
        (valoracion 3)
    )

    ([libro345] of NovelaFiccion
        (tieneCaracteristica  [autor20] [Juvenil_masculina] [Aventura] [Suspense] [Facil] [Medieval] [Policiaco] [BestSeller] [Pequeno] )
        (titulo  "Cyberfire")
        (valoracion 1)
    )

    ([libro346] of NovelaFiccion
        (tieneCaracteristica  [autor81] [Adulta_masculina] [Suspense] [Sobrenatural] [Facil] [Militar] [Vikingos] [Conocido] [Pequeno] )
        (titulo  "Dreadspace")
        (valoracion 2)
    )

    ([libro347] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_femenina] [CienciaFiccion] [Misterio] [Intermedia] [Militar] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Battlerush")
        (valoracion 5)
    )

    ([libro348] of NovelaFiccion
        (tieneCaracteristica  [autor74] [Juvenil_masculina] [Comedia] [Accion] [Intermedia] [Oeste] [Supervivencia] [BestSeller] [Grande] )
        (titulo  "Blocklust")
        (valoracion 3)
    )

    ([libro349] of NovelaFiccion
        (tieneCaracteristica  [autor52] [Adulta_masculina] [Misterio] [Comedia] [Facil] [Militar] [Urbano] [Nada_popular] [Grande] )
        (titulo  "Deltawind")
        (valoracion 5)
    )

    ([libro350] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Juvenil_femenina] [Aventura] [Terror] [Intermedia] [Policiaco] [Mitologia] [Conocido] [Pequeno] )
        (titulo  "Solitary Curse")
        (valoracion 5)
    )

    ([libro351] of NovelaFiccion
        (tieneCaracteristica  [autor24] [Adulta_masculina] [Suspense] [Misterio] [Intermedia] [Viajes_en_el_tiempo] [Samurai] [Conocido] [Pequeno] )
        (titulo  "Cannibal Resurrection")
        (valoracion 0)
    )

    ([libro352] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_femenina] [Romance] [Terror] [Intermedia] [Policiaco] [Espacial] [Nada_popular] [Pequeno] )
        (titulo  "Enemy Hazard")
        (valoracion 0)
    )

    ([libro353] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Juvenil_masculina] [Fantasia] [Suspense] [Dificil] [Policiaco] [Oeste] [Conocido] [Pequeno] )
        (titulo  "Blood Heart")
        (valoracion 3)
    )

    ([libro354] of NovelaFiccion
        (tieneCaracteristica  [autor3] [Adulta_femenina] [Suspense] [Terror] [Facil] [Urbano] [Oeste] [BestSeller] [Grande] )
        (titulo  "Just Collapse")
        (valoracion 5)
    )

    ([libro355] of NovelaFiccion
        (tieneCaracteristica  [autor71] [Juvenil_femenina] [Comedia] [Aventura] [Dificil] [Crimen_organizado] [Espacial] [Conocido] [Pequeno] )
        (titulo  "Blood Invasion")
        (valoracion 1)
    )

    ([libro356] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Juvenil_masculina] [Sobrenatural] [Drama] [Intermedia] [Policiaco] [Pirata] [BestSeller] [Pequeno] )
        (titulo  "Tactical Premonition")
        (valoracion 0)
    )

    ([libro357] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Juvenil_masculina] [CienciaFiccion] [Drama] [Dificil] [Samurai] [Vampiros] [BestSeller] [Grande] )
        (titulo  "Death Aftermath")
        (valoracion 0)
    )

    ([libro358] of NovelaFiccion
        (tieneCaracteristica  [autor23] [Adulta_femenina] [Romance] [Misterio] [Facil] [Pirata] [Espacial] [Conocido] [Pequeno] )
        (titulo  "Saint Vendetta")
        (valoracion 1)
    )

    ([libro359] of NovelaFiccion
        (tieneCaracteristica  [autor84] [Adulta_masculina] [Accion] [Terror] [Facil] [Vampiros] [Urbano] [BestSeller] [Pequeno] )
        (titulo  "Cold Syndrome")
        (valoracion 1)
    )

    ([libro360] of NovelaFiccion
        (tieneCaracteristica  [autor95] [Adulta_masculina] [Comedia] [Suspense] [Dificil] [Superheroes] [Oeste] [Nada_popular] [Grande] )
        (titulo  "Besiege of Conflict")
        (valoracion 1)
    )

    ([libro361] of NovelaFiccion
        (tieneCaracteristica  [autor40] [Adulta_masculina] [Misterio] [CienciaFiccion] [Dificil] [Espacial] [Policiaco] [Nada_popular] [Grande] )
        (titulo  "Arm of Campaigns")
        (valoracion 0)
    )

    ([libro362] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Adulta_masculina] [Terror] [Fantasia] [Facil] [Supervivencia] [Espacial] [Conocido] [Grande] )
        (titulo  "Strife of Democracy")
        (valoracion 2)
    )

    ([libro363] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Juvenil_femenina] [Terror] [Sobrenatural] [Facil] [Viajes_en_el_tiempo] [Pirata] [BestSeller] [Pequeno] )
        (titulo  "Attack of Freedom")
        (valoracion 4)
    )

    ([libro364] of NovelaFiccion
        (tieneCaracteristica  [autor89] [Infantil] [Sobrenatural] [Romance] [Intermedia] [Militar] [Psicologico] [Conocido] [Pequeno] )
        (titulo  "Run of Heroics")
        (valoracion 0)
    )

    ([libro365] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Juvenil_masculina] [Aventura] [Accion] [Intermedia] [Mitologia] [Espacial] [BestSeller] [Grande] )
        (titulo  "Raid of Heroes")
        (valoracion 5)
    )

    ([libro366] of NovelaFiccion
        (tieneCaracteristica  [autor93] [Juvenil_femenina] [Romance] [Drama] [Intermedia] [Vikingos] [Oeste] [BestSeller] [Pequeno] )
        (titulo  "Crash of Law")
        (valoracion 4)
    )

    ([libro367] of NovelaFiccion
        (tieneCaracteristica  [autor11] [Adulta_masculina] [Romance] [Comedia] [Intermedia] [Oeste] [Vampiros] [Conocido] [Pequeno] )
        (titulo  "Demolish of Resitution")
        (valoracion 5)
    )

    ([libro368] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_masculina] [Misterio] [Terror] [Facil] [Pirata] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Hunt of Campaigns")
        (valoracion 2)
    )

    ([libro369] of NovelaFiccion
        (tieneCaracteristica  [autor2] [Adulta_masculina] [Sobrenatural] [Drama] [Intermedia] [Viajes_en_el_tiempo] [Psicologico] [Nada_popular] [Grande] )
        (titulo  "Counter of Prosecution")
        (valoracion 0)
    )

    ([libro370] of NovelaFiccion
        (tieneCaracteristica  [autor0] [Adulta_masculina] [Suspense] [CienciaFiccion] [Intermedia] [Superheroes] [Samurai] [Nada_popular] [Grande] )
        (titulo  "Fortress and Extinction")
        (valoracion 5)
    )

    ([libro371] of NovelaFiccion
        (tieneCaracteristica  [autor76] [Juvenil_masculina] [Romance] [Comedia] [Facil] [Medieval] [Vikingos] [Conocido] [Pequeno] )
        (titulo  "Paradise and Maze")
        (valoracion 3)
    )

    ([libro372] of NovelaFiccion
        (tieneCaracteristica  [autor68] [Juvenil_femenina] [Misterio] [Accion] [Intermedia] [Psicologico] [Viajes_en_el_tiempo] [Conocido] [Grande] )
        (titulo  "City and Battlefield")
        (valoracion 5)
    )

    ([libro373] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_femenina] [Sobrenatural] [Terror] [Dificil] [Pirata] [Viajes_en_el_tiempo] [Nada_popular] [Grande] )
        (titulo  "Murder and Force")
        (valoracion 4)
    )

    ([libro374] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Juvenil_masculina] [Terror] [Romance] [Intermedia] [Mitologia] [Vampiros] [Nada_popular] [Pequeno] )
        (titulo  "Spells and Renegade")
        (valoracion 1)
    )

    ([libro375] of NovelaFiccion
        (tieneCaracteristica  [autor83] [Juvenil_femenina] [Suspense] [CienciaFiccion] [Intermedia] [Samurai] [Supervivencia] [Conocido] [Pequeno] )
        (titulo  "Empire and Raid")
        (valoracion 3)
    )

    ([libro376] of NovelaFiccion
        (tieneCaracteristica  [autor86] [Juvenil_femenina] [Aventura] [Drama] [Dificil] [Vampiros] [Psicologico] [Conocido] [Grande] )
        (titulo  "Crime and Voyage")
        (valoracion 3)
    )

    ([libro377] of NovelaFiccion
        (tieneCaracteristica  [autor9] [Adulta_masculina] [Misterio] [Suspense] [Facil] [Superheroes] [Medieval] [Conocido] [Grande] )
        (titulo  "Land and Embers")
        (valoracion 4)
    )

    ([libro378] of NovelaFiccion
        (tieneCaracteristica  [autor12] [Juvenil_femenina] [Sobrenatural] [Comedia] [Intermedia] [Vampiros] [Mitologia] [Nada_popular] [Grande] )
        (titulo  "Force and Streets")
        (valoracion 2)
    )

    ([libro379] of NovelaFiccion
        (tieneCaracteristica  [autor66] [Juvenil_femenina] [CienciaFiccion] [Comedia] [Facil] [Crimen_organizado] [Militar] [BestSeller] [Pequeno] )
        (titulo  "Fortress and Force")
        (valoracion 3)
    )

    ([libro380] of NovelaFiccion
        (tieneCaracteristica  [autor88] [Infantil] [CienciaFiccion] [Fantasia] [Intermedia] [Pirata] [Oeste] [BestSeller] [Grande] )
        (titulo  "Disorder and Gangs")
        (valoracion 0)
    )

    ([libro381] of NovelaFiccion
        (tieneCaracteristica  [autor42] [Juvenil_masculina] [Aventura] [Accion] [Facil] [Policiaco] [Vampiros] [Conocido] [Pequeno] )
        (titulo  "Frenzy and Existence")
        (valoracion 0)
    )

    ([libro382] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Juvenil_femenina] [Romance] [CienciaFiccion] [Dificil] [Vikingos] [Policiaco] [Conocido] [Grande] )
        (titulo  "Infinity and Nature")
        (valoracion 3)
    )

    ([libro383] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Adulta_femenina] [Aventura] [Comedia] [Intermedia] [Vampiros] [Viajes_en_el_tiempo] [Nada_popular] [Pequeno] )
        (titulo  "Havoc and Conflict")
        (valoracion 0)
    )

    ([libro384] of NovelaFiccion
        (tieneCaracteristica  [autor21] [Juvenil_masculina] [Romance] [Comedia] [Dificil] [Militar] [Psicologico] [Conocido] [Grande] )
        (titulo  "Misery and Fire")
        (valoracion 0)
    )

    ([libro385] of NovelaFiccion
        (tieneCaracteristica  [autor61] [Infantil] [Aventura] [Accion] [Facil] [Militar] [Pirata] [Nada_popular] [Pequeno] )
        (titulo  "Explosions and Androids")
        (valoracion 5)
    )

    ([libro386] of NovelaFiccion
        (tieneCaracteristica  [autor45] [Adulta_masculina] [Sobrenatural] [Drama] [Dificil] [Urbano] [Mitologia] [Conocido] [Grande] )
        (titulo  "Zombies and Time")
        (valoracion 5)
    )

    ([libro387] of NovelaFiccion
        (tieneCaracteristica  [autor51] [Juvenil_femenina] [Romance] [Sobrenatural] [Facil] [Vampiros] [Vikingos] [BestSeller] [Grande] )
        (titulo  "Vampires and Panic")
        (valoracion 0)
    )

    ([libro388] of NovelaFiccion
        (tieneCaracteristica  [autor7] [Adulta_femenina] [CienciaFiccion] [Suspense] [Intermedia] [Superheroes] [Crimen_organizado] [Nada_popular] [Pequeno] )
        (titulo  "Logic and Agony")
        (valoracion 1)
    )

    ([libro389] of NovelaFiccion
        (tieneCaracteristica  [autor69] [Infantil] [Sobrenatural] [Suspense] [Dificil] [Pirata] [Viajes_en_el_tiempo] [Conocido] [Grande] )
        (titulo  "Awe and Nothing")
        (valoracion 2)
    )

    ([libro390] of NovelaFiccion
        (tieneCaracteristica  [autor62] [Juvenil_femenina] [Fantasia] [Suspense] [Intermedia] [Samurai] [Superheroes] [Conocido] [Grande] )
        (titulo  "Ultradude")
        (valoracion 5)
    )

    ([libro391] of NovelaFiccion
        (tieneCaracteristica  [autor25] [Infantil] [CienciaFiccion] [Aventura] [Dificil] [Medieval] [Samurai] [Conocido] [Pequeno] )
        (titulo  "Chromaplan")
        (valoracion 1)
    )

    ([libro392] of NovelaFiccion
        (tieneCaracteristica  [autor27] [Adulta_masculina] [Fantasia] [Drama] [Dificil] [Policiaco] [Psicologico] [Conocido] [Pequeno] )
        (titulo  "Clusterworks")
        (valoracion 0)
    )

    ([libro393] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Adulta_masculina] [Comedia] [Fantasia] [Facil] [Militar] [Oeste] [Conocido] [Grande] )
        (titulo  "Grimland")
        (valoracion 0)
    )

    ([libro394] of NovelaFiccion
        (tieneCaracteristica  [autor63] [Adulta_femenina] [Sobrenatural] [Fantasia] [Intermedia] [Superheroes] [Medieval] [Nada_popular] [Grande] )
        (titulo  "Alterside")
        (valoracion 5)
    )

    ([libro395] of NovelaFiccion
        (tieneCaracteristica  [autor65] [Adulta_femenina] [Aventura] [Drama] [Facil] [Policiaco] [Samurai] [Nada_popular] [Grande] )
        (titulo  "Bloodbot")
        (valoracion 3)
    )

    ([libro396] of NovelaFiccion
        (tieneCaracteristica  [autor96] [Juvenil_masculina] [Terror] [Aventura] [Intermedia] [Vampiros] [Crimen_organizado] [BestSeller] [Grande] )
        (titulo  "Crossrage")
        (valoracion 2)
    )

    ([libro397] of NovelaFiccion
        (tieneCaracteristica  [autor72] [Juvenil_masculina] [Fantasia] [Suspense] [Dificil] [Mitologia] [Viajes_en_el_tiempo] [Nada_popular] [Grande] )
        (titulo  "Blasterlife")
        (valoracion 2)
    )

    ([libro398] of NovelaFiccion
        (tieneCaracteristica  [autor80] [Adulta_masculina] [Fantasia] [CienciaFiccion] [Intermedia] [Viajes_en_el_tiempo] [Militar] [BestSeller] [Pequeno] )
        (titulo  "Endorwind")
        (valoracion 3)
    )

    ([libro399] of NovelaFiccion
        (tieneCaracteristica  [autor1] [Juvenil_masculina] [Terror] [Accion] [Intermedia] [Mitologia] [Policiaco] [Nada_popular] [Grande] )
        (titulo  "Cybernite")
        (valoracion 5)
    )

    ([autor0] of Autor
        (haEscrito  [libro96] [libro269] [libro370] )
        (nombre  "Rhoda Christensen")
    )

    ([autor1] of Autor
        (haEscrito  [libro94] [libro237] [libro399] )
        (nombre  "Hung Wilcox")
    )

    ([autor2] of Autor
        (haEscrito  [libro52] [libro97] [libro98] [libro162] [libro184] [libro221] [libro239] [libro242] [libro249] [libro261] [libro295] [libro350] [libro368] [libro369] )
        (nombre  "Rigoberto Mccall")
    )

    ([autor3] of Autor
        (haEscrito  [libro41] [libro44] [libro166] [libro195] [libro354] )
        (nombre  "Saundra Preston")
    )

    ([autor4] of Autor
        (haEscrito  [libro63] [libro326] )
        (nombre  "Adela Mcneil")
    )

    ([autor5] of Autor
        (haEscrito  [libro78] [libro82] [libro198] )
        (nombre  "Owen Chung")
    )

    ([autor6] of Autor
        (haEscrito  [libro34] [libro167] [libro255] [libro294] [libro324] )
        (nombre  "Lacey Bradley")
    )

    ([autor7] of Autor
        (haEscrito  [libro40] [libro173] [libro388] )
        (nombre  "Ora Delgado")
    )

    ([autor8] of Autor
        (haEscrito  [libro31] [libro46] )
        (nombre  "Brandy Stanton")
    )

    ([autor9] of Autor
        (haEscrito  [libro107] [libro132] [libro191] [libro377] )
        (nombre  "Alvin Diaz")
    )

    ([autor10] of Autor
        (haEscrito  [libro48] [libro71] [libro95] [libro111] )
        (nombre  "Dana Hobbs")
    )

    ([autor11] of Autor
        (haEscrito  [libro252] [libro367] )
        (nombre  "Cecilia Macias")
    )

    ([autor12] of Autor
        (haEscrito  [libro10] [libro37] [libro93] [libro251] [libro258] [libro356] [libro378] )
        (nombre  "Pedro Weeks")
    )

    ([autor13] of Autor
        (haEscrito  [libro20] [libro156] [libro230] [libro316] )
        (nombre  "Tanner Benitez")
    )

    ([autor14] of Autor
        (haEscrito  [libro104] [libro115] [libro126] [libro142] [libro203] [libro218] [libro222] [libro244] [libro254] [libro268] [libro319] [libro320] )
        (nombre  "Donny Hardin")
    )

    ([autor15] of Autor
        (haEscrito  [libro50] [libro280] )
        (nombre  "Deena Knight")
    )

    ([autor16] of Autor
        (haEscrito  [libro11] [libro241] [libro274] )
        (nombre  "Hiram Savage")
    )

    ([autor17] of Autor
        (haEscrito  [libro80] [libro112] [libro235] [libro266] [libro318] )
        (nombre  "Matilda Pollard")
    )

    ([autor18] of Autor
        (haEscrito  [libro8] [libro39] [libro57] [libro110] [libro212] [libro226] [libro277] [libro297] )
        (nombre  "Araceli Buckley")
    )

    ([autor19] of Autor
        (haEscrito  [libro100] [libro275] )
        (nombre  "Ila Melendez")
    )

    ([autor20] of Autor
        (haEscrito  [libro187] [libro227] [libro345] )
        (nombre  "Geraldo Faulkner")
    )

    ([autor21] of Autor
        (haEscrito  [libro81] [libro229] [libro271] [libro373] [libro383] [libro384] )
        (nombre  "Eldridge Allison")
    )

    ([autor22] of Autor
        (haEscrito  [libro1] [libro22] [libro42] [libro61] [libro116] )
        (nombre  "Frankie Walsh")
    )

    ([autor23] of Autor
        (haEscrito  [libro130] [libro196] [libro208] [libro214] [libro265] [libro286] [libro358] )
        (nombre  "Horacio Chan")
    )

    ([autor24] of Autor
        (haEscrito  [libro9] [libro84] [libro124] [libro129] [libro245] [libro308] [libro317] [libro335] [libro351] )
        (nombre  "Brittany Bauer")
    )

    ([autor25] of Autor
        (haEscrito  [libro77] [libro159] [libro339] [libro391] )
        (nombre  "Shon Poole")
    )

    ([autor26] of Autor
        (haEscrito  [libro141] [libro201] )
        (nombre  "Tabitha Mack")
    )

    ([autor27] of Autor
        (haEscrito  [libro202] [libro220] [libro382] [libro392] )
        (nombre  "Manuel Munoz")
    )

    ([autor28] of Autor
        (haEscrito  [libro19] [libro315] )
        (nombre  "Hollie West")
    )

    ([autor29] of Autor
        (haEscrito  [libro152] [libro332] )
        (nombre  "Carol Callahan")
    )

    ([autor30] of Autor
        (haEscrito  [libro68] [libro247] [libro264] )
        (nombre  "Edmundo Cameron")
    )

    ([autor31] of Autor
        (haEscrito  [libro5] [libro89] [libro136] )
        (nombre  "Amy Villa")
    )

    ([autor32] of Autor
        (haEscrito  [libro177] [libro298] [libro300] [libro333] )
        (nombre  "Jeanie Graham")
    )

    ([autor33] of Autor
        (haEscrito  [libro158] [libro217] )
        (nombre  "Antione Bell")
    )

    ([autor34] of Autor
        (haEscrito  [libro64] )
        (nombre  "Von Lynn")
    )

    ([autor35] of Autor
        (haEscrito  [libro106] [libro157] [libro216] [libro259] [libro282] [libro309] )
        (nombre  "Heath Oliver")
    )

    ([autor36] of Autor
        (haEscrito  [libro67] [libro134] [libro151] [libro194] [libro197] )
        (nombre  "Shaun Rubio")
    )

    ([autor37] of Autor
        (haEscrito  [libro7] [libro180] [libro301] )
        (nombre  "Amos Deleon")
    )

    ([autor38] of Autor
        (haEscrito  [libro118] [libro219] )
        (nombre  "Sid Massey")
    )

    ([autor39] of Autor
        (haEscrito  [libro12] [libro120] [libro150] [libro279] )
        (nombre  "Nicholas Huerta")
    )

    ([autor40] of Autor
        (haEscrito  [libro155] [libro207] [libro262] [libro361] )
        (nombre  "Carson Rodriguez")
    )

    ([autor41] of Autor
        (haEscrito  [libro29] [libro75] [libro329] )
        (nombre  "Rodrigo Holland")
    )

    ([autor42] of Autor
        (haEscrito  [libro58] [libro92] [libro381] )
        (nombre  "Terry Avery")
    )

    ([autor43] of Autor
        (haEscrito  [libro23] [libro105] [libro289] [libro299] )
        (nombre  "Katharine Zavala")
    )

    ([autor44] of Autor
        (haEscrito  [libro21] [libro49] [libro215] [libro250] [libro304] [libro331] [libro340] )
        (nombre  "Isabella Dudley")
    )

    ([autor45] of Autor
        (haEscrito  [libro55] [libro121] [libro138] [libro311] [libro352] [libro362] [libro365] [libro386] )
        (nombre  "Freda Estrada")
    )

    ([autor46] of Autor
        (haEscrito  [libro76] [libro127] [libro185] )
        (nombre  "Georgette Henson")
    )

    ([autor47] of Autor
        (haEscrito  [libro33] [libro74] [libro147] )
        (nombre  "Lucinda Kirk")
    )

    ([autor48] of Autor
        (haEscrito  [libro72] )
        (nombre  "Wilson Ferrell")
    )

    ([autor49] of Autor
        (haEscrito  [libro27] [libro69] [libro209] [libro233] [libro322] )
        (nombre  "Derek Leonard")
    )

    ([autor50] of Autor
        (haEscrito  [libro290] [libro341] )
        (nombre  "Meagan Gates")
    )

    ([autor51] of Autor
        (haEscrito  [libro125] [libro278] [libro387] )
        (nombre  "Damien Curry")
    )

    ([autor52] of Autor
        (haEscrito  [libro30] [libro312] [libro313] [libro349] )
        (nombre  "Vonda Parks")
    )

    ([autor53] of Autor
        (haEscrito  [libro62] [libro189] )
        (nombre  "Ines Christensen")
    )

    ([autor54] of Autor
        (haEscrito  [libro257] )
        (nombre  "Kieth Thompson")
    )

    ([autor55] of Autor
        (haEscrito  [libro109] [libro145] [libro325] )
        (nombre  "Hattie Franklin")
    )

    ([autor56] of Autor
        (haEscrito  [libro65] [libro85] [libro99] [libro174] [libro305] )
        (nombre  "Enoch Schultz")
    )

    ([autor58] of Autor
        (haEscrito  [libro35] )
        (nombre  "Guy Mclean")
    )

    ([autor59] of Autor
        (haEscrito  [libro204] [libro211] [libro310] )
        (nombre  "Maxine Crawford")
    )

    ([autor60] of Autor
        (haEscrito  [libro66] [libro263] )
        (nombre  "Geraldine Mcpherson")
    )

    ([autor61] of Autor
        (haEscrito  [libro16] [libro79] [libro260] [libro374] [libro385] )
        (nombre  "Nolan Abbott")
    )

    ([autor62] of Autor
        (haEscrito  [libro0] [libro24] [libro36] [libro183] [libro232] [libro296] [libro347] [libro390] )
        (nombre  "Warren Saunders")
    )

    ([autor63] of Autor
        (haEscrito  [libro26] [libro139] [libro168] [libro287] [libro288] [libro314] [libro393] [libro394] )
        (nombre  "Joyce Novak")
    )

    ([autor64] of Autor
        (haEscrito  [libro169] [libro210] [libro303] )
        (nombre  "Consuelo Odom")
    )

    ([autor65] of Autor
        (haEscrito  [libro276] [libro395] )
        (nombre  "Russel Flores")
    )

    ([autor66] of Autor
        (haEscrito  [libro15] [libro87] [libro176] [libro328] [libro379] )
        (nombre  "Tracy Hodge")
    )

    ([autor67] of Autor
        (haEscrito  [libro3] [libro51] [libro54] [libro179] [libro193] [libro293] )
        (nombre  "Hugh Mosley")
    )

    ([autor68] of Autor
        (haEscrito  [libro86] [libro122] [libro223] [libro357] [libro363] [libro372] )
        (nombre  "Geoffrey Choi")
    )

    ([autor69] of Autor
        (haEscrito  [libro2] [libro14] [libro178] [libro199] [libro224] [libro389] )
        (nombre  "Jonah Nichols")
    )

    ([autor70] of Autor
        (haEscrito  [libro160] [libro231] [libro281] [libro284] )
        (nombre  "Buster Bowers")
    )

    ([autor71] of Autor
        (haEscrito  [libro56] [libro91] [libro175] [libro236] [libro355] )
        (nombre  "Reuben Bradshaw")
    )

    ([autor72] of Autor
        (haEscrito  [libro154] [libro344] [libro397] )
        (nombre  "Sarah Livingston")
    )

    ([autor73] of Autor
        (haEscrito  [libro149] [libro240] [libro246] [libro283] )
        (nombre  "Natalia Owens")
    )

    ([autor74] of Autor
        (haEscrito  [libro213] [libro307] [libro348] )
        (nombre  "Timothy Conrad")
    )

    ([autor75] of Autor
        (haEscrito  [libro60] [libro70] [libro90] [libro192] )
        (nombre  "Marissa Wall")
    )

    ([autor76] of Autor
        (haEscrito  [libro45] [libro47] [libro321] [libro371] )
        (nombre  "Samantha Steele")
    )

    ([autor77] of Autor
        (haEscrito  [libro337] )
        (nombre  "Abram Coffey")
    )

    ([autor78] of Autor
        (haEscrito  [libro148] [libro256] [libro272] [libro330] )
        (nombre  "Kellie Lane")
    )

    ([autor79] of Autor
        (haEscrito  [libro4] [libro13] [libro83] [libro133] [libro161] [libro190] [libro205] [libro291] )
        (nombre  "Martina Walls")
    )

    ([autor80] of Autor
        (haEscrito  [libro117] [libro171] [libro253] [libro306] [libro327] [libro398] )
        (nombre  "Quinton Hutchinson")
    )

    ([autor81] of Autor
        (haEscrito  [libro17] [libro346] )
        (nombre  "Lessie Lloyd")
    )

    ([autor82] of Autor
        (haEscrito  [libro53] [libro128] [libro163] [libro267] [libro285] )
        (nombre  "Barry Lam")
    )

    ([autor83] of Autor
        (haEscrito  [libro119] [libro135] [libro137] [libro186] [libro375] )
        (nombre  "Britney Woods")
    )

    ([autor84] of Autor
        (haEscrito  [libro43] [libro108] [libro336] [libro353] [libro359] )
        (nombre  "Emily Barr")
    )

    ([autor85] of Autor
        (haEscrito  [libro103] [libro170] [libro234] [libro323] )
        (nombre  "Vickie Mcguire")
    )

    ([autor86] of Autor
        (haEscrito  [libro376] )
        (nombre  "Clifton Rhodes")
    )

    ([autor88] of Autor
        (haEscrito  [libro6] [libro59] [libro101] [libro131] [libro144] [libro225] [libro380] )
        (nombre  "Brandi Clark")
    )

    ([autor89] of Autor
        (haEscrito  [libro146] [libro172] [libro188] [libro292] [libro338] [libro364] )
        (nombre  "Felicia Gay")
    )

    ([autor90] of Autor
        (haEscrito  [libro206] [libro270] )
        (nombre  "Shelly Perkins")
    )

    ([autor91] of Autor
        (haEscrito  [libro18] [libro38] [libro140] [libro302] [libro343] )
        (nombre  "Liza Houston")
    )

    ([autor93] of Autor
        (haEscrito  [libro114] [libro182] [libro366] )
        (nombre  "Janine Huffman")
    )

    ([autor95] of Autor
        (haEscrito  [libro143] [libro164] [libro165] [libro200] [libro238] [libro360] )
        (nombre  "Len Bush")
    )

    ([autor96] of Autor
        (haEscrito  [libro25] [libro88] [libro228] [libro273] [libro396] )
        (nombre  "Edmundo Beard")
    )

    ([autor97] of Autor
        (haEscrito  [libro28] )
        (nombre  "Marcos Spencer")
    )

    ([autor98] of Autor
        (haEscrito  [libro73] [libro113] [libro123] [libro248] [libro334] [libro342] )
        (nombre  "Lewis Welch")
    )

    ([autor99] of Autor
        (haEscrito  [libro32] [libro102] [libro153] [libro181] [libro243] )
        (nombre  "Beulah Khan")
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
