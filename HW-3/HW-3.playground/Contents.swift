import UIKit

//1
var fitness = (pushUp:15, pullUp:10, sitUp:100)
print (fitness)
//2
print ("Я могу отжаться от пола \(fitness.pushUp) раз")
print ("Я могу подтянуться \(fitness.pullUp) раз")
print ("Я могу присесть \(fitness.sitUp) раз")
print (fitness.0)
print (fitness.1)
print (fitness.2)
print (fitness.pushUp)
print (fitness.pullUp)
print (fitness.sitUp)
//3 создать тюпл с данными друга и заменить данные в первом тюпле данными второго тюпла, исп-я переменные
var fitnessFriend = (pushUpF: 10, pullUpF: 10, sitUpF: 70)
print(fitnessFriend)
fitness.pushUp = fitnessFriend.pushUpF
fitness.pullUp = fitnessFriend.pullUpF
fitness.sitUp = fitnessFriend.sitUpF
print (fitness)
//4 сравнить свои данные с данными друга и вывести разницу
fitness = (15, 5, 100) //fitness хранит значения друга, возвращаем мои значения
var pushDiff = (fitness.0 - fitnessFriend.0)
var pullDiff = abs(fitness.1 - fitnessFriend.1)
var sitDiff = (fitness.2 - fitnessFriend.2)
var fitnessDiff = (pushUps : pushDiff, pullUps  : pullDiff, sitUps : sitDiff)
print (fitnessDiff)

