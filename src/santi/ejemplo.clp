(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot dimensiones
;+		(comment "Pequenyo = 1\nMediano = 2\nGrande = 3\nEnorme = 4")
		(type SYMBOL)
		(allowed-values PEQUENYO MEDIANO GRANDE ENORME)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tiene_tema
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write))
	(multislot tiene_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(single-slot complejidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tratado_por
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(multislot tiene
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(multislot prefiere
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(multislot tiene_autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot museo_Class10013
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_elementos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
;+		(comment "más relavancia 5 y menos 1")
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horas_diarias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conocimiento
		(type SYMBOL)
		(allowed-values BAJO MEDIO_BAJO MEDIO_ALTO ALTO)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_fin
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pertenecio_a
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot relacionada_con
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(single-slot vivio_en
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot visitamos
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write))
	(single-slot tipo_visita
;+		(comment "solo,familia, grupo p/g")
		(type SYMBOL)
		(allowed-values SOLO FAMILIA GRUPO_G GRUPO_P)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot crea_obra
		(type INSTANCE)
;+		(allowed-classes Obra)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot museo_Class5
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot year
;+		(comment "año de creación")
		(type INTEGER)
		(range 0 2000)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dia
		(type INTEGER)
		(create-accessor read-write))
	(single-slot nombre_caracteristica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_obra
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write))
	(single-slot museo_Class10024
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot museo_Class14
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot pertenece_a_estilos
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pertenece_a
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot prefiere_tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creado_por
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_ini
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo_restante
;+		(comment "En minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot vivio_durante
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Obra
	(is-a USER)
	(role concrete)
	(single-slot numero_elementos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(single-slot dimensiones
;+		(comment "Pequenyo = 1\nMediano = 2\nGrande = 3\nEnorme = 4")
		(type SYMBOL)
		(allowed-values PEQUENYO MEDIANO GRANDE ENORME)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot relevancia
;+		(comment "más relavancia 5 y menos 1")
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Visita
	(is-a USER)
	(role concrete)
	(single-slot conocimiento
		(type SYMBOL)
		(allowed-values BAJO MEDIO_BAJO MEDIO_ALTO ALTO)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_visita
;+		(comment "solo,familia, grupo p/g")
		(type SYMBOL)
		(allowed-values SOLO FAMILIA GRUPO_G GRUPO_P)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prefiere
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(single-slot horas_diarias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Caracteristica
	(is-a USER)
	(role abstract)
	(single-slot nombre_caracteristica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_obra
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write)))

(defclass Autor
	(is-a Caracteristica)
	(role concrete)
	(single-slot pertenece_a
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot vivio_durante
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Tema
	(is-a Caracteristica)
	(role concrete)
	(multislot tiene_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write)))

(defclass Estilo
	(is-a Caracteristica)
	(role concrete)
	(multislot tiene_tema
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write))
	(multislot tiene_autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write)))

(defclass Epoca
	(is-a Caracteristica)
	(role concrete)
	(pattern-match reactive)
	(single-slot anyo_fin
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_ini
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(multislot tiene_autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write)))

(defclass Dia_En_El_Museo
	(is-a USER)
	(role concrete)
	(multislot visitamos
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write))
	(single-slot tiempo_restante
;+		(comment "En minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dia
		(type INTEGER)
		(create-accessor read-write)))
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					INSTANCIAS					 		---------- 								INSTANCIAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
(definstances instances

	; Sun Dec 13 14:40:48 CET 2020
	;
	;+ (version "3.5")
	;+ (build "Build 663")

	([museo_Class0] of  Autor

		(nombre_caracteristica "El Bosco")
		(pertenece_a [museo_Class3])
		(tiene_obra [museo_Class10010])
		(vivio_durante [museo_Class1]))

	([museo_Class1] of  Epoca

		(anyo_fin 1500)
		(anyo_ini 1401)
		(nombre_caracteristica "XV")
		(tiene_autor [museo_Class0]))

	([museo_Class10000] of  Obra

		(dimensiones GRANDE)
		(fecha 1632)
		(nombre "Cristo Crucificado")
		(numero_elementos 2)
		(relevancia 2)
		(tiene
			[museo_Class10001]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class20017]))

	([museo_Class10001] of  Autor

		(nombre_caracteristica "Diego Velazquez")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10002]))

	([museo_Class10002] of  Epoca

		(anyo_fin 1700)
		(anyo_ini 1601)
		(nombre_caracteristica "XVII")
		(tiene_autor
			[museo_Class30013]
			[museo_Class10001]
			[museo_Class20011]
			[museo_Class30018]
			[museo_Class20008]
			[museo_Class30015])
		(tiene_estilo [museo_Class10004]))

	([museo_Class10003] of  Epoca

		(anyo_fin 1800)
		(anyo_ini 1701)
		(nombre_caracteristica "XVIII")
		(tiene_autor
			[museo_Class30027]
			[museo_Class30024]
			[museo_Class30022]
			[museo_Class30003]
			[museo_Class40006]
			[museo_Class40008])
		(tiene_estilo
			[museo_Class10004]
			[museo_Class20004]
			[museo_Class50014]))

	([museo_Class10004] of  Estilo

		(nombre_caracteristica "Barroco")
		(tiene_autor
			[museo_Class10001]
			[museo_Class30013]
			[museo_Class10001]
			[museo_Class20011]
			[museo_Class30027]
			[museo_Class30024]
			[museo_Class30018]
			[museo_Class30022]
			[museo_Class20008]
			[museo_Class30015]
			[museo_Class30003]
			[museo_Class40006]
			[museo_Class40008])
		(tiene_obra [museo_Class10000])
		(tiene_tema
			[museo_Class4]
			[museo_Class30000]
			[museo_Class20017]
			[museo_Class30005]))

	([museo_Class10005] of  Tema

		(nombre_caracteristica "Paisaje")
		(tiene_estilo
			[museo_Class3]
			[museo_Class20004]))

	([museo_Class10008] of  Obra

		(dimensiones MEDIANO)
		(fecha 1401)
		(nombre "La creacion")
		(numero_elementos 7)
		(relevancia 2)
		(tiene
			[museo_Class0]
			[museo_Class1]
			[museo_Class3]
			[museo_Class20017]))

	([museo_Class10009] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1482)
		(nombre "Fantasia moral")
		(numero_elementos 10)
		(relevancia 3)
		(tiene
			[museo_Class0]
			[museo_Class1]
			[museo_Class3]
			[museo_Class20017]))

	([museo_Class10010] of  Obra

		(dimensiones GRANDE)
		(fecha 1490)
		(nombre "Triptico del Jardin de las delicias")
		(numero_elementos 10)
		(relevancia 4)
		(tiene
			[museo_Class0]
			[museo_Class1]
			[museo_Class10005]
			[museo_Class20017]
			[museo_Class3]))

	([museo_Class10011] of  Obra

		(dimensiones MEDIANO)
		(fecha 1494)
		(nombre "Triptica de la Adoracion de los Magos")
		(numero_elementos 9)
		(relevancia 1)
		(tiene
			[museo_Class0]
			[museo_Class1]
			[museo_Class10005]
			[museo_Class20017]
			[museo_Class3]))

	([museo_Class10012] of  Autor

		(nombre_caracteristica "Fra Angelico")
		(pertenece_a [museo_Class20013])
		(vivio_durante [museo_Class1]))

	([museo_Class2] of  Epoca

		(anyo_fin 1600)
		(anyo_ini 1501)
		(nombre_caracteristica "XVI"))

	([museo_Class20000] of  Obra

		(dimensiones GRANDE)
		(fecha 1804)
		(nombre "El 3 de mayo en Madrid")
		(numero_elementos 8)
		(relevancia 4)
		(tiene
			[museo_Class20001]
			[museo_Class20002]
			[museo_Class20004]
			[museo_Class30005]))

	([museo_Class20001] of  Autor

		(nombre_caracteristica "Francisco de Goya y Lucientes")
		(pertenece_a [museo_Class20004])
		(vivio_durante [museo_Class20002]))

	([museo_Class20002] of  Epoca

		(anyo_fin 1900)
		(anyo_ini 1801)
		(nombre_caracteristica "XIX")
		(tiene_autor
			[museo_Class20001]
			[museo_Class30010]
			[museo_Class30008]))

	([museo_Class20004] of  Estilo

		(nombre_caracteristica "Romanticismo")
		(tiene_autor [museo_Class20001])
		(tiene_obra [museo_Class20000]))

	([museo_Class20005] of  Obra

		(dimensiones GRANDE)
		(fecha 1656)
		(nombre "Las meninas")
		(numero_elementos 7)
		(relevancia 4)
		(tiene
			[museo_Class10001]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class20006] of  Obra

		(dimensiones GRANDE)
		(fecha 1635)
		(nombre "Las lanzas o La rendición de Breda")
		(numero_elementos 6)
		(relevancia 2)
		(tiene
			[museo_Class10001]
			[museo_Class10002]
			[museo_Class10004]))

	([museo_Class20007] of  Obra

		(dimensiones MEDIANO)
		(fecha 1630)
		(nombre "Las tres Gracias")
		(numero_elementos 4)
		(relevancia 3)
		(tiene
			[museo_Class20008]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class20017]))

	([museo_Class20008] of  Autor

		(nombre_caracteristica "Pedro Pablo Rubens")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10002]))

	([museo_Class20009] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1606)
		(nombre "El juicio de Paris")
		(numero_elementos 7)
		(relevancia 3)
		(tiene
			[museo_Class20008]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class30000]))

	([museo_Class20010] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1617)
		(nombre "La Vista")
		(numero_elementos 9)
		(relevancia 1)
		(tiene
			[museo_Class20008]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class20017]
			[museo_Class20011]))

	([museo_Class20011] of  Autor

		(nombre_caracteristica "Jan Brueghel el Viejo")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10002]))

	([museo_Class20012] of  Obra

		(dimensiones MEDIANO)
		(fecha 1650)
		(nombre "Sagrada Familia del pajarito")
		(numero_elementos 4)
		(relevancia 2)
		(tiene
			[museo_Class30013]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class20013] of  Estilo

		(nombre_caracteristica "Gotico Internacional")
		(tiene_autor [museo_Class10012]))

	([museo_Class20014] of  Obra

		(dimensiones MEDIANO)
		(fecha 1422)
		(nombre "La Anunciacion")
		(numero_elementos 4)
		(relevancia 3)
		(tiene
			[museo_Class10012]
			[museo_Class20017]
			[museo_Class1]
			[museo_Class20013]))

	([museo_Class20015] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1426)
		(nombre "Funeral de san Antoni Abad")
		(numero_elementos 8)
		(relevancia 3)
		(tiene
			[museo_Class10012]
			[museo_Class1]
			[museo_Class20013]
			[museo_Class20017]))

	([museo_Class20016] of  Obra

		(dimensiones MEDIANO)
		(fecha 1435)
		(nombre "La Virgen de la Humildad")
		(numero_elementos 4)
		(relevancia 3)
		(tiene
			[museo_Class10012]
			[museo_Class20013]
			[museo_Class1]
			[museo_Class20017]))

	([museo_Class20017] of  Tema

		(nombre_caracteristica "Religioso")
		(tiene_estilo [museo_Class10004]))

	([museo_Class3] of  Estilo

		(nombre_caracteristica "Pintura Flamenca")
		(tiene_autor [museo_Class0])
		(tiene_tema
			[museo_Class10005]
			[museo_Class4]))

	([museo_Class30000] of  Tema

		(nombre_caracteristica "Mitología")
		(tiene_estilo [museo_Class10004])
		(tiene_obra
			[museo_Class20009]
			[museo_Class50009]
			[museo_Class40015]
			[museo_Class50011]))

	([museo_Class30001] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1729)
		(nombre "Bárbara de Braganza, reina de España")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class30027]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class30002] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1727)
		(nombre "La educación de Aquiles")
		(numero_elementos 4)
		(relevancia 2)
		(tiene
			[museo_Class30003]
			[museo_Class10003]))

	([museo_Class30003] of  Autor

		(nombre_caracteristica "Sebastiano Conca")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10003]))

	([museo_Class30004] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1736)
		(nombre "Alejandro Magno en el Templo de Jerusalén")
		(numero_elementos 10)
		(relevancia 3)
		(tiene
			[museo_Class30003]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class30005]))

	([museo_Class30005] of  Tema

		(nombre_caracteristica "Historico")
		(tiene_estilo
			[museo_Class20004]
			[museo_Class10004]))

	([museo_Class30006] of  Obra

		(dimensiones MEDIANO)
		(fecha 1800)
		(nombre "La maja vestida")
		(numero_elementos 1)
		(relevancia 4)
		(tiene
			[museo_Class20001]
			[museo_Class20002]
			[museo_Class20004]
			[museo_Class4]))

	([museo_Class30007] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1816)
		(nombre "Maria Isabel de Braganza")
		(numero_elementos 1)
		(relevancia 1)
		(tiene
			[museo_Class30008]
			[museo_Class20002]
			[museo_Class4]))

	([museo_Class30008] of  Autor

		(nombre_caracteristica "Vicente Lopez Portana")
		(pertenece_a [museo_Class30011])
		(tiene_obra [museo_Class30007])
		(vivio_durante [museo_Class20002]))

	([museo_Class30009] of  Obra

		(dimensiones MEDIANO)
		(fecha 1837)
		(nombre "Manada de toros junto a un río, al pie de un castillo")
		(numero_elementos 8)
		(relevancia 2)
		(tiene
			[museo_Class30010]
			[museo_Class20002]))

	([museo_Class30010] of  Autor

		(nombre_caracteristica "Genaro Perez Vilaamil y Duguet")
		(pertenece_a [museo_Class30011])
		(tiene_obra [museo_Class30009])
		(vivio_durante [museo_Class20002]))

	([museo_Class30011] of  Estilo

		(nombre_caracteristica "Escuela Espanyola")
		(tiene_autor
			[museo_Class30010]
			[museo_Class30008])
		(tiene_obra
			[museo_Class30009]
			[museo_Class30007]))

	([museo_Class30012] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1827)
		(nombre "La lechera de Burdeos")
		(numero_elementos 1)
		(relevancia 3)
		(tiene
			[museo_Class20001]
			[museo_Class20002]
			[museo_Class4]
			[museo_Class40013]))

	([museo_Class30013] of  Autor

		(nombre_caracteristica "Bartolomé Esteban Murillo")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10002]))

	([museo_Class30014] of  Obra

		(dimensiones GRANDE)
		(fecha 1678)
		(nombre "Inmaculada de Soult")
		(numero_elementos 3)
		(relevancia 4)
		(tiene
			[museo_Class30013]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class20017]))

	([museo_Class30015] of  Autor

		(nombre_caracteristica "Vicente Victoria")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10002]))

	([museo_Class30016] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1700)
		(nombre "Armas y pertrechos de caza")
		(numero_elementos 7)
		(relevancia 1)
		(tiene
			[museo_Class30015]
			[museo_Class10002]
			[museo_Class10004]))

	([museo_Class30017] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1693)
		(nombre "Carlos II")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class30018]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class30018] of  Autor

		(nombre_caracteristica "Luca Giordano")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10002]))

	([museo_Class30019] of  Obra

		(dimensiones ENORME)
		(fecha 1697)
		(nombre "Bóveda con la Apoteosis de la Monarquía Española")
		(numero_elementos 10)
		(relevancia 3)
		(tiene
			[museo_Class30018]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class20017]))

	([museo_Class30020] of  Obra

		(dimensiones MEDIANO)
		(fecha 1670)
		(nombre "Los ninos de la concha")
		(numero_elementos 2)
		(relevancia 2)
		(tiene
			[museo_Class30013]
			[museo_Class10002]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class30021] of  Obra

		(dimensiones MEDIANO)
		(fecha 1717)
		(nombre "Luis I, príncipe de Asturias")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class10003]
			[museo_Class30022]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class30022] of  Autor

		(nombre_caracteristica "Michel-Ange Houasse")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10003]))

	([museo_Class30023] of  Obra

		(dimensiones ENORME)
		(fecha 1743)
		(nombre "La Familia de Felipe V")
		(numero_elementos 10)
		(relevancia 3)
		(tiene
			[museo_Class30024]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class30024] of  Autor

		(nombre_caracteristica "Louis-Michel Loo")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10003]))

	([museo_Class30025] of  Obra

		(dimensiones MEDIANO)
		(fecha 1720)
		(nombre "Ofrenda a Baco")
		(numero_elementos 10)
		(relevancia 3)
		(tiene
			[museo_Class30022]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class30000]))

	([museo_Class30026] of  Obra

		(dimensiones MEDIANO)
		(fecha 1724)
		(nombre "Carlos III, niño, en su gabinete")
		(numero_elementos 3)
		(relevancia 2)
		(tiene
			[museo_Class30027]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class4]))

	([museo_Class30027] of  Autor

		(nombre_caracteristica "Jean Ranc")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10003]))

	([museo_Class4] of  Tema

		(nombre_caracteristica "Retrato")
		(tiene_estilo
			[museo_Class3]
			[museo_Class10004]
			[museo_Class20004]
			[museo_Class50014]))

	([museo_Class40000] of  Tema

		(nombre_caracteristica "Naturaleza")
		(tiene_estilo [museo_Class50014])
		(tiene_obra [museo_Class50013]))

		([museo_Class40001] of  Obra

			(dimensiones MEDIANO)
			(fecha 1894)
			(nombre "Aun dicen que el pescado es caro!")
			(numero_elementos 3)
			(relevancia 4)
			(tiene
				[museo_Class20002]
				[museo_Class40002]
				[museo_Class40003]
				[museo_Class50008]))

	([museo_Class40002] of  Estilo

		(nombre_caracteristica "Luminismo")
		(tiene_autor [museo_Class40003])
		(tiene_obra
			[museo_Class40001]
			[museo_Class50006])
		(tiene_tema [museo_Class50008]))

	([museo_Class40003] of  Autor

		(nombre_caracteristica "Joaquin Sorolla y Bastida")
		(pertenece_a [museo_Class40002])
		(tiene_obra
			[museo_Class40001]
			[museo_Class50006]
			[museo_Class50007]
			[museo_Class50005])
		(vivio_durante [museo_Class40004]))

	([museo_Class40004] of  Epoca

		(anyo_fin 2000)
		(anyo_ini 1901)
		(nombre_caracteristica "XX")
		(tiene_autor [museo_Class40003])
		(tiene_estilo [museo_Class40002])
		(tiene_obra
			[museo_Class50006]
			[museo_Class50007]
			[museo_Class50005]
			[museo_Class50009]
			[museo_Class50011]))

	([museo_Class40005] of  Obra

		(dimensiones GRANDE)
		(fecha 1754)
		(nombre "Alegoría de la Justicia y la Paz")
		(numero_elementos 6)
		(relevancia 2)
		(tiene
			[museo_Class40006]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class20017]))

	([museo_Class40006] of  Autor

		(nombre_caracteristica "Corrado Giaquinto")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10003]))

	([museo_Class40007] of  Obra

		(dimensiones MEDIANO)
		(fecha 1765)
		(nombre "María Luisa de Parma, Princesa de Asturias")
		(numero_elementos 1)
		(relevancia 1)
		(tiene
			[museo_Class40008]
			[museo_Class10004]
			[museo_Class4]
			[museo_Class10003]))

	([museo_Class40008] of  Autor

		(nombre_caracteristica "Anton Rafael Mengs")
		(pertenece_a [museo_Class10004])
		(vivio_durante [museo_Class10003]))

	([museo_Class40009] of  Obra

		(dimensiones GRANDE)
		(fecha 1770)
		(nombre "La Adoración de los pastores")
		(numero_elementos 8)
		(relevancia 3)
		(tiene
			[museo_Class40008]
			[museo_Class10003]
			[museo_Class10004]
			[museo_Class20017]))

	([museo_Class40010] of  Obra

		(dimensiones MEDIANO)
		(fecha 1775)
		(nombre "Perros en traílla")
		(numero_elementos 3)
		(relevancia 3)
		(tiene
			[museo_Class20001]
			[museo_Class10003]
			[museo_Class20004]
			[museo_Class4]))

	([museo_Class40011] of  Obra

		(dimensiones GRANDE)
		(fecha 1779)
		(nombre "El columpio")
		(numero_elementos 5)
		(relevancia 2)
		(tiene
			[museo_Class20001]
			[museo_Class20004]
			[museo_Class10003]
			[museo_Class4]))

	([museo_Class40012] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1788)
		(nombre "La pradera de San Isidro")
		(numero_elementos 10)
		(relevancia 2)
		(tiene
			[museo_Class20001]
			[museo_Class10003]
			[museo_Class20004]
			[museo_Class10005]))

	([museo_Class40013] of  Estilo

		(nombre_caracteristica "Impresionismo")
		(tiene_autor [museo_Class20001])
		(tiene_obra [museo_Class30012]))

	([museo_Class40014] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1828)
		(nombre "Maria Josefa Amalia de Sajonia")
		(numero_elementos 1)
		(relevancia 1)
		(tiene
			[museo_Class30008]
			[museo_Class20002]
			[museo_Class30011]
			[museo_Class4]))

	([museo_Class40015] of  Obra

		(dimensiones MEDIANO)
		(fecha 1820)
		(nombre "Saturno")
		(numero_elementos 2)
		(relevancia 3)
		(tiene
			[museo_Class20001]
			[museo_Class20002]
			[museo_Class20004]
			[museo_Class30000]))

	([museo_Class40016] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1826)
		(nombre "El pintor Francisco de Goya")
		(numero_elementos 1)
		(relevancia 3)
		(tiene
			[museo_Class30008]
			[museo_Class20002]
			[museo_Class30011]
			[museo_Class4]))

	([museo_Class40017] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1833)
		(nombre "Castillo de Alcala de Guadaria")
		(numero_elementos 10)
		(relevancia 1)
		(tiene
			[museo_Class10005]
			[museo_Class20002]
			[museo_Class40018]
			[museo_Class40019]))

	([museo_Class40018] of  Autor

		(nombre_caracteristica "David Roberts")
		(pertenece_a [museo_Class40019])
		(vivio_durante [museo_Class20002]))

	([museo_Class40019] of  Estilo

		(nombre_caracteristica "Paisajismo britanico")
		(tiene_autor [museo_Class40018])
		(tiene_obra [museo_Class40017]))

	([museo_Class40020] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1830)
		(nombre "María Cristina de Borbón, reina de España")
		(numero_elementos 1)
		(relevancia 1)
		(tiene
			[museo_Class20002]
			[museo_Class30008]
			[museo_Class30011]
			[museo_Class4]))

	([museo_Class40021] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1833)
		(nombre "La Torre del Oro")
		(numero_elementos 10)
		(relevancia 1)
		(tiene
			[museo_Class40018]
			[museo_Class20002]
			[museo_Class40019]
			[museo_Class10005]))

	([museo_Class50000] of  Autor

		(nombre_caracteristica "Sandro Botticelli")
		(pertenece_a [museo_Class50003])
		(vivio_durante [museo_Class1]))

	([museo_Class50003] of  Estilo

		(nombre_caracteristica "Renacimiento"))

	([museo_Class50004] of  Obra

		(dimensiones MEDIANO)
		(fecha 1483)
		(nombre "La historia de Nastagio degli Onesti")
		(numero_elementos 3)
		(relevancia 3)
		(tiene
			[museo_Class50000]
			[museo_Class1]
			[museo_Class50003]
			[museo_Class30005]))

	([museo_Class50005] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1917)
		(nombre "Autorretrato")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class40003]
			[museo_Class40004]
			[museo_Class4]))

	([museo_Class50006] of  Obra

		(dimensiones MEDIANO)
		(fecha 1909)
		(nombre "Chicos en el agua")
		(numero_elementos 4)
		(relevancia 4)
		(tiene
			[museo_Class40003]
			[museo_Class40004]
			[museo_Class40002]))

	([museo_Class50007] of  Obra

		(dimensiones MEDIANO)
		(fecha 1901)
		(nombre "Maria Figueroa vestida de menina")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class40003]
			[museo_Class40004]
			[museo_Class4]))

	([museo_Class50008] of  Tema

		(nombre_caracteristica "Critica Social")
		(tiene_estilo [museo_Class40002])
		(tiene_obra [museo_Class40001]))

	([museo_Class50009] of  Obra

		(dimensiones MEDIANO)
		(fecha 1946)
		(nombre "Ceres o desnudo")
		(numero_elementos 5)
		(relevancia 2)
		(tiene
			[museo_Class50010]
			[museo_Class40004]
			[museo_Class30000]))

	([museo_Class50010] of  Autor

		(nombre_caracteristica "Fernando Alvarez de Sotomayor y Zaragoza")
		(pertenece_a [museo_Class40002])
		(tiene_obra [museo_Class50009])
		(vivio_durante [museo_Class40004]))

	([museo_Class50011] of  Obra

		(dimensiones MEDIANO)
		(fecha 1940)
		(nombre "Montserrat Güell como Diana en el baño")
		(numero_elementos 4)
		(relevancia 1)
		(tiene
			[museo_Class50010]
			[museo_Class30000]
			[museo_Class40004]))

	([museo_Class50013] of  Obra

		(dimensiones MEDIANO)
		(fecha 1786)
		(nombre "Riña de gatos")
		(numero_elementos 2)
		(relevancia 1)
		(tiene
			[museo_Class20001]
			[museo_Class10003]
			[museo_Class50014]
			[museo_Class40000]))

	([museo_Class50014] of  Estilo

		(nombre_caracteristica "Prerromanticismo")
		(tiene_autor [museo_Class20001])
		(tiene_tema [museo_Class4]))

	([museo_Class50015] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1798)
		(nombre "Vuelo de brujas")
		(numero_elementos 5)
		(relevancia 1)
		(tiene
			[museo_Class10003]
			[museo_Class20001]
			[museo_Class20004]
			[museo_Class30000]))

	([museo_Class60006] of  Obra

		(dimensiones GRANDE)
		(fecha 1485)
		(nombre "El nacimiento de Venus")
		(numero_elementos 4)
		(relevancia 4)
		(tiene
			[museo_Class50000]
			[museo_Class1]
			[museo_Class50003]
			[museo_Class30000]))

	([museo_Class60007] of  Obra

		(dimensiones GRANDE)
		(fecha 1481)
		(nombre "La primavera")
		(numero_elementos 7)
		(relevancia 4)
		(tiene
			[museo_Class50000]
			[museo_Class1]
			[museo_Class50003]
			[museo_Class30000]))

	([museo_Class60008] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1495)
		(nombre "La calumnia de Apeles")
		(numero_elementos 5)
		(relevancia 1)
		(tiene
			[museo_Class50000]
			[museo_Class1]
			[museo_Class50003]
			[museo_Class30000]))

	([museo_Class60009] of  Autor

		(nombre_caracteristica "Robert Campin")
		(pertenece_a [museo_Class3])
		(vivio_durante [museo_Class1]))

	([museo_Class60010] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1420)
		(nombre "La Anunciación")
		(numero_elementos 2)
		(relevancia 4)
		(tiene
			[museo_Class60009]
			[museo_Class1]
			[museo_Class3]
			[museo_Class20017]))

	([museo_Class60011] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1430)
		(nombre "Desposorios de la Virgen")
		(numero_elementos 10)
		(relevancia 4)
		(tiene
			[museo_Class60009]
			[museo_Class1]
			[museo_Class3]
			[museo_Class20017]))

	([museo_Class60012] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1438)
		(nombre "Santa Barbara")
		(numero_elementos 1)
		(relevancia 4)
		(tiene
			[museo_Class60009]
			[museo_Class1]
			[museo_Class3]
			[museo_Class10005]
			[museo_Class20017]))

	([museo_Class60013] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1427)
		(nombre "Desposorios de la Virgen")
		(numero_elementos 10)
		(relevancia 1)
		(tiene
			[museo_Class60009]
			[museo_Class1]
			[museo_Class3]
			[museo_Class20017]))

	([museo_Class60014] of  Autor

		(nombre_caracteristica "El Greco")
		(pertenece_a [museo_Class60015])
		(vivio_durante [museo_Class2]))

	([museo_Class60015] of  Estilo

		(nombre_caracteristica "Manierismo")
		(tiene_autor [museo_Class60014]))

	([museo_Class60016] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1580)
		(nombre "Caballero de la mano en el pecho")
		(numero_elementos 1)
		(relevancia 4)
		(tiene
			[museo_Class60014]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class4]))

	([museo_Class60017] of  Obra

		(dimensiones GRANDE)
		(fecha 1577)
		(nombre "El expolio")
		(numero_elementos 10)
		(relevancia 3)
		(tiene
			[museo_Class60014]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class20017]))

	([museo_Class60018] of  Obra

		(dimensiones ENORME)
		(fecha 1577)
		(nombre "El retablo mayor de Santo Domingo el Antiguo")
		(numero_elementos 7)
		(relevancia 1)
		(tiene
			[museo_Class60014]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class20017]))

	([museo_Class60020] of  Autor

		(nombre_caracteristica "Joachim Patinir")
		(pertenece_a [museo_Class50003])
		(vivio_durante [museo_Class2]))

	([museo_Class60022] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1520)
		(nombre "El paso de la laguna Estigia")
		(numero_elementos 4)
		(relevancia 4)
		(tiene
			[museo_Class60020]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class10005]))

	([museo_Class60023] of  Obra

		(dimensiones MEDIANO)
		(fecha 1518)
		(nombre "Descanso en la huida a Egipto")
		(numero_elementos 2)
		(relevancia 2)
		(tiene
			[museo_Class60020]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))

	([museo_Class60024] of  Obra

		(dimensiones MEDIANO)
		(fecha 1520)
		(nombre "San Jerónimo en el desierto")
		(numero_elementos 3)
		(relevancia 1)
		(tiene
			[museo_Class60020]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class10005]
			[museo_Class20017]))

	([museo_Class60025] of  Autor

		(nombre_caracteristica "Vecellio de Gregorio Tiziano")
		(pertenece_a [museo_Class60015])
		(vivio_durante [museo_Class2]))

	([museo_Class60026] of  Obra

		(dimensiones MEDIANO)
		(fecha 1538)
		(nombre "Venus de Urbino")
		(numero_elementos 2)
		(relevancia 4)
		(tiene
			[museo_Class60025]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class4]))

	([museo_Class60027] of  Obra

		(dimensiones MEDIANO)
		(fecha 1523)
		(nombre "La bacanal de los andrios")
		(numero_elementos 9)
		(relevancia 3)
		(tiene
			[museo_Class60025]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class30000]))

	([museo_Class60028] of  Obra

		(dimensiones GRANDE)
		(fecha 1548)
		(nombre "Carlos V en la Batalla de Mühlberg")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class30008]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class4]))

	([museo_Class60030] of  Obra

		(dimensiones MEDIANO)
		(fecha 1533)
		(nombre "El emperador Carlos V con un perro")
		(numero_elementos 1)
		(relevancia 2)
		(tiene
			[museo_Class60025]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class4]))

	([museo_Class60031] of  Obra

		(dimensiones MEDIANO)
		(fecha 1560)
		(nombre "Dánae recibiendo la lluvia de oro")
		(numero_elementos 2)
		(relevancia 3)
		(tiene
			[museo_Class60025]
			[museo_Class2]
			[museo_Class60015]
			[museo_Class30000]))

	([museo_Class60032] of  Autor

		(nombre_caracteristica "Hans Baldung")
		(pertenece_a [museo_Class50003])
		(vivio_durante [museo_Class2]))

	([museo_Class60033] of  Obra

		(dimensiones MEDIANO)
		(fecha 1541)
		(nombre "Las Edades y la Muerte")
		(numero_elementos 3)
		(relevancia 4)
		(tiene
			[museo_Class60032]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))

	([museo_Class60034] of  Obra

		(dimensiones MEDIANO)
		(fecha 1541)
		(nombre "La Armonía (Las tres Gracias?)")
		(numero_elementos 3)
		(relevancia 3)
		(tiene
			[museo_Class60032]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]
			[museo_Class30000]))

	([museo_Class60035] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1520)
		(nombre "La natividad")
		(numero_elementos 6)
		(relevancia 1)
		(tiene
			[museo_Class60032]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))

	([museo_Class60036] of  Autor

		(nombre_caracteristica "Miguel Angel")
		(pertenece_a [museo_Class50003])
		(vivio_durante [museo_Class2]))

	([museo_Class60037] of  Obra

		(dimensiones ENORME)
		(fecha 1508)
		(nombre "Boveda de la Capilla Sixtina")
		(numero_elementos 10)
		(relevancia 4)
		(tiene
			[museo_Class60036]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))

	([museo_Class60038] of  Obra

		(dimensiones MEDIANO)
		(fecha 1501)
		(nombre "Santo Entierro")
		(numero_elementos 6)
		(relevancia 1)
		(tiene
			[museo_Class60036]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))

	([museo_Class60039] of  Obra

		(dimensiones ENORME)
		(fecha 1564)
		(nombre "El Juicio Final")
		(numero_elementos 10)
		(relevancia 4)
		(tiene
			[museo_Class60036]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))

	([museo_Class60040] of  Obra

		(dimensiones PEQUENYO)
		(fecha 1540)
		(nombre "Crucifixión")
		(numero_elementos 6)
		(relevancia 2)
		(tiene
			[museo_Class60036]
			[museo_Class2]
			[museo_Class50003]
			[museo_Class20017]))




)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 MAIN					 		---------- 								MAIN
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se comprobara l existencia del estudiante
;; en el conjunto de instancias del sistema

