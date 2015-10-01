//
//  ViewController.swift
//  collectionview-sample
//
//  Created by NAGAMINE HIROMASA on 2015/09/29.
//  Copyright © 2015年 Hiromasa Nagamine. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var tableviewButton: UIButton!
    @IBOutlet var collectionButton: UIButton!
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.collectionView.delegate = self
        self.collectionView.dataSource = self

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("reusable", forIndexPath: indexPath)
        cell.backgroundColor = .whiteColor()

        return cell
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("reusable")

        if cell == nil {
            cell = UITableViewCell()
        }

        let aCell = cell!
        aCell.backgroundColor = .whiteColor()
        return aCell
    }

    @IBAction func pushedTableviewButton(sender: AnyObject!) {
        self.tableView.hidden = false
        self.collectionView.hidden = true
    }

    @IBAction func pushedCollectionButton(sender: AnyObject!) {
        self.tableView.hidden = true
        self.collectionView.hidden = false
    }
}

