


<p align="center">
<img src="https://img.shields.io/badge/Swift-4.2-orange.svg" alt="Swift 4.2"/>
<img src="https://img.shields.io/badge/Xcode-10%2B-brightgreen.svg" alt="XCode 10+"/>
<img src="https://img.shields.io/badge/platform-iOS-green.svg" alt="iOS"/>
<img src="https://img.shields.io/badge/iOS-12%2B-brightgreen.svg" alt="iOS 12"/>
<img src="https://img.shields.io/badge/licence-MIT-lightgray.svg" alt="Licence MIT"/>
</p>


#  Factory Method

Фабричный метод (Виртуальный конструктор)

Это порождающий паттерн проектирования, который определяет общий интерфейс для создания объектов в суперклассе, позволяя подсклассам изменять тип создаваемых объектов.

### Positive side
- [x]  Избавляет класс от привязки к конкретным классам продуктов (завязываемся на тип протокола)
- [x] Выделяет код производства продуктов в одно место, упрощая поддержку кода (знаем, если мы хотим что-то изменить, то идем в конкретное место, а не по всему проекту бегаем)
- [x] упрощает добавление новых продуктов в программу
- [x] Реализует принцип открытости / закрытости (2 принцип солида) (основные принципы ООП) 

### Negative side
* Может привести к созданию больших параллельных иерархий классов, так как для каждого класса продукта надо создать свой подкласс создателя




## Create protocol

```swift
protocol Vehicle {
    var type: String { get }

    func startPoint()

    func endPoint()
}
```

## Create kitchen

```swift
enum Transport {
    case bus, plane, supercar, train
}

class Singletone {
    static let shared = Singletone()

    func createDrive(type: Transport) -> Vehicle {
        switch type {
        case .bus:
            return Bus()
        case .plane:
            return Plane()
        case .supercar:
            return SuperCar()
        case .train:
            return Train()
        }
    }
}
```

## Create product

```swift
class Bus: Vehicle {
    var type: String = "Bus"

    func startPoint() {
        print("Started transportation by bus")
    }

    func endPoint() {
        print("Bus transportation ended")
    }
}
```

## Workspace

#### Create func for choose transport

```swift
func chooseTransport(name: Transport) {
    let option = Singletone.shared.createDrive(type: name)
    arrayDrives.append(option)
}
```
### Create func for output data

```swift
func printResult() {
    for i in arrayDrives {
        i.startPoint()
        i.endPoint()
    }
}
```
### ViewDidLoad

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    chooseTransport(name: .bus)
    printResult()
}
```

## Another example

<div align = "center">
<img src="/images/example.png" width="750">
</div>

<div align = "center">
<img src="/images/problem.png" width="750">
</div>

## Requirements

* Swift 4.2
* iOS 12 or higher

## Authors

* **Alexandr Kustov** -  [ELEV0](https://github.com/ELEV0)

## Communication

* If you **found a bug**, open an issue.
* If you **have a feature request**, open an issue.
* If you **want to contribute**, submit a pull request.

## License

This project is licensed under the MIT License.
