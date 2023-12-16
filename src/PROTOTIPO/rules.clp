;Funcio que implenta la pregunta per llegir un int
(deffunction ask-int (?question)
	(printout t ?question)
	(bind ?answer (read))
	(while (lexemep ?answer) do
		(printout t ?question)
		(bind ?answer (read))
		)
	(integer ?answer))


;Funcio que implenta la pregunta per llegir un string
(deffunction stringg-question (?question)
	(format t "%s" ?question)
	(bind ?answer (read))
	?answer
)

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
)

;Funcio que implenta la pregunta de tipus si o no (booleana)
(deffunction pregunta-si-no (?question)
	(format t "%s [s/n] " ?question)
	(bind ?response (read))
	(while (not(or(eq ?response s)(eq ?response n))) do
		(printout t ?question)
		(bind ?response (read))
	)
	(if (eq ?response s)
		then TRUE
		else FALSE)
)

;Funcio que implenta la pregunta de tipus hombre o mujer (booleana) MUJER -> TRUE
(deffunction pregunta-m-h (?question)
	(format t "%s [m/h] " ?question)
	(bind ?response (read))
	(while (not(or(eq ?response m)(eq ?response h))) do
		(printout t ?question)
		(bind ?response (read))
	)
	(if (eq ?response m)
		then TRUE
		else FALSE)
)

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los numeros separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        )
    )
    ?lista
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)


;;INICIO DEL PROGRAMA

(defglobal
   ?*allok* = TRUE
)

(defmodule MAIN (export ?ALL))

(deftemplate MAIN::preferencias
	;(multislot epocas (type INSTANCE))
	(multislot temas (type INSTANCE))
	(multislot autores (type INSTANCE))
	(multislot generos (type INSTANCE))
	(slot tamano (type INTEGER))
	(multislot popularidad (type INSTANCE)) ;La popularidad es una instancia
	(slot valoracion (type INTEGER))
)

(deftemplate MAIN::prefvar
	(multislot pref (type INSTANCE))
)

(deftemplate MAIN::recomendaciones
	(multislot libros (type INSTANCE))
)

(defrule MAIN::initial
    (initial-fact)
    =>
    (printout t "----BIENVENIDOS AL SISTEMA DE RECOMENDACION DE LIBROS----" crlf)
    (printout t crlf)
    (assert(newLector))
    (focus PREGUNTAS)
)

; *******************************************************
;               	PREGUNTAS               
; *******************************************************
(defmodule PREGUNTAS (export ?ALL) (import MAIN ?ALL))

(deffacts PREGUNTAS::hechos-iniciales "Establece hechos para poder recopilar informacion"
	(popularidad ask)
	(tema ask)
	(genero ask)
	(valoracion ask)
	(preferencias)
)


(defrule PREGUNTAS::askNombre
	(newLector)
	=>
	(bind ?nombre (stringg-question "Como te llamas? "))
	(bind ?x (make-instance ?nombre of Lector))
	(send ?x put-nombre ?nombre)
)

(defrule PREGUNTAS::askEdad
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?edad (ask-int "Cuantos años tienes? "))
	;(if (> ?age 0) then (printout t crlf "Lo sentimos, no cumples con los requisitos de edad" crlf)(exit))
    (send ?x put-edad ?edad)
)

(defrule PREGUNTAS::askSexo
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?sexo (pregunta-m-h "Sexo: Mujer o Hombre "))
    (send ?x put-sexo ?sexo)
)

;;ESTO NO VA A COMPILAR HASTA QUE SE LE AGREGUE UNA FRECUENCIA AL LECTOR
(defrule PREGUNTAS::askFrecuencia
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?freq (ask-int "Es aficionado a la lectura? Si(0), De vez en cuando leo(1), No(2) "))
    (send ?x put-freq ?freq)
)

;;ESTO SOLO SI AGREGAMOS EL PARAMETRO TAMAnO
(defrule PREGUNTAS::askLugar
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?lugar (pregunta-si-no "Sueles llevarte los libros a diferentes lugares?"))
	(if (eq ?lugar TRUE)
	then (send ?x put-lugar 1)
	else (send ?x put-lugar 0))
)

