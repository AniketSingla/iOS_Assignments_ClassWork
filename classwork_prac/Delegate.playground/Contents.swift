import UIKit

protocol DelegateDataPassing {
    func passData(data: String?)
}

class FirstVC: DelegateDataPassing{
    var dataInFirstVC: String?
    func passData(data: String?){
        dataInFirstVC = data
    }
}

class SecondVC{
    var dataInSecondVC: String?
    var delegate: DelegateDataPassing?
    func passDataToFirstVC(data: String?){
        delegate?.passData(data: dataInSecondVC)
    }
}

var secondVC = SecondVC()
var firstVC = FirstVC()
secondVC.delegate = firstVC
secondVC.dataInSecondVC = "Hello, World!"
secondVC.passDataToFirstVC(data: secondVC.dataInSecondVC)
print(firstVC.dataInFirstVC)
