
; Define the User Profile Template
(deftemplate user-profile
   (slot name)
   (slot age)
   (slot reading-time)
   (slot reading-frequency)
   (slot reading-location)
   (slot likes-bestsellers (type SYMBOL) (allowed-values yes no))
   (slot follows-critiques (type SYMBOL) (allowed-values yes no))
   (slot influenced-by-trends (type SYMBOL) (allowed-values yes no))
   (slot prefers-foreign-authors (type SYMBOL) (allowed-values yes no)))

; Define the Book Template
(deftemplate book
   (slot title)
   (slot genre)
   (slot sub-genre)
   (slot author)
   (slot length (type INTEGER))
   (slot complexity (type SYMBOL) (allowed-values easy medium hard))
   (slot popularity (type SYMBOL) (allowed-values low medium high))
   (slot readability (type SYMBOL) (allowed-values easy medium hard)))

; Define the Genre Preference Template
(deftemplate genre-preference
   (slot user)
   (multislot genres))

; Define the Author Preference Template
(deftemplate author-preference
   (slot user)
   (multislot authors))

; Define the Previous Reads Template
(deftemplate previous-reads
   (slot user)
   (multislot books))

; Recommendation Rules
; Rule for recommending a book based on genre preference
(defrule recommend-book-based-on-genre
   (user-profile (name ?user))
   (genre-preference (user ?user) (genres $?genres))
   ?b <- (book (genre ?genre&:(member$ ?genre ?genres))
               (readability ?readability&:(or (eq ?readability easy) (eq ?readability medium))))
   =>
   (printout t "Recommended based on genre preference: " (str-cat (fact-slot ?b title)) crlf))

; Rule for recommending a book based on author preference
(defrule recommend-book-based-on-author
   (user-profile (name ?user))
   (author-preference (user ?user) (authors $?authors))
   ?b <- (book (author ?author&:(member$ ?author $?authors)))
   =>
   (printout t "Recommended based on author preference: " (str-cat (fact-slot ?b title)) crlf))

; Rule for recommending a book based on previous reads
(defrule recommend-book-based-on-previous-reads
   (user-profile (name ?user))
   (previous-reads (user ?user) (books $?books))
   ?b <- (book (title ?title&:(member$ ?title $?books)))
   =>
   (printout t "Recommended based on previous reads: " (str-cat (fact-slot ?b title)) crlf))

; Rule for recommending a bestseller if no other recommendation is possible
(defrule recommend-bestseller-if-no-other-match
   (declare (salience -10)) ; Lower priority rule
   (not (recommendation))
   ?b <- (book (popularity high))
   =>
   (printout t "Recommended bestseller: " (str-cat (fact-slot ?b title)) crlf))

; Facts Initialization (for demonstration purposes)
(deffacts initial-data
   (user-profile (name "John Doe") (age 30) (reading-time medium) (reading-frequency daily) (reading-location home) (likes-bestsellers yes) (follows-critiques no) (influenced-by-trends yes) (prefers-foreign-authors no))
   (book (title "Mystery of the Ancient Pyramid") (genre "mystery") (sub-genre "historical") (author "Jane Smith") (length 300) (complexity medium) (popularity high) (readability easy))
   (genre-preference (user "John Doe") (genres "mystery" "sci-fi"))
   (author-preference (user "John Doe") (authors "Jane Smith" "John Parker"))
   (previous-reads (user "John Doe") (books "The Lost Island" "Journey to the Unknown")))
