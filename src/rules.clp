;;INICIO DEL PROGRAMA

(defglobal
   ?*allok* = TRUE
)

(defmodule MAIN (export ?ALL))

(defrule initial
    (initial-fact)
    =>
    (printout t "----BIENVENIDOS AL SISTEMA DE RECOMENDACION DE LIBROS----" crlf)
    (printout t crlf)
    (assert(newPersona))
    (focus PREGUNTES)
)


(defmodule PREGUNTES (export ?ALL) (import MAIN ?ALL))
;Aqui estan las preguntas

(defmodule ABSTRACCION (import MAIN ?ALL)(import PREGUNTES ?ALL)(export ?ALL))
;Aqui estan las abstracciones

(defmodule INFERENCIA (import MAIN ?ALL) (import PREGUNTES ?ALL)(import ABSTRACCION ?ALL)(export ?ALL))
;Aqui estan las infirencias

(defmodule ASSIGNACIO (import MAIN ?ALL) (import PREGUNTES ?ALL)(import INFERENCIA ?ALL)(import ABSTRACCION ?ALL)(export ?ALL))
;Aqui estan las asignaciones

(defmodule RESPOSTA (import MAIN ?ALL) (import PREGUNTES ?ALL)(import ABSTRACCION ?ALL)(import INFERENCIA ?ALL)(import ASSIGNACIO ?ALL)(export ?ALL))
;Aqui esta la respuesta
