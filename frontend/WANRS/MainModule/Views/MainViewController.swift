//
//  ViewController.swift
//  WANRS
//
//  Created by Dima Savelyev on 28.06.2022.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    var levelBlock: UIButton!
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .systemBackground
        self.presenter.showLevelsChoice()
    }
}

extension MainViewController: MainViewProtocol {
    func setLevelsChoice(cardsLevels: String) {
        levelBlock = {
            let lab = UIButton()
            lab.layer.cornerRadius = 15
            lab.layer.masksToBounds = true
            lab.backgroundColor = .secondarySystemBackground
            lab.setTitle(cardsLevels, for: .normal)
            lab.setTitleColor(.label, for: .normal)
            view.addSubview(lab)
            lab.snp.makeConstraints { make in
                make.width.equalToSuperview().dividedBy(2)
                make.height.equalTo(view.frame.width/2)
                make.center.equalToSuperview()
            }
            return lab
        }()
    }
}
