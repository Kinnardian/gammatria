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
		"avgad" (avgad (bitoy 1) (bitoy 2))
		;"atbach"
		;"aikbcr"
		;"albam" (albam chut)
		;"atbash" (atbash chut)
		;"אתבש"
		(prn "pekudah not found") (peh))
	(peh))

(def pekudahOsicha (arg)
	(in arg '("avgad" "atbach" "aikbcr" "albam" "atbash" "אתבש")))

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


;def atbash ()()
;def albam ()()
;def albam ()()
;def atbach ()()
;def aikbcr ()()

(hatzdaa argv)

;ניסוי