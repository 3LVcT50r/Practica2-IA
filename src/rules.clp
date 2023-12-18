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

(deffunction pregunta-multi-autores (?pregunta $?valores-posibles)
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
	(multislot popularidad (type INSTANCE)) ;La popularidad es una instancia
	(slot valoracion (type INTEGER))
)

(deftemplate MAIN::abstracciones
	(slot demografia (type FLOAT))
	(slot dificultad (type STRING))
	(slot portabilidad (type STRING))
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
	(autores ask)
	(valoracion ask)
	(preferencias)
)


(defrule PREGUNTAS::askNombre
	(declare (salience 129))
	(newLector)
	=>
	(bind ?nombre (stringg-question "Como te llamas? "))
	(bind ?x (make-instance ?nombre of Lector))
	(send ?x put-nombre ?nombre)
)

(defrule PREGUNTAS::askEdad
	(declare (salience 128))
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?edad (ask-int "Que edad tienes? "))
	;(if (> ?age 0) then (printout t crlf "Lo sentimos, no cumples con los requisitos de edad" crlf)(exit))
    (send ?x put-edad ?edad)
)

(defrule PREGUNTAS::askSexo
	(declare (salience 127))
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?sexo (pregunta-m-h "Sexo: Mujer o Hombre "))
    (send ?x put-sexo ?sexo)
)

;;ESTO NO VA A COMPILAR HASTA QUE SE LE AGREGUE UNA FRECUENCIA AL LECTOR
(defrule PREGUNTAS::askFrecuencia
	(declare (salience 126))
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?freq (ask-int "Es aficionado a la lectura? Si(0), De vez en cuando leo(1), No(2) "))
    (send ?x put-freq ?freq)
)

;;ESTO SOLO SI AGREGAMOS EL PARAMETRO TAMAnO
(defrule PREGUNTAS::askLugar
	(declare (salience 125))
	(newLector)
    ?x <- (object(is-a Lector))
	=>
	(bind ?lugar (pregunta-si-no "Sueles llevarte los libros a diferentes lugares?"))
	(if (eq ?lugar TRUE)
	then (send ?x put-lugar 1)
	else (send ?x put-lugar 0))
)

(defrule PREGUNTAS::askPopularidad
	(declare (salience 124))
    (newLector)
	?pref <- (preferencias)
	?f <- (popularidad ask)
	=>
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
	(declare (salience 123))
	(newLector)
	?pref <- (preferencias)
	?f <- (valoracion ask)
	=>
	(bind ?valo (ask-int "Que valoracion minima es para ti lo minimo que quieres leer? [0-5]: " ))
	(modify ?pref (valoracion ?valo))
	(retract ?f)
)

(defrule PREGUNTAS::askAutores
	(declare (salience 122))
    (newLector)
	?pref <- (preferencias)
	?f <- (autores ask)
	=>
	(bind ?e (pregunta-si-no "Te gusta algun(os) autor(es) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-autores (find-all-instances ((?inst Autor)) TRUE))
	(bind $?nom-autores (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-autores)) do
		(bind ?curr-obj (nth$ ?i ?obj-autores))
		(bind ?curr-nom (send ?curr-obj get-nombre))
		(bind $?nom-autores(insert$ $?nom-autores (+ (length$ $?nom-autores) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi-autores "Escoja los autores en los que esta interesado: " $?nom-autores))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (autores $?respuesta)))
	(retract ?f)
)

(defrule PREGUNTAS::askGenero
	(declare (salience 121))
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
	(modify ?pref (generos $?respuesta)))
	(retract ?f)
)

(defrule PREGUNTAS::askTema
	(declare (salience 120))
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
	(focus ABSTRACCION)
)

; *******************************************************
;               	ABSTRACCION                 
; *******************************************************
(defmodule ABSTRACCION (import MAIN ?ALL)(import PREGUNTAS ?ALL)(export ?ALL))

(deffacts ABSTRACCION::hechos-iniciales "Establece hechos para poder recopilar informacion"
	(abstracciones)
	(demo abas)
	(diff abas)
	(port abas)
)

