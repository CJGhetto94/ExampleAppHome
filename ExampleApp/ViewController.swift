import UIKit

class ViewController: UIViewController {
    
    private let textLabel = UILabel()
    private let shadowView = ShadowView(imageName: "forrestEX13")
    private let secondShadowView = ShadowView(imageName: "forrest")
    private let stackView = UIStackView()
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateNumbers()
        
        setupLabel()
        setupView()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
        
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(shadowView)
        stackView.addArrangedSubview(secondShadowView)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7)
        ])
    }
    
    private func setupLabel() {
        let firstNumber = helper.getNumbers().first
        textLabel.text = "\(firstNumber ?? 0)"
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .black
        textLabel.textAlignment = .center
    }
    
    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.darkGray.cgColor, UIColor.yellow.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)
    }
}
