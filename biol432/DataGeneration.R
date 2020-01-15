#STEP 4
Species = c("Homo sapiens", "Physaria chambersii", "Rorippa anceps", "Sisymbrium loeselii", "Thelypodium integrifolium", "Matthiola chorassanica", "Erysimum canum", "Draba nivalis", "Cochlearia danica", "Cardamine asarifolia")
print(Species)

#STEP 5
Limb.Width = rnorm(n=10, mean=10, sd=10)
print(Limb.Width)

#STEP 6
Limb.Width = abs(rnorm(n=10, mean=10, sd=10))
print(Limb.Width)

#STEP 7
indexesWidth = rbinom(10,1,0.5)+1
unitsWidth = c("cm","mm")
unitsW = unitsWidth[indexesWidth]
print(unitsW)

#STEP 8
Limb.Length = rnorm(n=10, mean=100, sd=100)
print(Limb.Length)

Limb.Length = abs(rnorm(n=10, mean=100, sd=100))
print (Limb.Length)

#STEP 9
indexesLength = rbinom(10,1,0.5)+1
unitsLength = c("cm","mm")
unitsL = unitsLength[indexesLength]
print(unitsL)

#STEP 10
MyData = data.frame(Species,Limb.Width,unitsW,Limb.Length,unitsL)
print(MyData)

#STEP 11
write.csv(MyData,file="measurements.csv")
