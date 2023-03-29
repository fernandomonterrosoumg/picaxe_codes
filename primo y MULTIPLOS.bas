symbol cont5 = w0
symbol contPrimos = w1
symbol i = w2
symbol modulo = w3
symbol moduloDeRaiz = w4
symbol raiz = w5
symbol x = w6

main:
	low C.0
	low C.1
	for i = 1 to 1000 step 1
  	call esMultiploDe5
  	
	next i
	if contPrimos = 1 then
  	high C.0
	else
  	high C.0
  	high C.1
	endif
	stop

esMultiploDe5:
  	let modulo = i % 5
  	if modulo = 0 then
    	let cont5 = cont5 + 1
	call esPrimo
  	endif
	return

esPrimo:
	if i <= 1 then
		return
	endif
  let raiz = SQR i
    	for x = 2 to raiz step 1
      	let moduloDeRaiz = i % x
      	if moduloDeRaiz = 0 then
        	return
	endif
	
    	next x
  	let contPrimos = contPrimos + 1
	return
