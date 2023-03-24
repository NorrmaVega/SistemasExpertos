(defrule Estado-Inicial
  =>
  (printout t "Mono frente a puerta" crlf)
  (assert (mono piso) (caja cerca-ventana) (banana colgando))
)

(defrule mover-caja
  (mono piso) (caja cerca-ventana)
  =>
  (assert (caja en-posicion))
  (printout t "Mono empuja la caja cerca bananas." crlf)
)


(defrule brinca-caja
  (mono piso) (caja en-posicion)
  =>
  	(assert (mono en-caja))
   
  (printout t "El mono brinca a la caja." crlf)
)


(defrule toma-banana
  (mono en-caja) (banana colgando)
  =>
  	(assert (mono toma-banana))
   
  (printout t "El mono toma la banana." crlf)
)


(defrule come-banana
  (mono toma-banana) (banana colgando)
  =>
  	(assert (mono come-banana))
   
  (printout t "El mono come la banana." crlf)
)