symbol verde = 0   'Pin del LED verde
symbol amarillo = 1   'Pin del LED amarillo
symbol rojo = 2   'Pin del LED rojo
symbol pausa_corta = 500   'Pausa de medio segundo
symbol pausa_larga = 1000   'Pausa de un segundo
symbol parpadeos_verde = 2   'N?mero de veces que parpadea el LED verde
symbol parpadeos_amarillo = 3   'N?mero de veces que parpadea el LED amarillo
symbol tiempo = 3 * pausa_larga 'Pausa de tiempo para verde y rojo de encendido

main:
high verde    'Encender LED verde
pause tiempo   'Esperar 3 segundos
low verde    'Apagar LED verde

for b0 = 1 to parpadeos_verde    'Parpadear LED verde
    high verde
    pause pausa_corta
    low verde
    pause pausa_corta
next b0

for b0 = 1 to parpadeos_amarillo    'Parpadear LED amarillo
    high amarillo
    pause pausa_corta
    low amarillo
    pause pausa_corta
next b0

high rojo    'Encender LED rojo
pause tiempo   'Esperar 3 segundos
low rojo    'Apagar LED rojo

for b0 = 1 to 3    'Encender LED verde durante 3 segundos
    high verde
    pause pausa_larga
    low verde
    pause pausa_larga
next b0

goto main    'Repetir desde el paso 1