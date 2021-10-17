//
//  ViewController.swift
//  test3
//
//  Created by Лиана Чуприна on 16.10.2021.
//

import UIKit

class ViewController: UIViewController {
    private var articles = [ArticleResponse]()
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArtticlesTVCell",
        for: indexPath) as? ArtticlesTVCell else { return UITableViewCell() }

        let model = ArticlesModelCell(text: articles[indexPath.row].title)
        
        cell.render(model: model)

        return cell
        
    }
}

