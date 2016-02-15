//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var jesusButton: UIButton!
    @IBOutlet var shameButton: UIButton!
    @IBOutlet var broButton: UIButton!
    @IBOutlet var mindButton: UIButton!
    @IBOutlet var lieButton: UIButton!
    @IBOutlet var legendaryButton: UIButton!
    @IBOutlet var pepButton: UIButton!
    @IBOutlet var condolencesButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func didTapDelete() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func didTapReturn() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func didTapSpace() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(" ")
    }

    func shapeButton(){
        let buttonArray: [UIButton] = [nextKeyboardButton, deleteButton, returnButton, jesusButton,
            shameButton, mindButton, broButton, lieButton, legendaryButton,
            pepButton, condolencesButton, spaceButton]
        
        for b in buttonArray{
            b.layer.cornerRadius = 5
        }
    }
    
    func didTapJesus(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Jesus waited threedays to come back to life. It was perfect! If he had only waited one day, a lot of people wouldn’t have even heard he died. They’d be all, “Hey Jesus, what up?” and Jesus would probably be like, “What up? I died yesterday!” and they’d be all, “Uh, you look pretty alive to me, dude…” and then Jesus would have to explain how he was resurrected, and how it was a miracle, and the dude’d be like “Uhh okay, whatever you say, bro…” And he’s not gonna come back on a Saturday. Everybody’s busy, doing chores, workin’ the loom, trimmin’ the beard, NO. He waited the perfect number of days, three. Plus it’s Sunday, so everyone’s in church already, and they’re all in there like “Oh no, Jesus is dead”, and then BAM! He bursts in the back door, runnin’ up the aisle, everyone’s totally psyched, and FYI, that’s when he invented the high five. That’s why we wait three days to call a woman, because that’s how long Jesus wants us to wait…. True story.")
    }
    
    func didTapShame(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("In my body, where the shame gland should be, there is a second awesome gland. True story.")
    }
    
    func didTapBro(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Think of me like Yoda, but instead of being little and green I wear suits and I’m awesome. I’m your bro—I’m Broda!")
    }
    
    func didTapMind(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Let me tell you about a little thing I like to call ‘mind over body’. you see, whenever I start feeling sick, I just stop being sick and be awesome instead.")
    }
    
    func didTapLie(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("A lie is just a great story that someone ruined with the truth.")
    }
    
    func didTapLegendary(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("It’s gonna be legend-... wait for it... and I hope you’re not lactose intolerant because the second half of that word is DAIRY!")
    }
    
    func didTapPep(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("When I get sad, I stop being sad and be awesome instead. True story.")
    }
    
    func didTapCondolences(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("*gives high five of condolences*")
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        deleteButton.addTarget(self, action: "didTapDelete", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "didTapReturn", forControlEvents: .TouchUpInside)
        
        jesusButton.addTarget(self, action: "didTapJesus", forControlEvents: .TouchUpInside)
        shameButton.addTarget(self, action: "didTapShame", forControlEvents: .TouchUpInside)
        broButton.addTarget(self, action: "didTapBro", forControlEvents: .TouchUpInside)
        mindButton.addTarget(self, action: "didTapMind", forControlEvents: .TouchUpInside)
        lieButton.addTarget(self, action: "didTapLie", forControlEvents: .TouchUpInside)
        legendaryButton.addTarget(self, action: "didTapLegendary", forControlEvents: .TouchUpInside)
        pepButton.addTarget(self, action: "didTapPep", forControlEvents: .TouchUpInside)
        condolencesButton.addTarget(self, action: "didTapCondolences", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "didTapSpace", forControlEvents: .TouchUpInside)
        
        shapeButton()
        
    }


}
