//
//  ViewController.swift
//  DemoPlist
//
//  Created by Milu Ann George on 15/01/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var viewModel: DataViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        setupTableView()
    }

    private func setupViewModel() {
        viewModel = DataViewModel()
    }

    private func setupTableView() {
        tableView.dataSource = self
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = viewModel.items[indexPath.row].name
        cell.detailTextLabel?.text = String(viewModel.items[indexPath.row].age)
        return cell
    }
}
