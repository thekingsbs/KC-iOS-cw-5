import UIKit


let family = ["Mother", "Father", "Nasser", "Abdullah", "Muneera", "Saleh"]

for name in family {
    print(name)
}

var evenNumbers = [2,4,6,8,10,12]

evenNumbers += [14,16,18,20,22]

print(evenNumbers.randomElement()!)

evenNumbers.removeAll()

var numbers = [1,2,3,4,5]

for i in numbers {
    print(i)
}

for i in 6...10 {
    
    numbers.append(i)
    
}

for i in numbers {
    print(i)
}


for i in numbers {
    
    if i  % 2 == 0 {
        print(i)
    }
    
}
