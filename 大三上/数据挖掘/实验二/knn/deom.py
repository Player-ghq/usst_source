import csv
import random




with open("Prostate_Cancer.csv",'r') as file:
    reader = csv.DictReader(file)
    datas = [x for x in reader]



random.shuffle(datas)
print(datas)


key = ["diagnosis","_result","radius","texture","perimeter","area","smoothness","compactness","symmetry","fractal_dimension"]