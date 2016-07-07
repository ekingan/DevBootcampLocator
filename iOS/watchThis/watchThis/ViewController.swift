//
//  ViewController.swift
//  watchThis
//
//  Created by Math LLC on 7/5/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 180, height: 30))
        imageView.contentMode = .ScaleAspectFit
        let image = UIImage(named: "logo.png")
        imageView.image = image
        navigationItem.titleView = imageView
        
        tableView.dataSource = self
        tableView.delegate = self
        
    
    }
    
    override func viewDidAppear(animated: Bool) {
        fetchAndSetResults()
        tableView.reloadData()
    }
    
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Movie")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.movies = results as! [Movie]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
          if let cell = tableView.dequeueReusableCellWithIdentifier("MovieCell") as? MovieCell {
            let movie = movies[indexPath.row]
            cell.configureCell(movie)
            return cell
        } else {
            return MovieCell()
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
        
    }
    
//    @IBAction func segueToDetails(sender: AnyObject) {
//        
//        
//        if let superview = sender.superview {
//            if let cell = superview!.superview as? MovieCell {
//                
//                guard let indexPath = self.tableView.indexPathForCell(cell) else { return }
//                
//                let movie = movies[indexPath.row]
//                //print(movie)
//                
//                self.performSegueWithIdentifier("DetailMovieSegue", sender: movie)
//            }
//        }
//        
//    }



}