(defrule decideDemografia
	(declare (salience 102))
	(newLector)
	?x <- (object(is-a Lector))
	?abss <- (abstracciones)
	?f <- (demo abas)
	=>
	(bind ?edada (send ?x get-edad))
	(bind ?sexoe (send ?x get-sexo))

	(if (and (> ?edada 16) (eq ?sexoe FALSE)) then (modify ?abss (demografia 2.5)))
	(if (and (> ?edada 16) (eq ?sexoe TRUE)) then (modify ?abss (demografia 2.0)))
	(if (and (> ?edada 8)  (< ?edada 16) (eq ?sexoe FALSE)) then (modify ?abss (demografia 1.5)))
	(if (and (> ?edada 8)  (< ?edada 16) (eq ?sexoe TRUE)) then (modify ?abss (demografia 1.0)))
	(if (and (> ?edada 0)  (< ?edada 8) ) then (modify ?abss (demografia 0.0)))

	(retract ?f)
	;(focus INFERENCIA)
)

(defrule decideDificultat
	(declare (salience 101))
	(newLector)
	?x <- (object(is-a Lector))
	?abss <- (abstracciones)
	?f <- (diff abas)
	=>	
	(bind ?freqe (send ?x get-freq))
	(bind ?edada (send ?x get-edad))

	(if (eq ?freqe 0) then
		(if (< ?edada 8) then (modify ?abss (dificultad "Media"))
		else (modify ?abss (dificultad "Alta")))
	else (if (eq ?freqe 1) then
		(if (< ?edada 8) then (modify ?abss (dificultad "Baja"))
		else (if (< ?edada 18) then (modify ?abss (dificultad "Media"))
		else (modify ?abss (dificultad "Alta"))))
	else 
		(if (< ?edada 18) then (modify ?abss (dificultad "Baja"))
		else (modify ?abss (dificultad "Media")))
	))

	(retract ?f)
	;(focus INFERENCIA)
)

(defrule decidePortabilidad
	(declare (salience 100))
	(newLector)
	?x <- (object(is-a Lector))
	?abss <- (abstracciones)
	?f <- (port abas)
	=>
	(bind ?lug (send ?x get-lugar))
	(if (eq ?lug 1) then (modify ?abss (portabilidad "Alta"))
	else (modify ?abss (portabilidad "Baja"))
	)

	(retract ?f)
	(focus INFERENCIA)
)

; *******************************************************
;               	INFERENCIA                  
; *******************************************************
(defmodule INFERENCIA (import MAIN ?ALL) (import PREGUNTAS ?ALL)(export ?ALL))

(deffacts hechos-iniciales "Establece hechos para poder recopilar informacion"
	(prefvar)
	(recomendaciones)
	(do conjunto)
	(do abastracta)
	(do recomendados)
)

(deffunction floorNumber (?numero)
  (if (eq ?numero 0.0) then (return 0.0))
  (if (eq ?numero 1.0) then (return 1.0))
  (if (eq ?numero 1.5) then (return 1.0))
  (if (eq ?numero 2.0) then (return 2.0))
  (if (eq ?numero 2.5) then (return 2.0))
)

