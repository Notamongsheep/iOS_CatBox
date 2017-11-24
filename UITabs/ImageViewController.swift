//
//  WelcomeViewController.swift
//  UITabs
//
//  Shows a welcome screen.
//
//  Created by Christine Berger on 11/10/17.
//  Copyright © 2017 Christine Berger. All rights reserved.
//----------------------------------------------------------------------------------------------------//

import UIKit        //Useful things for working with the UI.

class ImageViewController: UIViewController {

    //Reference the welcome screen UIImageView.
    @IBOutlet weak var image_view: UIImageView!
    
    //Store the sequence of images that will be animated in an array.
    let images: [UIImage] = [#imageLiteral(resourceName: "ClosedBox"), #imageLiteral(resourceName: "EmptyBox"), #imageLiteral(resourceName: "CatBox")]
    
    /*----------------------------------------------------------------------------------------/
     * viewDidLoad()
     * When the view loads, no further prep is needed.
     *----------------------------------------------------------------------------------------*/
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /*----------------------------------------------------------------------------------------/
     * viewDidAppear()
     * When the view appears, animate the images in the array.
     *----------------------------------------------------------------------------------------*/
    override func viewDidAppear(_ animated: Bool) {
        animateImage()
    }
    
    /*----------------------------------------------------------------------------------------/
     * animateImage()
     * Animate the images in the images array.
     *----------------------------------------------------------------------------------------*/
    func animateImage() {
        //Set the images to be animated.
        image_view.animationImages = images
        //Set the number of times the animation should repeat.
        image_view.animationRepeatCount = 1
        //Set the total duration of the animation.
        image_view.animationDuration = 2
        //Start the animation.
        image_view.startAnimating()
    }

}
