#Codigo para problema 1

mis_dades <- mtcars 

mean(mis_dades$qsec)

hist(mis_dades$qsec) 
#hist(mis_dades$qsec, breaks = 15)         #cuando ponemos el dolar extraemos la linea que queremos
                                            #cuando ponemos mean calculamos la media (en este caso de qsec)
                                            #hist --> es el histograma 

cut(mis_dades$qsec, 9)

table(cut(mis_dades$qsec, 9))/32#utilizamos el cut para dividirlo entre 9 intervalos `por lo tanto, empezariamos en 14.5 hasta 22.9`
                            # la frequencia relativa seria ni entre el total de obs por lo tanto 3/32 luego 2/32....

freq <- table(cut(mis_dades$qsec,9))
freq

tabla <- data.frame(ni = freq,
                    fi=freq/32,
                    Ni=cumsum(freq),
                    Fi=cumsum(freq)/32)

mis_dades$drat
hist(mis_dades$drat)#histograma 
median(mis_dades$drat) #median es la mediana que seria 3.695

sort(mis_dades$drat) #ordenar de menor a mayor y la mediana es donde yo corto los datos en dos, el número del medio vaya 

quantile(mis_dades$drat) #el primer quartil es 3.080

sort(mis_dades$mpg)
quantile(mis_dades$mpg, 0.18) #15.116

sort(mis_dades$cyl)
IQR(mis_dades$cyl) #el rango interquartilico es la diferencia entre el tercero y el primer qiuartil
                  #calcular el tercer quartil y restarle el primer quartil 

sd(mis_dades$cyl) #1.785922
var(mis_dades$cyl)#3.189516
#varianza muestral --> var()
#desviación típica --> sd()