(defrule PREGUNTAS::askPopularidad
    (newLector)
	?pref <- (preferencias)
	?f <- (popularidad ask)
	=>
;	(bind ?e (pregunta-si-no "Esta interesado en algun(os) genero(os) en concreto?"))
;	(if (eq ?e TRUE)
	(bind $?obj-popularidad (find-all-instances ((?inst Popularidad)) TRUE))
	(bind $?nom-popularidad (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-popularidad)) do
		(bind ?curr-obj (nth$ ?i ?obj-popularidad))
		(bind ?curr-nom (send ?curr-obj get-nombre))
		(bind $?nom-popularidad(insert$ $?nom-popularidad (+ (length$ $?nom-popularidad) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja que tan populares quiere que sean los libros: " $?nom-popularidad))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-popularidad))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (popularidad $?respuesta))
	
	(retract ?f)
)

(defrule PREGUNTAS::askValoracion
	(newLector)
	?pref <- (preferencias)
	?f <- (valoracion ask)
	=>
	(bind ?valo (ask-int "Que valoracion minima es para ti lo minimo que quieres leer? [1-5]" ))
	(modify ?pref (valoracion ?valo))
	(retract ?f)
)

(defrule PREGUNTAS::askGenero
    (newLector)
	?pref <- (preferencias)
	?f <- (genero ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) genero(os) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-generos (find-all-instances ((?inst Genero)) TRUE))
	(bind $?nom-generos (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-generos)) do
		(bind ?curr-obj (nth$ ?i ?obj-generos))
		(bind ?curr-nom (send ?curr-obj get-nombre))
		(bind $?nom-generos(insert$ $?nom-generos (+ (length$ $?nom-generos) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los generos en los que esta interesado: " $?nom-generos))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-generos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (generos $?respuesta))
	)
	(retract ?f)
)

(defrule PREGUNTAS::askTema
    (newLector)
	?pref <- (preferencias)
	?f <- (tema ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) tema(s) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-temas (find-all-instances ((?inst Tema)) TRUE))
	(bind $?nom-temas (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-temas)) do
		(bind ?curr-obj (nth$ ?i ?obj-temas))
		(bind ?curr-nom (send ?curr-obj get-nombre))
		(bind $?nom-temas(insert$ $?nom-temas (+ (length$ $?nom-temas) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los generos en los que esta interesado: " $?nom-temas))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-temas))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (temas $?respuesta))
	)
	(retract ?f)
	(focus INFERENCIA)
)

; *******************************************************
;               	ABSTRACCION                 
; *******************************************************
(defmodule ABSTRACCION (import MAIN ?ALL)(import PREGUNTAS ?ALL)(export ?ALL))



;;;;; FILTRADO UNA 
; *******************************************************
;               	INFERENCIA                  
; *******************************************************
(defmodule INFERENCIA (import MAIN ?ALL) (import PREGUNTAS ?ALL)(export ?ALL))

(deffacts hechos-iniciales "Establece hechos para poder recopilar informacion"
	(prefvar)
	(recomendaciones)
	(do conjunto)
	(do recomendados)
)

(defrule conjutno-preferencias
	?u <- (preferencias (generos $?generos)(autores $?autores)(temas $?temas))
	?pref <- (prefvar)
	?f <- (do conjunto)
	=>
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ $?generos)) do
		(bind ?curr-atr (nth$ ?i $?generos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(loop-for-count (?i 1 (length$ $?autores)) do
		(bind ?curr-atr (nth$ ?i $?autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(loop-for-count (?i 1 (length$ $?temas)) do
		(bind ?curr-atr (nth$ ?i $?temas))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	;(assert (conj-pref (pref $?respuesta)))
	(modify ?pref (pref $?respuesta))
	(retract ?f)
)


(deffunction existeUna (?carInst $?pref)
  (loop-for-count (?i 1 (length$ $?pref)) do
    (bind ?curr-atr (nth$ ?i $?pref))
    (if (member$ ?curr-atr ?carInst)
      then (return TRUE)
    )
  )
  FALSE
)

(defrule libros-recomendados
	?u <- (prefvar (pref $?pref))
	?recom <- (recomendaciones)
	?f <- (do recomendados)
	=>
	(bind $?respuesta (create$ ))
	(bind $?obj-libros (find-all-instances ((?inst NovelaFiccion)) TRUE))
	(loop-for-count (?i 1 (length$ $?obj-libros)) do
		(bind ?curr-obj (nth$ ?i ?obj-libros))
		(bind $?carInst (send ?curr-obj get-tieneCaracteristica))
		(if (existeUna $?carInst $?pref) then
			(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-obj))
		)
	)
	(modify ?recom (libros ?respuesta))
	(retract ?f)
	(focus RESPUESTA)
)


; *******************************************************
;               	ASSIGNACIONES               
; *******************************************************
;(defmodule ASSIGNACIO (import MAIN ?ALL) (import PREGUNTAS ?ALL)(import INFERENCIA ?ALL)(export ?ALL))

; *******************************************************
;               	RESPUESTA               
; *******************************************************
(defmodule RESPUESTA (import MAIN ?ALL) (import PREGUNTAS ?ALL)(import INFERENCIA ?ALL)(export ?ALL))

(defrule RESPUESTA::printRecomendacion
	?u <- (recomendaciones (libros $?libros))
	(newLector)
	=>
	(printout t crlf)
	(printout t "A partir de tus gustos y caracteriseticas te recomendamos: " crlf)
	(loop-for-count (?i 1 3) do
		(bind ?curr-obj (nth$ ?i $?libros))
		(printout t "Titulo: " (send ?curr-obj get-titulo) crlf)
	)
	(printout t crlf)

)