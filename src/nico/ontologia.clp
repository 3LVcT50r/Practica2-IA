;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontoProto.ttl
;;; :Date 18/12/2023 15:54:21

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

(defclass Tema
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
)

(defclass NovelaFiccion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tieneCaracteristica
        (type INSTANCE)
        (create-accessor read-write))
    (multislot valoracion
        (type INTEGER)
        (create-accessor read-write))
    (slot titulo
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
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

    ([BestSeller] of Popularidad
         (nombre  "BestSeller")
    )

    ([CienciaFiccion] of Genero
         (nombre  "Ciencia ficcion")
    )

    ([Comedia] of Genero
         (nombre  "Comedia")
    )

    ([Conocido] of Popularidad
         (nombre  "Conocido")
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

    ([Grande] of Tamano
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

    ([Mediano] of Tamano
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

    ([Nada_popular] of Popularidad
         (nombre  "Nada popular")
    )

    ([Oeste] of Tema
         (nombre  "Oeste")
    )

    ([Pequeno] of Tamano
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

    ([autor0] of Autor
         (haEscrito  [libro0])
         (nombre  "Nicolas Longueira")
    )

    ([libro0] of NovelaFiccion
         (tieneCaracteristica  [Adulta_masculina] [Aventura] [Dificil] [Fantasia] [Viajes_en_el_tiempo] [autor0])
         (valoracion  1)
         (titulo  "Las desgracias del elfo adulto")
    )

)
