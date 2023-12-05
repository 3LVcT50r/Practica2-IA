;;; ---------------------------------------------------------
;;; onto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Onto.ttl
;;; :Date 04/12/2023 19:47:43

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (multislot nombre
        (type SYMBOL)
        (create-accessor read-write))
    (slot sexo
        (type STRING)
        (create-accessor read-write))
    (slot topDataProperty
        (type STRING)
        (create-accessor read-write))
)

(defclass Autor
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot ha_escrito
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Lector
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot ha_leido
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot titulo
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Demografía
    (is-a Libro)
    (role concrete)
    (pattern-match reactive)
)

(defclass Dificultad
    (is-a Libro)
    (role concrete)
    (pattern-match reactive)
)

(defclass Género
    (is-a Libro)
    (role concrete)
    (pattern-match reactive)
)

(defclass Temas
    (is-a Libro)
    (role concrete)
    (pattern-match reactive)
)

(defclass Época
    (is-a Libro)
    (role concrete)
    (pattern-match reactive)
)

