:-dynamic procesador/1.
:-dynamic placaMadre/1.
:-dynamic gpu/1.
:-dynamic ram/1.
:-dynamic fuentePw/1.
:-dynamic periferico/1.
:-dynamic disco/1.
:-dynamic monitor/1.
:-dynamic gabinete/1.


procesador(intel_Core_i5_7400,810307).
procesador(intel_Core_i3_7100,668221).
procesador(intel_Core_Celeron_G3930,877171).
procesador(intel_Core_i3_7320,810307).
procesador(intel_Core_i5_6400,1027615).
procesador(intel_Core_i7_9700K,1250000).
procesador(intel_Core_i5_9400F,980000).
procesador(intel_Core_i5_9600KF,877171).
procesador(intel_Core_i9_9900K,2172660).
procesador(amd_Ryzen_5_3600,930000).
procesador(amd_Ryzen_7_3700x,1581000).
procesador(amd_Ryzen_9_3900x,2395000).
procesador(amd_Ryzen_5_3600x,1099000).
procesador(amd_Ryzen_5_2600,753000).
procesador(amd_Ryzen_7_3800x,1859000).
procesador(amd_Ryzen_9_3950x,3910000).
%%procesador(amd_Ryzen_Threadripper_3990x,19332000).
procesador(amd_Ryzen_Athlon_3000g,273000).

placaMadre(asus_H310M,264000).
placaMadre(msi_H310M,264000).
placaMadre(gigabyte_B365M,349000).
placaMadre(evga_z370,75000).
placaMadre(aorus_B450,562000).
placaMadre(msi_tomahawk,469000).
placaMadre(asus_x570,719000).

gpu(msi_gt710_2gb,217000).
gpu(gigabyte_gtx1050ti_4gb,580000).
gpu(evga_gtx1650_4gb,825000).
gpu(nvidea_gtx1660ti_6gb,1170000).
gpu(msi_gtx2060super_8gb,1899000).
gpu(msi_gtx2070super_8gb,2439000).
gpu(msi_gtx2080ti_11gb,5599000).
gpu(radeon_rx570_8gb,660000).
gpu(asrock_rx5500xt_8gb,955000).



ram(adata_DDR4_4gb,120000).
ram(xpg_DDR4_8gb,158000).
ram(corsair_DDR4_8gb,195000).
ram(corsair_DDR4_16gb,365000).
ram(dominator_DDR4_16gb,555000).
ram(xpgRgb_DDR4_8gb,204000).



fuentePw(thermaltake_450w,170000).
fuentePw(thermaltake_600w,199000).
fuentePw(evga_600w,225000).
fuentePw(evgaBronce_600w,314000).
fuentePw(coolerMaster_750w,385000).
fuentePw(corsair_850w,586000).
fuentePw(corsairRm_1000w,849000).


periferico(mause_trustRanoo_teclado_geniusgxK220,114000).
periferico(mause_corsair_teclado_logitech,350000).
periferico(mause_razer_teclado_razer,500000).
periferico(mause_logitech_teclado_razerHuntsman,785000).
periferico(mause_razer_teclado_logitech,565000).
periferico(mause_zowieGear_teclado_thermaltake,532000).


disco(segate_1tb,165000).
disco(segate_2tb,255000).
disco(seguate_3tb,310000).
disco(adata_240gb,178000).
disco(kingtom_480gb,285000).
disco(adataSSD_1tb,465000).
disco(corsairSSD_480gb,425000).
disco(aorusM2_500gb,790000).


monitor(samsung_22,349000).
monitor(lg_22,389000).
monitor(samsung_24,475000).
monitor(lg_29,1099000).
monitor(samsung_28,1270000).
monitor(benq_27,1910000).

gabinete(generico,170000).
gabinete(corsair,230000).
gabinete(coolerMaster,268000).
gabinete(corsair,278000).
gabinete(aorus,355000).
gabinete(corsair,449000).

computadorOfficina(office,1).
computadorGamer(gamer,1).
computadorStreamGamer(stream_Gamer,1).


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

busqueda_valor_Mayor(Procesador,PlacaMadre,
               GPU,Ram,FuentePoder,Periferico,
               Disco,Monitor,Gabinete,Valor,Precio):-
        procesador(Procesador,X1),placaMadre(PlacaMadre,X2),
        gpu(GPU,X3),ram(Ram,X4),fuentePw(FuentePoder,X5),
        periferico(Periferico,X6),disco(Disco,X7),
        monitor(Monitor,X8),gabinete(Gabinete,X9),
        Precio is X1+X2+X3+X4+X5+X6+X7+X8+X9,Precio>Valor.