(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion-usuario
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Modulo de recopilacion de las preferencias del usuario
(defmodule recopilacion-prefs
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Modulo de recopilacion del conocimiento del usuario
(defmodule recopilacion-conocimiento
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule inferir-datos
	(import MAIN ?ALL)
	(import recopilacion-usuario ?ALL)
	(import recopilacion-prefs ?ALL)
	(import recopilacion-conocimiento ?ALL)
	(export ?ALL)
)


;;; Modulo de de filtrado de cuadros en base al concimiento del usuario
(defmodule filtrar
	(import MAIN ?ALL)
	(import recopilacion-usuario ?ALL)
	(import recopilacion-prefs ?ALL)
	(import recopilacion-conocimiento ?ALL)
	(import inferir-datos ?ALL)
	(export ?ALL)
)

(defrule MAIN::initialRule "regla inicial"
	(declare (salience 10))
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------------ Sistema de Recomendacion de Visitas -------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(focus recopilacion-usuario)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					TEMPLATES					 		---------- 								TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; en caso de que haya ninos tengo -1 si no
;;; Template para los datos de las preguntas de grupo al usuario
(deftemplate MAIN::pregunta-grupo
	(slot nino (type SYMBOL) (default NONE))
	(slot tamano (type INTEGER))
	(slot dia (type INTEGER)  (default -1))
	(slot horasDia (type INTEGER)  (default -1))
)

;;; Template para las preferencias del usuario
(deftemplate MAIN::preferencias
	(multislot epocas (type INSTANCE))
	(multislot temas (type INSTANCE))
	(multislot autores (type INSTANCE))
	(multislot estilos (type INSTANCE))
)

;;; Template para las preguntas de conocimiento
(deftemplate MAIN::pregunta-conocimiento
  (slot pregunta (type STRING))
  (multislot respuestas (type STRING)  (cardinality 4 4))
  (slot respuesta_correcta (type INTEGER) (range 1 4))
  (slot acierto (type SYMBOL) (allowed-values FALSE TRUE Indef)
  (default Indef))
)

;;; Template para la nota de las preguntas de conocimiento
(deftemplate MAIN::nota-conocimiento
  (slot nota (type INTEGER)))

;;; Template para una lista de recomendaciones sin orden
(deftemplate MAIN::lista-cuadros
	(slot nombre (type STRING))
	(multislot recomendaciones (type INSTANCE))
)

;;;;;============================ RESTRICCIONES ============================

;;;;;============================ PREFERENCIAS ============================

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MENSAJES					 		---------- 								MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases




;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES					 		---------- 								EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta de tipo si/no
(deffunction MAIN::pregunta-si-no (?question)
	(format t "%s [Y/N] " ?question)
	(bind ?response (read))
	(while (not(or(eq ?response Y)(eq ?response N))) do
		(printout t ?question)
		(bind ?response (read))
	)
	(if (eq ?response Y)
		then TRUE
		else FALSE)
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?response (read))
	(while (not(and(>= ?response ?rangini)(<= ?response ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?response (read))
	)
	?response
)

(deffunction MAIN::pregunta-test (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica el número de tu respuesta: ")
    (bind ?resp (read))
    ?resp
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

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					REGLAS - 4 MODULOS					 		---------- 								REGLAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PREGUNTAS				 		---------- 							MODULO DE PREGUNTAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;; En este se le haran las preguntas al usuario
;; para obtener la informacion de sus restricciones y/o preferencias

;;; Modulo recopilacion


(defrule recopilacion-usuario::establecer-personas "¿Cuantas personas vienen con usted?"
	(not (pregunta-grupo))
	=>
	(bind ?tamano (pregunta-numerica "Cuantas personas son en total? " 1 20 ))
	(assert (pregunta-grupo (tamano ?tamano)))
)

(defrule recopilacion-usuario::establecer-ninos "Establece si se va a ver el contenido en familia"
	?u <- (pregunta-grupo (tamano ?tamano) (nino ?n))
	(test (> ?tamano 1))
	(test (eq ?n NONE))
	=>
	(bind ?e (pregunta-si-no "Le acompanan menores de 12? "))
	(modify ?u (nino ?e))
)

(defrule recopilacion-usuario::establecer-dias "¿Cuantos dias durara la visita?"
	?u <- (pregunta-grupo (dia ?dia))
	(test (< ?dia 0))
	=>
	(bind ?dia (pregunta-numerica "Cuantos dias durara la visita? " 1 5 ))
	(modify ?u (dia ?dia))
)

(defrule recopilacion-usuario::establecer-horas-dias "¿Cuantas horas durara la visita cada dia?"
	?u <- (pregunta-grupo (horasDia ?horasdia))
	(test (< ?horasdia 0))
	=>
	(bind ?horasdia (pregunta-numerica "Cuantas horas durara la visita cada dia? " 1 8 ))
	(modify ?u (horasDia ?horasdia))
  (focus recopilacion-prefs)
)

;;; Modulo recopilacion PREFERENCIAS

(deffacts recopilacion-prefs::hechos-iniciales "Establece hechos para poder recopilar informacion"
	(autores ask)
	(epocas ask)
	(estilos ask)
	(temas ask)
	(preferencias)
)

(defrule recopilacion-prefs::establecer-epoca "Establece si tiene preferencias sobre algunas epocas"
	?pref <- (preferencias)
	?hecho <- (epocas ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en alguna(s) epoca(s) en concreto?"))
	(if (eq ?e TRUE)
		then
		(bind $?obj-epocas (find-all-instances ((?inst Epoca)) TRUE))
		(bind $?nom-epocas (create$ ))
		(loop-for-count (?i 1 (length$ $?obj-epocas)) do
			(bind ?curr-obj (nth$ ?i ?obj-epocas))
			(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
			(bind $?nom-epocas(insert$ $?nom-epocas (+ (length$ $?nom-epocas) 1) ?curr-nom))
		)
		; (printout t "?curr-nom" crlf)
		(bind ?escogido (pregunta-multi "Escoja las epocas en las que esta interesado: " $?nom-epocas))

		(bind $?respuesta (create$ ))
		(loop-for-count (?i 1 (length$ ?escogido)) do
			(bind ?curr-index (nth$ ?i ?escogido))
			(bind ?curr-epc (nth$ ?curr-index ?obj-epocas))
			(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-epc))
		)
		(modify ?pref (epocas $?respuesta))
	)
	(retract ?hecho)
)

(defrule recopilacion-prefs::establecer-autor "Establece si tiene preferencias sobre algunos autores"
	?pref <- (preferencias)
	?hecho <- (autores ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) autor(es) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-autores (find-all-instances ((?inst Autor)) TRUE))
	(bind $?nom-autores (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-autores)) do
		(bind ?curr-obj (nth$ ?i ?obj-autores))
		(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
		(bind $?nom-autores(insert$ $?nom-autores (+ (length$ $?nom-autores) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los autores en los que esta interesado: " $?nom-autores))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (autores $?respuesta))
	)
	(retract ?hecho)
)

(defrule recopilacion-prefs::establecer-tema "Establece si tiene preferencias sobre algunos temas"
	?pref <- (preferencias)
	?hecho <- (temas ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) tema(s) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-temas (find-all-instances ((?inst Tema)) TRUE))
	(bind $?nom-temas (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-temas)) do
		(bind ?curr-obj (nth$ ?i ?obj-temas))
		(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
		(bind $?nom-temas(insert$ $?nom-temas (+ (length$ $?nom-temas) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los temas en los que esta interesado: " $?nom-temas))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-temas))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (temas $?respuesta))
	)
	(retract ?hecho)
)

(defrule recopilacion-prefs::establecer-estilo "Establece si tiene preferencias sobre algunos estilos"
	?pref <- (preferencias)
	?hecho <- (estilos ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) estilo(s) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-estilos (find-all-instances ((?inst Estilo)) TRUE))
	(bind $?nom-estilos (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-estilos)) do
		(bind ?curr-obj (nth$ ?i ?obj-estilos))
		(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
		(bind $?nom-estilos(insert$ $?nom-estilos (+ (length$ $?nom-estilos) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los estilos en los que esta interesado: " $?nom-estilos))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-estilos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (estilos $?respuesta))
	)
	(retract ?hecho)
	(focus recopilacion-conocimiento)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE PREGUNTAS DE CONOCIMIENTO				----------
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(deffacts recopilacion-conocimiento::hechos-iniciales "Establece hechos para poder recopilar informacion"
  (pregunta-conocimiento (pregunta "Quien pinto Las Meninas?") (respuestas "Pablo Picasso" "Diego Velazquez" "Francisco de Goya" "Leonardo Da Vinci") (respuesta_correcta 2))
	(pregunta-conocimiento (pregunta "A que movimiento pertenecio el pintor Joaquin Sorolla?") (respuestas "Luminismo" "Barroco" "Romanticismo" "Impresionismo") (respuesta_correcta 1))
	(pregunta-conocimiento (pregunta "Cual de estos pintores NO pertenecio al movimiento barroco?") (respuestas "Diego Velazquez" "Luca Giordano" "Sebastiano Conca" "El Bosco") (respuesta_correcta 4))
	(pregunta-conocimiento (pregunta "En que siglo pinto principalmente El Bosco?") (respuestas "XVI" "XIX" "XV" "XVIII") (respuesta_correcta 3))
	(pregunta-conocimiento (pregunta "Que tema predomina en las pinturas de Fra Angelico?") (respuestas "Mitologia" "Religion" "Critica Social" "Paisajismo") (respuesta_correcta 2))
	(pregunta-conocimiento (pregunta "De quien hizo un retrato el pintor Vicente Lopez Portana?") (respuestas "Carlos III" "Luis I" "Francisco de Goya" "Montserrat Guell") (respuesta_correcta 3))
	(pregunta-conocimiento (pregunta "Cual de los siguientes cuadros fue pintado por Francisco de Goya?") (respuestas "El 3 de mayo en Madrid" "El Jardin de las delicias" "La creacion" "Chicos en el agua") (respuesta_correcta 1))
	(pregunta-conocimiento (pregunta "A que movimiento pertenece la pintura El juicio de Paris?") (respuestas "Prerromanticismo" "Barroco" "Impresionismo" "Paisajismo britanico") (respuesta_correcta 2))
	(pregunta-conocimiento (pregunta "Durante que siglo tuvo lugar mayormente el movimiento conocido como Pintura Flamenca?") (respuestas "XV" "XVII" "XIX" "XX") (respuesta_correcta 1))
	(pregunta-conocimiento (pregunta "Quien pinto La rendicion de Breda?") (respuestas "El Bosco" "Fra Angelico" "Diego Velazquez" "Francisco de Goya") (respuesta_correcta 3))
)

(defrule recopilacion-conocimiento::hacer-pregunta "Pregunta tipo test"
	?p <- (pregunta-conocimiento (pregunta ?pregunta) (respuestas $?respuestas) (acierto Indef) (respuesta_correcta ?respuesta_correcta))
	=>
	(bind ?r (pregunta-test ?pregunta $?respuestas))
  (if(eq ?r ?respuesta_correcta)
  then (bind ?acierto TRUE)
  else (bind ?acierto FALSE))
	(modify ?p (acierto ?acierto))
)

(defrule recopilacion-conocimiento::poner-nota "Pone la nota de conocimiento segun el numero de aciertos"
  (not (pregunta-conocimiento (acierto Indef)))
  (not (nota-conocimiento))
  =>
  (bind ?nota (length$ (find-all-facts ((?p pregunta-conocimiento)) (eq ?p:acierto TRUE))))
  (assert (nota-conocimiento (nota ?nota)))
  (do-for-all-facts ((?p pregunta-conocimiento)) (retract ?p))
    (focus rel-circulares)
)

;;;----------------------------------------------------------------------------------------------------
;;;----------------- MODULO DE UNAS COSAS --------------
;;;---------------------------------------------------------------
(defmodule rel-circulares
	(import MAIN ?ALL)
	(export ?ALL)
	)

	(deffacts rel-circulares::hechos-iniciales
		(evalua-obras)
	)

	;(deftemplate inferir-datos::evaluar
	;	(slot obra (type INSTANCE)))

	(deftemplate rel-circulares::evaluar
		(slot obra (type INSTANCE)))

	(defrule rel-circulares::evaluar-obras
		?f <- (evalua-obras)
		=>
		(do-for-all-instances ((?inst Obra)) TRUE (assert (evaluar (obra ?inst))))
		(retract ?f)
	)

	(defrule rel-circulares::caracteristica-tiene-obra-circular
		?fact <- (evaluar (obra ?o))
		=>
		(bind ?c (send ?o get-tiene))
		(loop-for-count (?i 1 (length$ ?c)) do
				(bind ?curr-carac (nth$ ?i ?c))
				(bind ?obras-carac (send ?curr-carac get-tiene_obra))
				(if (not (member$ ?o ?obras-carac)) then
				(slot-insert$ ?curr-carac tiene_obra 1 ?o))
		)
		(retract ?fact)
	)

	(defrule rel-circulares::siguiente-modulo
		(not (evaluar))
		(not (evalua-obras))
		=>
		(focus inferir-datos)
	)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas

(defrule inferir-datos::tipo-grupo
	?u <- (pregunta-grupo (tamano ?tamano) (nino ?n) (dia ?dia) (horasDia ?horasDia))
	(not (tipo-grupo-definido))
	=>
	(if (eq ?n TRUE)
		then (bind ?tipoGrupo FAMILIA)
		else
			(if (> ?tamano 10)
				then (bind ?tipoGrupo GRUPO_G)
				else
					(if (> ?tamano 1) then (bind ?tipoGrupo GRUPO_P)
						else (bind ?tipoGrupo SOLO)
					)
			)
	)
	(bind ?visitaNueva (make-instance visita-museo of Visita))
	(send ?visitaNueva put-tipo_visita ?tipoGrupo)
	(send ?visitaNueva put-dias ?dia)
	(send ?visitaNueva put-horas_diarias ?horasDia)
	(assert (tipo-grupo-definido))
)

(defrule inferir-datos::tipo-conocimiento-grupo
	?u <- (nota-conocimiento (nota ?nota))
	?visita <- (object (is-a Visita))
	(not (tipo-conocimiento-grupo))
	=>
	(if (< ?nota 2) then (bind ?tipoCon BAJO)
		else (if (< ?nota 5) then (bind ?tipoCon MEDIO_BAJO)
			else (if (< ?nota 8) then (bind ?tipoCon MEDIO_ALTO)
				else (bind ?tipoCon ALTO)
			)
		)
	)
	(send ?visita put-conocimiento ?tipoCon)
	(assert (tipo-conocimiento-grupo))
)

(defrule inferir-datos::visita-preferencias
	?u <- (preferencias (epocas $?epocas)(autores $?autores)(temas $?temas)(estilos $?estilos))
	?visita <- (object (is-a Visita))
	=>
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ $?epocas)) do
		(bind ?curr-atr (nth$ ?i $?epocas))
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
	(loop-for-count (?i 1 (length$ $?estilos)) do
		(bind ?curr-atr (nth$ ?i $?estilos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(send ?visita put-prefiere $?respuesta)
)

(defrule inferir-datos::anadir-obra "si cumple alguna de las preferencias se anade"
	?visita <- (object (is-a Visita))
	(not (lista-cuadros))
	=>
	(bind $?visita-pref (send ?visita get-prefiere))
	(bind $?cuadros (create$ ))
	(loop-for-count (?i 1 (length$ $?visita-pref)) do
		(bind ?curr-pref (nth$ ?i $?visita-pref))
		(bind $?curr-pref-cuadros (send ?curr-pref get-tiene_obra))
		(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
			(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
			(if (not (member$ ?curr-pref-cuadros-cuadro $?cuadros))
				then (bind $?cuadros(insert$ $?cuadros (+ (length$ $?cuadros) 1) ?curr-pref-cuadros-cuadro))
			)
		)
	)
	(assert (lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros)))
)

(defrule inferir-datos::anadir-obra-secundaria "si cumple alguna de las preferencias secundarias se anade"
	?visita <- (object (is-a Visita))
	(lista-cuadros (nombre "recomendadas")(recomendaciones $?cuadros))
	=>
	(bind $?visita-pref (send ?visita get-prefiere))
	(bind $?cuadrosAnadir (create$ ))
	(loop-for-count (?i 1 (length$ $?visita-pref)) do
		(bind ?curr-pref (nth$ ?i $?visita-pref))
		(switch (class ?curr-pref)
				(case Autor then
					(bind ?estilo-autor (send ?curr-pref get-pertenece_a))
					(bind $?curr-pref-cuadros (send ?estilo-autor get-tiene_obra))
					(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
						(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
						(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
							then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
						)
					)
					(bind ?epoca-autor (send ?curr-pref get-vivio_durante))
					(bind $?curr-pref-cuadros (send ?epoca-autor get-tiene_obra))
					(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
						(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
						(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
							then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
						)
					)
					)
				(case Tema then
					(bind $?estilo-tema (send ?curr-pref get-tiene_estilo))
					(loop-for-count (?i 1 (length$ $?estilo-tema)) do
						(bind ?curr-estilo (nth$ ?i ?estilo-tema))
						(bind $?curr-pref-cuadros (send ?curr-estilo get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					)
				(case Estilo then
					(bind $?temas-estilo (send ?curr-pref get-tiene_tema))
					(loop-for-count (?i 1 (length$ $?temas-estilo)) do
						(bind ?curr-tema (nth$ ?i ?temas-estilo))
						(bind $?curr-pref-cuadros (send ?curr-tema get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					(bind ?autores-estilo (send ?curr-pref get-tiene_autor))
					(loop-for-count (?i 1 (length$ $?autores-estilo)) do
						(bind ?curr-autor (nth$ ?i ?autores-estilo))
						(bind $?curr-pref-cuadros (send ?curr-autor get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					)
				(case Epoca then
					(bind $?estilos-epoca (send ?curr-pref get-tiene_estilo))
					(loop-for-count (?i 1 (length$ $?estilos-epoca)) do
						(bind ?curr-estilo (nth$ ?i ?estilos-epoca))
						(bind $?curr-pref-cuadros (send ?curr-estilo get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					(bind $?autores-epoca (send ?curr-pref get-tiene_autor))
					(loop-for-count (?i 1 (length$ $?autores-epoca)) do
						(bind ?curr-autor (nth$ ?i ?autores-epoca))
						(bind $?curr-pref-cuadros (send ?curr-autor get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					)
		)
	)
	(assert (lista-cuadros (nombre "recomendadasIndirect") (recomendaciones $?cuadrosAnadir)))
)

(defrule inferir-datos::no-recomendadas
	(lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros))
	(lista-cuadros (nombre "recomendadasIndirect") (recomendaciones $?cuadrosSecundarios))
	=>
	(bind $?cuadros-no-rec (find-all-instances ((?inst Obra)) (and (not (member ?inst $?cuadros)) (not (member ?inst $?cuadrosSecundarios)))))
	(assert (lista-cuadros (nombre "no recomendadas") (recomendaciones $?cuadros-no-rec)))
)


(defrule inferir-datos::complejidad "regla para calcular la complejidad de todos los cuadros"
  (not (complejidad-cuadro))
  =>
  (bind $?obras (find-all-instances ((?inst Obra)) TRUE))
	(loop-for-count (?i 1 (length$ $?obras)) do
		(bind ?curr-obra (nth$ ?i $?obras))
		;(bind ?curr-obra-dim (send ?curr-obra get-dimensiones))
		(bind ?curr-obra-dim 1)
		(bind ?curr-obra-elem (send ?curr-obra get-numero_elementos))
    (bind ?compl (+ (* ?curr-obra-dim 0.35) (* ?curr-obra-elem 0.65)))
    (send ?curr-obra put-complejidad ?compl)
	)
  (assert (complejidad-cuadro))
)

	(defrule inferir-datos::siguiente-modulo "Pasamos al siguiente modulo"
		(complejidad-cuadro)
		(lista-cuadros (nombre "recomendadas"))
		(lista-cuadros (nombre "no recomendadas"))
		=>
		(focus sintesis)
	)

;(defrule inferir-datos::check-listas-2
	;(declare (salience 1))
	;(lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros-rec))
	;(lista-cuadros (nombre "no recomendadas") (recomendaciones $?cuadros-no-rec))
	;?o <- (object (is-a Obra))
	;=>
	;(printout t (send ?o get-nombre) crlf)
;)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE FILTRADO			 		---------- 							MODULO DE FILTRADO
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;(defrule filtrar::descartar-nivel-conocimiento
;;;  (tipo-conocimiento-grupo)
;  ?lista <- (lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros))
;	?visita <- (object (is-a Visita))
;  (not (filtrado-conocimiento))
;  =>
;	(printout t "FILTRADO" crlf)
;  (bind ?con (send ?visita get-conocimiento))
;	(bind $?cuadros-finales (create$ ))
;	(loop-for-count (?i 1 (length$ $?cuadros)) do
;			(bind ?curr-cuadro (nth$ ?i ?curr-cuadros))
;      (bind ?curr-cuadro-relevancia (send ?curr-cuadro get-relevancia))
;			(if (and (eq ?con BAJO) (< ?curr-cuadro-relevancia 3))
;				then (bind $?cuadros-finales (delete-member$ $?cuadros ?curr-cuadro))
;			)
;			(if (and (eq ?con MEDIO-BAJO) (< ?curr-cuadro-relevancia 2))
;				then (bind $?cuadros-finales (delete-member$ $?cuadros ?curr-cuadro))
;			)
;			(if (and (eq ?con MEDIO-ALTO) (< ?curr-cuadro-relevancia 1))
;				then (bind $?cuadros-finales (delete-member$ $?cuadros ?curr-cuadro))
;			)
;	)
;  (modify ?lista (nombre "recomendadas") (recomendaciones $?cuadros-finales))
;  (assert (filtrado-conocimiento))
;)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE SINTESIS			 		---------- 							MODULO DE SINTESIS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(defmodule sintesis
	(import MAIN ?ALL)
	(export ?ALL)
)

(defglobal ?*num-dias* = 0)

(deffunction sintesis::get-tiempo-obra (?obra ?vis)
	(bind ?complejidad (send ?obra get-complejidad))
	(bind ?tipus (send ?vis get-tipo_visita))
	(bind ?conocimiento (send ?vis get-conocimiento))
	(bind ?constGrupo 1.0)
	(bind ?constCono 1.0)
	(switch ?tipus
			(case SOLO then (bind ?constGrupo 1.0))
			(case FAMILIA then (bind ?constGrupo 1.2))
			(case GRUPO_P then (bind ?constGrupo 1.35))
			(case GRUPO_G then (bind ?constGrupo 1.5))
	)
	(switch ?conocimiento
			(case BAJO then (bind ?constCono 1.0))
			(case MEDIO_BAJO then (bind ?constCono 1.2))
			(case MEDIO_ALTO then (bind ?constCono 1.35))
			(case ALTO then (bind ?constCono 1.5))
	)
	(bind ?tiempo (* 5 (* ?constGrupo (* ?constCono ?complejidad))))
	?tiempo
)

(deffunction sintesis::obra-cap-al-dia (?obra ?dia ?vis)
	;CALCULAMOS LOS MEMES DE TIEMPO
	(bind ?tiempo_restante (- (get-tiempo-obra ?obra ?vis) (send ?dia get-tiempo_restante)))
	(bind ?cabe (< ?tiempo_restante -1))
	?cabe
)

(deftemplate sintesis::obras-a-meter
	(multislot obras (type INSTANCE))
)

(deftemplate sintesis::meter-dia
	(slot dia (type INSTANCE))
)

(defrule sintesis::make-dia
	(not (meter-dia))
	?v <- (object (is-a Visita) (dias ?dias))
	(test (> ?dias 0))
	=>
	(bind ?diaNuevo (make-instance (sym-cat dia- (gensym)) of Dia_En_El_Museo))
	(bind ?dias-restantes (send ?v get-dias))
	(bind ?horas-diarias (send ?v get-horas_diarias))
	(send ?v put-dias (- ?dias-restantes 1))
	(send ?diaNuevo put-tiempo_restante (* 60 ?horas-diarias))
	(bind ?*num-dias* (+ 1 ?*num-dias*))
	(send ?diaNuevo put-Dia ?*num-dias*)
;;;	(printout t "Dia" crlf)
	(assert (meter-dia (dia ?diaNuevo)))
)

(defrule sintesis::descartar-dia
	?f <- (meter-dia (dia ?dia))
	(meter-dia)
	?o <- (obras-a-meter (obras $?obras))
	?vis <- (object (is-a Visita))
	(test (not (any-instancep ((?inst Obra)) (and (obra-cap-al-dia ?inst ?dia ?vis) (member ?inst ?obras)))))
	=>
;;;	(printout t crlf)
	(retract ?f)
)

(defrule sintesis::insertar-epoca
	(declare (salience 5))
	(not (obras-a-meter))
	?e <- (object (is-a Epoca))
	(not (epoca-insertada ?e))
	(lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros))
	=>
	(bind $?obras (find-all-instances ((?inst Obra)) (and (member ?inst ?cuadros) (member ?inst (send ?e get-tiene_obra)))))
	(assert (obras-a-meter (obras $?obras)))
	(assert (epoca-insertada ?e))
)

(defrule sintesis::insertar-epoca-secundaria
	(declare (salience 3))
	(not (obras-a-meter))
	?e <- (object (is-a Epoca))
	(not (epoca-insertada-secundario ?e))
	(lista-cuadros (nombre "recomendadasIndirect") (recomendaciones $?cuadros))
	=>
	(bind $?obras (find-all-instances ((?inst Obra)) (and (member ?inst ?cuadros) (member ?inst (send ?e get-tiene_obra)))))
	(assert (obras-a-meter (obras $?obras)))
	(assert (epoca-insertada-secundario ?e))
)

(defrule sintesis::insertar-epoca-terciario
	(not (obras-a-meter))
	?e <- (object (is-a Epoca))
	(not (epoca-insertada-terciario ?e))
	(lista-cuadros (nombre "no recomendadas") (recomendaciones $?cuadros))
	=>
	(bind $?obras (find-all-instances ((?inst Obra)) (and (member ?inst ?cuadros) (member ?inst (send ?e get-tiene_obra)))))
	(assert (obras-a-meter (obras $?obras)))
	(assert (epoca-insertada-terciario ?e))
)

(defrule sintesis::descartar-epoca
	(declare (salience 5))
	?f <- (obras-a-meter (obras $?o))
	(test (= 0 (length$ ?o)))
	=>
	(retract ?f)
)

(defrule sintesis::insertar-obras
	?f <- (obras-a-meter (obras $?o))
	(meter-dia (dia ?dia))
	?vis <- (object (is-a Visita))
	=>
	(bind ?new_obras (create$))
	(loop-for-count (?i 1 (length$ $?o)) do
		(bind ?curr-obra (nth$ ?i $?o))
		(if (obra-cap-al-dia ?curr-obra ?dia ?vis) then
;;;			(printout t (send ?curr-obra get-nombre) crlf)
			(bind ?horas-dia (send ?dia get-tiempo_restante))
			(send ?dia put-tiempo_restante (- ?horas-dia (get-tiempo-obra ?curr-obra ?vis)))
			(slot-insert$ ?dia visitamos (+ (length$ (send ?dia get-visitamos)) 1) ?curr-obra)
		else (bind ?new_obras (insert$ ?new_obras (+ (length$ ?new_obras) 1) ?curr-obra)))
	)
	(modify ?f (obras $?new_obras))
)

(defrule sintesis::ir-a-visita
	?v <- (object (is-a Visita) (dias ?dias))
	(test (eq ?dias 0))
	=>
	(focus imprimir-visita)
)

;;;----------------------------------------------------------------------------------------------------
;;;----------------- MODULO DE IMPRESION DE RESULTADO --------------
;;;---------------------------------------------------------------

	;;; Modulo de de impresion del resultado por pantalla
	(defmodule imprimir-visita
		(import MAIN ?ALL)
		(import recopilacion-usuario ?ALL)
		(import recopilacion-prefs ?ALL)
		(import recopilacion-conocimiento ?ALL)
		(import inferir-datos ?ALL)
		(import sintesis ?ALL)
		(import filtrar ?ALL)
		(export ?ALL)
	)

	(deftemplate imprimir-visita::min
		(slot count (type INTEGER))
		)

	(deffacts imprimir-visita::hechos-iniciales
		(min (count 1))
	)

	(defrule imprimir-visita::imprime-formato "regla inicial"
		(declare (salience 10))
		=>
		(printout t crlf)
		(printout t "-------------------------------------------------------------" crlf)
		(printout t "-------------------- Visita Personalizada -------------------" crlf)
		(printout t "-------------------------------------------------------------" crlf)
		(printout t "--------------- Epoca - Obra - Autor - Tiempo ---------------" crlf)
		(printout t crlf)
	)


	(defrule imprimir-visita::imprimir-dia
		?min <- (min (count ?n))
		?Dia <- (object (is-a Dia_En_El_Museo) (Dia ?numDia))
		?vis <- (object (is-a Visita))
		(test (eq ?n ?numDia))
		=>
		(format t "Los cuadros a visitar durante el dia %d son:" ?n)
		(printout t crlf)
		(printout t "-------------------------------------------------------------" crlf)
		(printout t crlf)
		(bind $?obras(send ?Dia get-visitamos))
		(loop-for-count (?i 1 (length$ $?obras)) do
				(bind ?curr-obra (nth$ ?i $?obras))
				(bind ?nom-obra (send ?curr-obra get-nombre))
				(bind $?caracteristicas (send ?curr-obra get-tiene))
				(loop-for-count (?i 1 (length$ $?caracteristicas)) do
						(bind ?curr-caract (nth$ ?i $?caracteristicas))
						(if (eq (class ?curr-caract) Autor) then
							(bind ?nom-autor(send ?curr-caract get-nombre_caracteristica))
						)
						(if (eq (class ?curr-caract) Epoca) then
							(bind ?nom-epoca(send ?curr-caract get-nombre_caracteristica))
						)
				)
				(bind ?tiempo-obra(get-tiempo-obra ?curr-obra ?vis))
;;;				(printout t crlf)
				(format t "%s - %s - %s - %d min" ?nom-epoca ?nom-obra ?nom-autor ?tiempo-obra)
				(printout t crlf)
		)
		(printout t crlf)
		(assert (min (count (+ ?n 1))))
		(retract ?min)
	)
