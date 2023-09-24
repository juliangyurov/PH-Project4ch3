//
//  TableViewController.swift
//  Project4
//
//  Created by Yulian Gyuroff on 24.09.23.
//

import UIKit

class TableViewController: UITableViewController {
    var websites = ["developer.apple.com","hackingwithswift.com","www.kodeco.com","iosapptemplates.com",
                        "www.swift.org","iosdevweekly.com","www.donnywals.com","www.avanderlee.com",
                        "www.swiftbysundell.com","stackoverflow.com","seanallen.teachable.com","github.com","wikipedia.org"]

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Selected Web Pages"
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "webSiteCell",for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "webViewID") as? ViewController{
            vc.index = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