(deffunction puntuacionAbstracta (?demo ?dif ?port ?carInst) "Asignamos las puntaciones para generar una solucion abstracta (Asociacion heuristica)"
  (bind ?puntuacion 0)
  (bind $?razones (create$ ))
  (bind ?demoLibro )

  (loop-for-count (?i 1 (length$ $?carInst)) do
  (bind ?curr-atr (nth$ ?i $?carInst))
	(bind ?class (str-cat(class ?curr-atr)))
	(if (eq ?class "Demografia") then 
		(bind ?demoLibro (send ?curr-atr get-nombre))
		(if (eq ?demoLibro "Infantil") then (bind ?demoNum 0.0))
		(if (eq ?demoLibro "Juvenil_femenina") then (bind ?demoNum 1.0))
		(if (eq ?demoLibro "Juvenil_masculina") then (bind ?demoNum 1.5))
		(if (eq ?demoLibro "Adulta_femenina") then (bind ?demoNum 2.0))
		(if (eq ?demoLibro "Adulta_masculina") then (bind ?demoNum 2.5))

		(if (eq (floorNumber ?demoNum) (floorNumber ?demo) ) then
			(bind ?puntuacion (+ ?puntuacion 1500))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta dirigido para un publico de tu edad " ?demoLibro " +1500")))
			(if (eq ?demoNum ?demo) then
				(bind ?puntuacion (+ ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta dirigido para un publico de tu genero " ?demoLibro " +500")))
			else
				(bind ?puntuacion (- ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "No esta dirigido para un publico de tu genero " ?demoLibro " -500")))
			)
		)
		(if (> (floorNumber ?demoNum) (floorNumber ?demo) ) then
			(bind ?puntuacion (- ?puntuacion 3000))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "No esta dirigido para un publico como tu, no es seguro recomendarte esto " ?demoLibro " -3000")))
		)
		(if (< (floorNumber ?demoNum) (floorNumber ?demo) ) then
			(bind ?puntuacion (- ?puntuacion 250))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "No esta dirigido para un publico como tu, pero eres apto de este contenido: " ?demoLibro " -250")))
		)
	)
	(if (eq ?class "Tamano") then 
		(bind ?demoLibro (send ?curr-atr get-nombre))
		(if (eq ?port "Alta") then
			(if (eq ?demoLibro "Grande") then
				(bind ?puntuacion (- ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Este libro es muy grande para leerlo fuera de casa " ?demoLibro " -500")))
			else
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Es pequeno, ideal para leerlo fuera de casa " ?demoLibro)))
			)
		else
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "No importa el tamano porque lees en casa " ?demoLibro)))
		)
	)
	(if (eq ?class "Dificultad") then 
		(bind ?demoLibro (send ?curr-atr get-nombre))
		(if (eq ?dif "Alta") then
			(if (eq ?demoLibro "Dificil") then
				(bind ?puntuacion (+ ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Coincide con tu habilidad lectora " ?demoLibro " +500")))
			)
			(if (eq ?demoLibro "Intermedia") then
				(bind ?puntuacion (+ ?puntuacion 0))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta por debajo de tus capacidades, pero no es un problema " ?demoLibro " +0")))
			)
			(if (eq ?demoLibro "Facil") then
				(bind ?puntuacion (- ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Estas mas que capacitado para leerlo, te puede resultar simple " ?demoLibro " -500")))
			)
		)
		(if (eq ?dif "Media") then
			(if (eq ?demoLibro "Dificil") then
				(bind ?puntuacion (- ?puntuacion 1000))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta por encima de tus capacidades " ?demoLibro " -1000")))
			)
			(if (eq ?demoLibro "Intermedia") then
				(bind ?puntuacion (+ ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Coincide con tu habilidad lectora " ?demoLibro " +500")))
			)
			(if (eq ?demoLibro "Facil") then
				(bind ?puntuacion (+ ?puntuacion 0))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta por debajo de tus capacidades, pero no es un problema " ?demoLibro " +0")))
			)
		)
		(if (eq ?dif "Baja") then
			(if (eq ?demoLibro "Dificil") then
				(bind ?puntuacion (- ?puntuacion 3000))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta MUY por encima de tus capacidades " ?demoLibro " -3000")))
			)
			(if (eq ?demoLibro "Intermedia") then
				(bind ?puntuacion (- ?puntuacion 1000))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta por encima de tus capacidades " ?demoLibro " -1000")))
			)
			(if (eq ?demoLibro "Facil") then
				(bind ?puntuacion (+ ?puntuacion 500))
				(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Coincide con tu habilidad lectora " ?demoLibro " +500")))
			)
		)
	)
  )

  (bind ?res (create$ ?puntuacion ?razones))
  (return ?res)
)


(defrule solucionAbstracta "Funcion de refinamiento"
	(declare (salience 80))
	?abs <- (abstracciones (demografia ?demo) (dificultad ?dif) (portabilidad ?port))
	?recom <- (recomendaciones)
	?f <- (do abastracta)
	=>
	(bind $?respuesta (create$ ))
	(bind $?obj-libros (find-all-instances ((?inst NovelaFiccion)) TRUE))
	(loop-for-count (?i 1 (length$ $?obj-libros)) do
		(bind ?curr-obj (nth$ ?i ?obj-libros))
		(bind $?carInst (send ?curr-obj get-tieneCaracteristica))
		(bind ?cosas (puntuacionAbstracta ?demo ?dif ?port ?carInst))
		(bind ?punt (nth$ 1 ?cosas))
		(bind ?razones (delete$ ?cosas 1 1))
		(send ?curr-obj put-puntuacion ?punt)

		(send ?curr-obj put-razones ?razones)
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-obj))
	)
    (modify ?recom (libros ?respuesta))
	(retract ?f)
)

(defrule conjutno-preferencias "Agrupamos las preferencias del lector en una lista para poder usarlas para el refinamiento"
	(declare (salience 79))
	?u <- (preferencias (generos $?generos)(autores $?autores)(temas $?temas)(popularidad $?popus)(valoracion ?valo))
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
	(loop-for-count (?i 1 (length$ $?popus)) do
		(bind ?curr-atr (nth$ ?i $?popus))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?valo))
	(modify ?pref (pref $?respuesta))
	(retract ?f)
)

(deffunction puntuacion (?valo ?carInst $?pref) "Asignamos las puntaciones acorde al refinamiento"
  (bind ?puntuacion 0)
  (bind $?razones (create$ ))

  (loop-for-count (?i 1 (length$ $?pref)) do
    (bind ?curr-atr (nth$ ?i $?pref))
	(bind ?class (str-cat(class ?curr-atr)))

	(if (eq ?class "INTEGER") then 
		(if (>= ?valo ?curr-atr ) then
			(bind ?puntuacion (+ ?puntuacion 500))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Admite tu valoracion minima (tu valoracion " ?curr-atr ") +500")))
		else
			(bind ?puntuacion (- ?puntuacion 500))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Esta por debajo de tu valoracion ideal (tu valoracion " ?curr-atr ") -500")))
		)
	)

    (if (member$ ?curr-atr ?carInst) then 
		(if (eq ?class "Genero") then 
			(bind ?puntuacion (+ ?puntuacion 1000))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Porque te gusta el genero " (send ?curr-atr get-nombre) " +1000"))) 
		)
		(if (eq ?class "Tema") then 
			(bind ?puntuacion (+ ?puntuacion 2000))
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Porque te gusta el tema " (send ?curr-atr get-nombre) " +2000")))
		)
		(if (eq ?class "Autor") then (
			bind ?puntuacion (+ ?puntuacion 500)) 
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Porque te gusta el autor " (send ?curr-atr get-nombre) " +500")))
		)
		(if (eq ?class "Popularidad") then (
			bind ?puntuacion (+ ?puntuacion 250)) 
			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (str-cat "Coincide con la popularidad requerida " (send ?curr-atr get-nombre) " +250")))
		)
    )
  )

  (bind ?res (create$ ?puntuacion ?razones))
  (return ?res)
)

