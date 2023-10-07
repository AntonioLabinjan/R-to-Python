# print("hello world")

# Radimo varijable

v <- TRUE # spremili smo TRUE u varijablu v
print(v) # ispisujemo varijablu
print(class(v))# provjeravamo kojeg je tipa varijalba

c <- 23 #moremo stavit broj
print(c)
print(class(c))

g <- "Ovo je string" #more i string, odnosno character u R-u
print(g)
print(class(g))

# VEKTORI U R-u, slično kao liste u Pythonu
v <-c(1,2,3.3,"test")
print(class(v)) # ako smo stavili 1 string u vektor, sve se gleda kao da je string
print(v) # ispišemo cijeli vektor

# VEKTORI SE NAJČEŠĆE KORISTE ZA INDEKSIRANJE
      
apples <- c("red", "green", "yellow")

print(apples)
# PRISTUPANJE PREKO INDEKSA
apples[c(1,3)] #indeksi kreću od 1,a ne od 0
apples[1:3] # ovo vraća cijeli vektor (od 1 do 3)
apples[1] # ovo vraća vrijednost na indeksu
# INICIJALIZIRAMO VEKTOR SA NIZOM VRIJEDNOSTI
a <- 1:3
a
# DULJINA; FUNKCIJA LENGTH
length(apples) # nepoželjno je nazivati varijable po postojećim funkcijama

# LISTE; BAŠ IH I NE KORISTIMO JER SU VEKTORI DOVOLJNO DOBRI
list1 <- list(1, 3, 5)
print(list1)
print(class(list1))
# LISTE MORU BIT ZEZNUTE, PA SU BOLJI VEKTORI
list2 <- list(c(0, 1, 2), 3, 5)
print(list2)
print(class(list2))
list2[1] # ovo vraća sadržaj vektora; radit ćemo s vektorima, a ne baš s listama
# DODAVANJE NOVE VRIJEDNOSTI U VEKTOR
c(apples, "blue") # APPEND TO VECTOR
# moramo to spremit ako ga želimo koristit
apples <- c(apples, "blue")
print(apples)

#MATRICE; as.matrix ->pokušava pretvoriti dani argument u matricu; is.matrix -> provjerava je li nešto matrica
M <- matrix 
# pretvorimo vektor u matricu
as.matrix(1:10)
# provjera
is.matrix(as.matrix(1:10)) # TRUE
# dulji način
M <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
              dimnames = list(c("row1", "row2"),
                             c("C.1", "C.2", "C.3")))
View(M)#vidimo matricu
View(M)
# ako neki element fali, dobit ćemo upozorenje, ali matricu će samo punit iz početka
# promjena matrice
#dimnames(M) <- list(c("Editedrow1", "Editedrow2", "Editedrow3"),
    #               c("Editedcolumn1", "Editedcolumn2", "Editedcolumn3"))

#arrayevi
# as.array i is.array
# n-dimenzionalni array
a <- array(apples, dim=c(3, 2, 5))
dim(a)
dim(a)

# Dohvaćamo redak, stupac 
M[1,3]
M[3]
# LISTE; VEKTORI I OBIČNE VARIJABLE SE NAJVIŠE KORISTE

# FACTOR - eliminiramo ponavljanja

c_colors <-c('g', 'b', 'r', 'y', 'g', 'g', 'r', 'b')
length(c_colors)
c_factor <-factor(c_colors)
c_factor # s ovin smo prikazali samo unique vrijednosti
# dobro je za vizualizaciju
nlevels(c_factor) # vraća broj unique skupova

# Izrada dataframea

BMI <- data.frame(
  gender = c("Male", "Male", "Female", "Male", "Female"),
  height = c(178, 182, 150, 166, 163),
  weight = c(91, 86, 53, 102, 76),
  age = c(28, 25, 20, 44, 65),
  stringsAsFactors = FALSE
)
# dohvati određenu stvar iz tablice
BMI[1,2]
# dohvati određene stupce
#BMI$ime stupca
BMI$gender
BMI$age[2]

#Prosječna visina; glup će bit stupac, ali nema veze

BMI$mean <- mean(BMI$height)
BMI$mean

#Uvjetno pretraživanje dataframea; vraćat će vektor sa true i false vrijednostima
BMI$age > 30
#Nadogradnja; želimo spolove osoba starijih od 30
BMI$gender[BMI$age > 30]
# More i više uvjeta
BMI[BMI$age > 30 & BMI$height < 170, ]

# summary -> statističke vrijednosti
summary(BMI)
# colnames i rownames
colnames(BMI) 
rownames(BMI)
# moremo ih i izmjenit, ali izmjenit će se u cijeloj skripti
colnames(BMI) <- c("g", "h", "w", "a", "m")
colnames(BMI)

# dodavanje datoteke
getwd() # dobijemo putanju
mydata <- read.table("mydata.csv", header=TRUE, sep=',')  # najbolje je stavit dataset u isti fajl di je i R datoteka
mydata$ # dobijemo imena stupaca datoteke
class(mydata$name) # vidimo tipove podataka
