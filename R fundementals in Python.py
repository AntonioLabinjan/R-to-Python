import pandas as pd
import numpy as np
import os

# Radimo varijable
v = True
print(v)
print(type(v))

c = 23
print(c)
print(type(c))

g = "Ovo je string"
print(g)
print(type(g))

# VEKTORI U Pythonu, slično kao liste u Pythonu
v = [1, 2, 3.3, "test"]
print(type(v))  # ako smo stavili 1 string u vektor, sve se gleda kao da je string
print(v)

# VEKTORI SE NAJČEŠĆE KORISTE ZA INDEKSIRANJE
apples = ["red", "green", "yellow"]
print(apples)

# PRISTUPANJE PREKO INDEKSA
print(apples[0])  # indeksi kreću od 0
print(apples[0:2])  # ovo vraća cijeli vektor (od 0 do 1)
print(apples[0])  # ovo vraća vrijednost na indeksu

# INICIJALIZIRAMO VEKTOR SA NIZOM VRIJEDNOSTI
a = list(range(1, 4))
print(a)

# DULJINA; FUNKCIJA LEN
print(len(apples))  # nepoželjno je nazivati varijable po postojećim funkcijama

# LISTE; BAŠ IH I NE KORISTIMO JER SU VEKTORI DOVOLJNO DOBRI
list1 = [1, 3, 5]
print(list1)
print(type(list1))

# LISTE MORU BIT ZEZNUTE, PA SU BOLJI VEKTORI
list2 = [[0, 1, 2], 3, 5]
print(list2)
print(type(list2))
print(list2[0])  # ovo vraća sadržaj vektora; radit ćemo s vektorima, a ne baš s listama

# DODAVANJE NOVE VRIJEDNOSTI U VEKTOR
apples.append("blue")  # APPEND TO VECTOR
print(apples)

# MATRICE; NumPy se koristi za matrice i nizove
M = np.array([[1, 2, 3], [11, 12, 13]])
print(M)

# n-dimenzionalni array
apples = ["red", "green", "yellow", "blue", "orange", "purple"]

a = np.array(apples).reshape(3, 2, 1)  # Promijenili smo dimenziju na (3, 2, 1)
print(a)
print(a.shape)

# Dohvaćamo redak, stupac
print(M[0, 2])
print(M[1])

# FACTOR - eliminiramo ponavljanja
c_colors = ['g', 'b', 'r', 'y', 'g', 'g', 'r', 'b']
print(len(c_colors))
c_factor = list(set(c_colors))  # Koristi set za eliminaciju ponavljanja
print(c_factor)  # s ovim smo prikazali samo unique vrijednosti
print(len(c_factor))  # vraća broj unique skupova

# Izrada DataFrame-a
data = {
    'gender': ["Male", "Male", "Female", "Male", "Female"],
    'height': [178, 182, 150, 166, 163],
    'weight': [91, 86, 53, 102, 76],
    'age': [28, 25, 20, 44, 65]
}

BMI = pd.DataFrame(data)

# Dohvati određenu stvar iz tablice
print(BMI.iloc[0, 1])

# Dohvati određene stupce
print(BMI['gender'])
print(BMI['age'].iloc[1])

# Prosječna visina
mean_height = BMI['height'].mean()
print(mean_height)

# Uvjetno pretraživanje DataFrame-a
print(BMI['age'] > 30)

# Nadogradnja; želimo spolove osoba starijih od 30
print(BMI[BMI['age'] > 30]['gender'])

# Više uvjeta
print(BMI[(BMI['age'] > 30) & (BMI['height'] < 170)])

# Statističke vrijednosti
print(BMI.describe())

# Imena stupaca
print(BMI.columns)

# Promjena imena stupaca
BMI.columns = ["g", "h", "w", "a"]
print(BMI.columns)

# Dodavanje datoteke

current_directory = os.getcwd()
file_path = os.path.join(current_directory, "mydata.csv")

mydata = pd.read_csv(file_path, sep=',', header=0)  # header=0 znači da prvi redak sadrži imena stupaca
print(mydata)

# Dohvati imena stupaca datoteke
column_names = mydata.columns
print(column_names)

# Pregled tipova podataka u stupcu 'name'
column_data_type = mydata['name'].dtype
print(column_data_type)