(deffunction sort_puntuacion (?c1 ?c2) "Funcion de comparacion especifica para ordenar una lsita de intancias de libros atraves de su puntuacion"
	(< (send ?c1 get-puntuacion) (send ?c2 get-puntuacion))
)

(defrule libros-recomendados "Funcion de refinamiento"
	(declare (salience 78))
	?u <- (prefvar (pref $?pref))
	?recom <- (recomendaciones (libros $?libros))
	?f <- (do recomendados)
	=>
	(bind $?respuesta (create$ ))

	(loop-for-count (?i 1 (length$ $?libros)) do
		(bind ?curr-obj (nth$ ?i ?libros))
		(bind $?carInst (send ?curr-obj get-tieneCaracteristica))
		(bind ?valo (send ?curr-obj get-valoracion))
		(bind ?cosas (puntuacion ?valo $?carInst $?pref))
		(bind ?punt (nth$ 1 ?cosas))
		(if (> ?punt 0) then
			(bind ?razones (delete$ ?cosas 1 1))
			(send ?curr-obj put-puntuacion (+ ?punt (send ?curr-obj get-puntuacion)))

			(bind $?razones(insert$ $?razones (+ (length$ $?razones) 1) (send ?curr-obj get-razones)))
			(send ?curr-obj put-razones ?razones)
			;(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-obj))
		)
	)

	(bind $?libros (sort sort_puntuacion $?libros))
    (modify ?recom (libros ?libros))
	(retract ?f)
	(focus RESPUESTA)
)

