import UIKit

class RulesViewController: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciceLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureButtons()
    }
    
    func configureButtons() {
        congfigureTitleLabel()
        configureRulesLabel()
        configureExerciceLabel()
    }
    
    func congfigureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of execise you do. \n\nJ= 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciceLabel() {
        view.addSubview(exerciceLabel)
        exerciceLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciceLabel.text = "♠️ = Push-up\n\n❤️ = Set-up\n\n♣️ = Burpess\n\n♦️ = Jumping Jack"
        exerciceLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciceLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciceLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciceLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
