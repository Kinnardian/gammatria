;; gammatria.arc

(def peh ()
	(disp "\ngammatria< ")
	(= bitoy (tokens (readline)))

    (sicha bitoy))

(def hatzdaa (argv)
    (if (pekudahOsicha (argv 1))
    	(prn "hatzdaa back: '((argv 1) (argv 2)"))
        '((argv 1) (argv 2))
        	(peh))


(def sicha (bitoy)
	;usage: (tziphon chut  (o sifra))
	(prn "  running sicha")
    (prn "  kelet: " bitoy)
    (prn "  type: " (type bitoy))
	(case (bitoy 0)
		"atbash" (atbash (bitoy 1) (bitoy 2))
		"avgad" (avgad (bitoy 1) (bitoy 2))
		"albam" (albam (bitoy 1) (bitoy 2))
		;"atbach"
		;"aikbcr"
		;"בראשית"

		"שבתא" (שבתא  (bitoy 1) (bitoy 2))

		(prn "pekudah not found") (peh))
	(peh))

(def pekudahOsicha (arg)
	(in arg '("avgad" "atbach" "aikbcr" "albam" "atbash" "בראשית" "אתבש")))

(def avgad (chut (o sifra))
	(prn "  pekudah: avgad")
	(prn "  chut: " chut)
	(prn "  sifra: " sifra)

	(if sifra
		(prn (string "gammatria< " ( map1 (fn (c)
             (coerce (+ (coerce c 'int) (int sifra)) 'char))
             (coerce chut 'cons))))
		;base case
		(prn (string "gammatria< " ( map1 (fn (c)
             (coerce (+ 1 (coerce c 'int)) 'char))
             (coerce chut 'cons))))))

(def albam (chut (o sifra))
	(prn "  pekudah: albam")
	(prn "  chut: " chut)
	(prn "  sifra: " sifra)

	(if sifra
		(prn (string "gammatria< בקרוב"))

		;base case
		(prn (string "gammatria< " ( map1 (fn (c)
             (coerce (+ (mod (+ 13 (- (coerce c 'int) 96)) 26) 97) 'char))
             (coerce chut 'cons))))))
(def שבתא (chut (o sifra))
(prn "  pekudah: אתבש")
	(prn "  chut: " chut)
	(prn "  sifra: " sifra)
	;(prn "  misaper chut: " (map1 (fn (c)
             ;(coerce c 'int))
             ;(coerce chut 'cons)))
	(if sifra
		(prn (string "gammatria< בקרוב")); (map1 (fn (c)
             ;(coerce (+ 97 (coerce c 'int) (int sifra)) 'char))
             ;(coerce chut 'cons))))
		;base case
		(prn (string "gammatria< " (map1 (fn (c)
			(prn "c: " (* -1 (coerce c 'int)))
             (coerce (+ (mod (* -1 (- (coerce c 'int) 1488)) 27) 1488) 'char))
             (coerce chut 'cons))))))

(def atbash (chut (o sifra))
	(prn "  pekudah: atbash")
	(prn "  chut: " chut)
	(prn "  sifra: " sifra)
	;(prn "  misaper chut: " (map1 (fn (c)
             ;(coerce c 'int))
             ;(coerce chut 'cons)))
	(if sifra
		(prn (string "gammatria< בקרוב")); (map1 (fn (c)
             ;(coerce (+ 97 (coerce c 'int) (int sifra)) 'char))
             ;(coerce chut 'cons))))
		;base case
		(prn (string "gammatria< " (map1 (fn (c)
			(prn "c: " (* -1 (coerce c 'int)))
             (coerce (+ (mod (* -1 (- (coerce c 'int) 96)) 26) 97) 'char))
             (coerce chut 'cons))))))

;def atbach ()()
;def aikbcr ()()

(hatzdaa argv)

;ניסוי