; *******************************************************
;               	RESPUESTA               
; *******************************************************
(defmodule RESPUESTA (import MAIN ?ALL) (import PREGUNTAS ?ALL)(import INFERENCIA ?ALL)(export ?ALL))


(deffunction printInst (?carInst ?type)
  (loop-for-count (?i 1 (length$ $?carInst)) do
    (bind ?curr-atr (nth$ ?i $?carInst))
	(bind ?class (str-cat(class ?curr-atr)))
	(if (eq ?class ?type) then 
		(printout t " " (send ?curr-atr get-nombre))
	)
  )
  (printout t crlf)
)

(deffunction razonesPreferencias (?carInst ?type)
  (loop-for-count (?i 1 (length$ $?carInst)) do
    (bind ?curr-atr (nth$ ?i $?carInst))
	(bind ?class (str-cat(class ?curr-atr)))
	(if (eq ?class ?type) then 
		(printout t " " (send ?curr-atr get-nombre))
	)
  )
  (printout t crlf)
)

(deffunction printRazones (?book ?carInst)
	(printout t crlf)
	(bind ?punt (send ?book get-puntuacion))
	(printout t "Este libro tiene una puntacion de recomendacion de: " ?punt  crlf)

	(if (> ?punt 4000) then 
		(printout t "Es una recomendacion muy buena" crlf)
	)
	(if (and (> ?punt 2000)  (< ?punt 4000)) then 
		(printout t "Es una recomendacion buena" crlf)
	)
	(if (and (> ?punt 1000)  (< ?punt 2000)) then 
		(printout t "Es una recomendacion normal" crlf)
	)
	(if (and (> ?punt 0)  (< ?punt 1000)) then 
		(printout t "Es una recomendacion un poco aleatoria" crlf)
	)
	(if (< ?punt 0) then 
		(printout t "No la recomendamos, pero es lo unico que hay en el sistema" crlf)
	)

	(printout t "Las razones de su recomendacion son la siguientes:" crlf)
	(bind ?rec (send ?book get-razones))
	(loop-for-count (?i 1 (length$ $?rec)) do
		(printout t "-")
		(bind ?curr-atr (nth$ ?i $?rec))
		(printout t ?curr-atr  crlf)
 	)
	(printout t crlf)
)

(deffunction printBook (?book)
	(bind $?carInst (send ?book get-tieneCaracteristica))
	(printout t "-------------------------------------------------------------------------------" crlf crlf)
	(printout t "Titulo: " (send ?book get-titulo) crlf)
	(printout t "Autor:") (printInst ?carInst "Autor")
	(printout t "Generos:") (printInst ?carInst "Genero")
	(printout t "Temas:") (printInst ?carInst "Tema")
	(printout t "Demografia:") (printInst ?carInst "Demografia")
	(printout t "Dificultad:") (printInst ?carInst "Dificultad")
	(printout t "Valoracion:" (send ?book get-valoracion) crlf) 
	(printRazones ?book ?carInst)
	(printout t "-------------------------------------------------------------------------------" crlf)
)


(defrule RESPUESTA::printRecomendacion
	?u <- (recomendaciones (libros $?libros))
	(newLector)
	=>
	(printout t crlf)
	(printout t "A partir de tus gustos y caracteriseticas te recomendamos: " crlf)
	(printout t "-------------------------------------------------------------------------------" crlf crlf)
	(loop-for-count (?i 1 3) do
		(printout t "LIBRO " ?i crlf)
		(bind ?curr-obj (nth$ ?i $?libros))
		(printBook ?curr-obj)
	)
	(printout t "" crlf)

)