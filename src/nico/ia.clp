(deftemplate Libro
    (slot titulo)
    (slot genero)
    (slot autor)
    (slot longitud)
)

(deftemplate Preferencia
    (slot genero)
    (slot autor)
    (slot longitud)
)

(deffacts Libros
    (Libro (titulo "El nombre del viento") (genero ficcion) (autor "Patrick Rothfuss") (longitud largo))
    (Libro (titulo "Cien años de soledad") (genero ficcion) (autor "Gabriel Garcia Marquez") (longitud largo))
    (Libro (titulo "El código Da Vinci") (genero misterio) (autor "Dan Brown") (longitud medio))
    (Libro (titulo "Sherlock Holmes") (genero misterio) (autor "Arthur Conan Doyle") (longitud corto))
    (Libro (titulo "Orgullo y prejuicio") (genero romance) (autor "Jane Austen") (longitud medio))
    (Libro (titulo "Romeo y Julieta") (genero romance) (autor "William Shakespeare") (longitud corto))
    ; Agrega más libros con sus respectivos autores y longitudes
)

(defrule PreguntarPreferencias
    =>
    (printout t "Cual es tu genero preferido? (Ficcion, Misterio, Romance, etc.): ")
    (bind ?genero (read))
    
    (printout t "Tienes algun autor favorito?: ")
    (bind ?autor (read))
    
    (printout t "Prefieres libros largos, medios o cortos?: ")
    (bind ?longitud (read))
    
    (assert (Preferencia (genero ?genero) (autor ?autor) (longitud ?longitud)))
)

(defrule RecomendarLibros
    (Preferencia (genero ?genero) (autor ?autor) (longitud ?longitud))
    (Libro (titulo ?titulo) (genero ?genero) (autor ?autor) (longitud ?longitud))
    =>
    (printout t "Te recomiendo el libro: " ?titulo crlf)
)
