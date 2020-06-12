:-dynamic procesador/1.
:-dynamic placaMadre/1.
:-dynamic gpu/1.
:-dynamic ram/1.
:-dynamic fuentePw/1.
:-dynamic periferico/1.
:-dynamic disco/1.
:-dynamic monitor/1.
:-dynamic gabinete/1.



procesador(intel,2000).
procesador(amd,1000).

placaMadre(msi,4000).
placaMadre(asus,500).

gpu(nvidia,2000).
gpu(razen,1500).

ram(ddr_tres,100).
ram(ddr_cuatro,200).

fuentePw(cooler_Master,500).
fuentePw(corsair,480).

periferico(corsair,120).
periferico(cooler_Master,150).

disco(kingstong,500).
disco(samsumg,480).

monitor(asus,200).
monitor(hp,150).

gabinete(corsair,200).
gabinete(cooler_Master,180).

cargar(A):-exists_file(A),consult(A).

busqueda(Procesador,PlacaMadre,GPU,Ram,FuentePoder,Periferico,
        Disco,Monitor,Gabinete,Precio):-
        procesador(Procesador,X1),placaMadre(PlacaMadre,X2),
        gpu(GPU,X3),ram(Ram,X4),fuentePw(FuentePoder,X5),
        periferico(Periferico,X6),disco(Disco,X7),
        monitor(Monitor,X8),gabinete(Gabinete,X9),
        Precio is X1+X2+X3+X4+X5+X6+X7+X8+X9.

busqueda_valor(Procesador,PlacaMadre,
               GPU,Ram,FuentePoder,Periferico,
               Disco,Monitor,Gabinete,Valor,Precio):-
        procesador(Procesador,X1),placaMadre(PlacaMadre,X2),
        gpu(GPU,X3),ram(Ram,X4),fuentePw(FuentePoder,X5),
        periferico(Periferico,X6),disco(Disco,X7),
        monitor(Monitor,X8),gabinete(Gabinete,X9),
        Precio is X1+X2+X3+X4+X5+X6+X7+X8+X9,Precio<Valor.



