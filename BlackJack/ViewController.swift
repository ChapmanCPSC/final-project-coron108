//
//  ViewController.swift
//  BlackJack
//
//  Created by Corona, Danny on 5/9/16.
//  Copyright © 2016 Corona, Danny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userCard01: UIImageView!
    @IBOutlet weak var userCard02: UIImageView!
    @IBOutlet weak var userCard03: UIImageView!
    @IBOutlet weak var userCard04: UIImageView!
    @IBOutlet weak var userCard05: UIImageView!
    
    @IBOutlet weak var testLabel: UILabel!
    
    var randDeck : [Card] = []  //This deck used for picking cards
    
    var userCardValue01 : Int = 0
    var userCardValue02 : Int = 0
    var userCardValue03 : Int = 0
    var userCardValue04 : Int = 0
    var userCardValue05 : Int = 0
    
    var userCardData01 : Card? = nil
    var userCardData02 : Card? = nil
    var userCardData03 : Card? = nil
    var userCardData04 : Card? = nil
    var userCardData05 : Card? = nil
    
    var totalCardValue : Int = 0
    var hitButtonPresses = 0
    
    @IBOutlet weak var dealerCard_IV_01: UIImageView!
    @IBOutlet weak var dealerCard_IV_02: UIImageView!
    @IBOutlet weak var dealerCard_IV_03: UIImageView!
    @IBOutlet weak var dealerCard_IV_04: UIImageView!
    @IBOutlet weak var dealerCard_IV_05: UIImageView!
    
    var dealerCardValue01 : Int = 0
    var dealerCardValue02 : Int = 0
    var dealerCardValue03 : Int = 0
    var dealerCardValue04 : Int = 0
    var dealerCardValue05 : Int = 0
    
    var dealerCardData01 : Card? = nil
    var dealerCardData02 : Card? = nil
    var dealerCardData03 : Card? = nil
    var dealerCardData04 : Card? = nil
    var dealerCardData05 : Card? = nil
    
    var dealerCardValue : Int = 0
    //var standButtonPresses : Int = 0
    
    
    struct Card
    {
        let name : String
        let value1 : Int
        let value2 : Int?
        let suit : String
        let img : UIImage
    }
    
    let Deck : [Card] = [
        Card(name: "Ace", value1: 11, value2: 1, suit: "Spades", img: UIImage(named: "ace_of_spades")!),
        Card(name: "Ace", value1: 11, value2: 1, suit: "Hearts", img: UIImage(named: "ace_of_hearts")!),
        Card(name: "Ace", value1: 11, value2: 1, suit: "Diamonds", img: UIImage(named: "ace_of_diamonds")!),
        Card(name: "Ace", value1: 11, value2: 1, suit: "Clubs", img: UIImage(named: "ace_of_clubs")!),
        
        Card(name: "2", value1: 2, value2: nil, suit: "Spades", img: UIImage(named: "2_of_spades")!),
        Card(name: "2", value1: 2, value2: nil, suit: "Hearts", img: UIImage(named: "2_of_hearts")!),
        Card(name: "2", value1: 2, value2: nil, suit: "Diamonds", img: UIImage(named: "2_of_diamonds")!),
        Card(name: "2", value1: 2, value2: nil, suit: "Clubs", img: UIImage(named: "2_of_clubs")!),
        
        Card(name: "3", value1: 3, value2: nil, suit: "Spades", img: UIImage(named: "3_of_spades")!),
        Card(name: "3", value1: 3, value2: nil, suit: "Hearts", img: UIImage(named: "3_of_hearts")!),
        Card(name: "3", value1: 3, value2: nil, suit: "Diamonds", img: UIImage(named: "3_of_diamonds")!),
        Card(name: "3", value1: 3, value2: nil, suit: "Clubs", img: UIImage(named: "3_of_clubs")!),
        
        Card(name: "4", value1: 4, value2: nil, suit: "Spades", img: UIImage(named: "4_of_spades")!),
        Card(name: "4", value1: 4, value2: nil, suit: "Hearts", img: UIImage(named: "4_of_hearts")!),
        Card(name: "4", value1: 4, value2: nil, suit: "Diamonds", img: UIImage(named: "4_of_diamonds")!),
        Card(name: "4", value1: 4, value2: nil, suit: "Clubs", img: UIImage(named: "4_of_clubs")!),
        
        Card(name: "5", value1: 5, value2: nil, suit: "Spades", img: UIImage(named: "5_of_spades")!),
        Card(name: "5", value1: 5, value2: nil, suit: "Hearts", img: UIImage(named: "5_of_hearts")!),
        Card(name: "5", value1: 5, value2: nil, suit: "Diamonds", img: UIImage(named: "5_of_diamonds")!),
        Card(name: "5", value1: 5, value2: nil, suit: "Clubs", img: UIImage(named: "5_of_clubs")!),
        
        Card(name: "6", value1: 6, value2: nil, suit: "Spades", img: UIImage(named: "6_of_spades")!),
        Card(name: "6", value1: 6, value2: nil, suit: "Hearts", img: UIImage(named: "6_of_hearts")!),
        Card(name: "6", value1: 6, value2: nil, suit: "Diamonds", img: UIImage(named: "6_of_diamonds")!),
        Card(name: "6", value1: 6, value2: nil, suit: "Clubs", img: UIImage(named: "6_of_clubs")!),
        
        Card(name: "7", value1: 7, value2: nil, suit: "Spades", img: UIImage(named: "7_of_spades")!),
        Card(name: "7", value1: 7, value2: nil, suit: "Hearts", img: UIImage(named: "7_of_hearts")!),
        Card(name: "7", value1: 7, value2: nil, suit: "Diamonds", img: UIImage(named: "7_of_diamonds")!),
        Card(name: "7", value1: 7, value2: nil, suit: "Clubs", img: UIImage(named: "7_of_clubs")!),
        
        Card(name: "8", value1: 8, value2: nil, suit: "Spades", img: UIImage(named: "8_of_spades")!),
        Card(name: "8", value1: 8, value2: nil, suit: "Hearts", img: UIImage(named: "8_of_hearts")!),
        Card(name: "8", value1: 8, value2: nil, suit: "Diamonds", img: UIImage(named: "8_of_diamonds")!),
        Card(name: "8", value1: 8, value2: nil, suit: "Clubs", img: UIImage(named: "8_of_clubs")!),
        
        Card(name: "9", value1: 9, value2: nil, suit: "Spades", img: UIImage(named: "9_of_spades")!),
        Card(name: "9", value1: 9, value2: nil, suit: "Hearts", img: UIImage(named: "9_of_hearts")!),
        Card(name: "9", value1: 9, value2: nil, suit: "Diamonds", img: UIImage(named: "9_of_diamonds")!),
        Card(name: "9", value1: 9, value2: nil, suit: "Clubs", img: UIImage(named: "9_of_clubs")!),
        
        Card(name: "10", value1: 10, value2: nil, suit: "Spades", img: UIImage(named: "10_of_spades")!),
        Card(name: "10", value1: 10, value2: nil, suit: "Hearts", img: UIImage(named: "10_of_hearts")!),
        Card(name: "10", value1: 10, value2: nil, suit: "Diamonds", img: UIImage(named: "10_of_diamonds")!),
        Card(name: "10", value1: 10, value2: nil, suit: "Clubs", img: UIImage(named: "10_of_clubs")!),
        
        Card(name: "Jack", value1: 10, value2: nil, suit: "Spades", img: UIImage(named: "jack_of_spades")!),
        Card(name: "Jack", value1: 10, value2: nil, suit: "Hearts", img: UIImage(named: "jack_of_hearts")!),
        Card(name: "Jack", value1: 10, value2: nil, suit: "Diamonds", img: UIImage(named: "jack_of_diamonds")!),
        Card(name: "Jack", value1: 10, value2: nil, suit: "Clubs", img: UIImage(named: "jack_of_clubs")!),
        
        Card(name: "Queen", value1: 10, value2: nil, suit: "Spades", img: UIImage(named: "queen_of_spades")!),
        Card(name: "Queen", value1: 10, value2: nil, suit: "Hearts", img: UIImage(named: "queen_of_hearts")!),
        Card(name: "Queen", value1: 10, value2: nil, suit: "Diamonds", img: UIImage(named: "queen_of_diamonds")!),
        Card(name: "Queen", value1: 10, value2: nil, suit: "Clubs", img: UIImage(named: "queen_of_clubs")!),
        
        Card(name: "King", value1: 10, value2: nil, suit: "Spades", img: UIImage(named: "king_of_spades")!),
        Card(name: "King", value1: 10, value2: nil, suit: "Hearts", img: UIImage(named: "king_of_hearts")!),
        Card(name: "King", value1: 10, value2: nil, suit: "Diamonds", img: UIImage(named: "king_of_diamonds")!),
        Card(name: "King", value1: 10, value2: nil, suit: "Clubs", img: UIImage(named: "king_of_clubs")!),
        ]
    
    var numOfCards = UInt32(52) //must be equal to number of cards in deck
    
    func randomizeDeck() {
        
        var numsUsed : [Int] = []
        
        outerLoop: for _ in Deck
        {
            //var x = true
            
            while true
            {
                let rand = Int(arc4random_uniform(numOfCards)) //Randomizing cards
                
                if !numsUsed.contains(rand)
                {
                    numsUsed.append(rand)
                    randDeck.append(Deck[rand])
                }
                
                if randDeck.count == Deck.count
                {
                    break outerLoop // break out of entire loop
                }
            }
        }
    }
    
    func randCard() -> Card {
        let rand = Int(arc4random_uniform(numOfCards))
        let card = randDeck[rand]
        return card
    }
    
    func delay(delay: Double, closure: ()->()) {  //Code found online for delaying block of code
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(),
            closure
        )
    }
    
    func userCheckOver21 (num: Int)
    {
        if num > 21
        {
            gameOver(2)
        }
    }
    
    func dealerCheckOver21 (num: Int)
    {
        if num > 21
        {
            gameOver(1)
        }
    }
    
    func gameOver(winner: Int)
    {
        //User Wins
        if winner == 1
        {
            let alertController = UIAlertController(title: "Winner", message: "You beat the dealer!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Yay", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
            delay(1.0)
            {
               self.resetGame()
            }
        }
        
        //User loses
        if winner == 2
        {
            let alertController = UIAlertController(title: "Loser", message: "You lose", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Okay :(", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
            delay(1.0)
            {
                self.resetGame()
            }
        }
        
        if winner == 3
        {
            let alertController = UIAlertController(title: "You Tied!", message: "This doesn't happen often.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
            delay(1.0)
            {
                self.resetGame()
            }
        }
    }
    
    func compareCards(user: Int, dealer: Int) {
        if dealer > user && dealer <= 21
        {
            gameOver(2)
        }
        
        if user > dealer && user <= 21
        {
            gameOver(1)
        }
        
        if user == dealer && user <= 21 && dealer <= 21
        {
            gameOver(3)
        }
    }
    
    func sumOfCards(card1: Card, card2: Card, card3: Card? = nil, card4: Card? = nil, card5: Card? = nil) -> Int
    {
        var c1 = card1.value1
        var c2 = card2.value1
        var c3 = card3?.value1
        var c4 = card4?.value1
        var c5 = card5?.value1
        
        if c3 == nil
        {
            c3 = 0
        }
        
        if c4 == nil
        {
            c4 = 0
        }
        
        if c5 == nil
        {
            c5 = 0
        }
        
        var sum = c1 + c2
        sum = sum +  c3! + c4! + c5!  //Split up due to error saying expression was too complex
        
        if sum > 21 && card1.name == "Ace"
        {
            c1 = card1.value2!
            var sum = c1 + c2
            sum = sum +  c3! + c4! + c5!
            
        }
        
        if sum > 21 && card2.name == "Ace"
        {
            c2 = card2.value2!
            sum = c1 + c2
            sum = sum +  c3! + c4! + c5!

        }
        
        if sum > 21 && card3?.name == "Ace"
        {
            c3 = card3?.value2!
            sum = c1 + c2
            sum = sum +  c3! + c4! + c5!

        }
        
        if sum > 21 && card4?.name == "Ace"
        {
            c4 = card4?.value2!
            sum = c1 + c2
            sum = sum +  c3! + c4! + c5!
            
        }
        
        if sum > 21 && card5?.name == "Ace"
        {
            c5 = card5?.value2!
            sum = c1 + c2
            sum = sum +  c3! + c4! + c5!
        }
        
        if card1.name == "Ace" && card2.name == "Ace"
        {
            c2 = card2.value2!
            c1 = card1.value1
        }
        
        if card1.name == "Ace" && card3?.name == "Ace"
        {
            c3 = card3!.value2!
            c1 = card1.value1
        }
        
        if card1.name == "Ace" && card4?.name == "Ace"
        {
            c4 = card4!.value2!
            c1 = card1.value1
        }
        
        if card1.name == "Ace" && card5?.name == "Ace"
        {
            c5 = card5!.value2!
            c1 = card1.value1
        }
        
        if card2.name == "Ace" && card3?.name == "Ace"
        {
            c3 = card3!.value2!
            c2 = card2.value1
        }
        
        if card2.name == "Ace" && card4?.name == "Ace"
        {
            c4 = card4!.value2!
            c2 = card2.value1
        }
        
        if card2.name == "Ace" && card5?.name == "Ace"
        {
            c5 = card5!.value2!
            c2 = card2.value1
        }
        
        if card3?.name == "Ace" && card4?.name == "Ace"
        {
            c4 = card4!.value2!
            c3 = card3!.value1
        }
        
        if card3?.name == "Ace" && card5?.name == "Ace"
        {
            c5 = card5!.value2!
            c3 = card3!.value1
        }
        
        if card4?.name == "Ace" && card5?.name == "Ace"
        {
            c5 = card5!.value2!
            c4 = card4!.value1
        }
        
        return sum
    }
    
    func resetGame()
    {
        hitButtonPresses = 0
        //standButtonPresses = 0
        
        userCardData01 = randCard()
        userCardData02 = randCard()
        userCardData03 = nil
        userCardData04 = nil
        userCardData05 = nil
        
        userCard01.image = userCardData01!.img
        userCard02.image = userCardData02!.img
        userCard03.image = UIImage(named: "blank")
        userCard04.image = UIImage(named: "blank")
        userCard05.image = UIImage(named: "blank")
        
        userCardValue01 = userCardData01!.value1
        userCardValue02 = userCardData02!.value1
        userCardValue03 = 0
        userCardValue04 = 0
        userCardValue05 = 0
        
        totalCardValue = sumOfCards(userCardData01!, card2: userCardData02!)
        
        testLabel.text = "\(totalCardValue)"
        
        dealerCardData01 = randCard()
        dealerCardData02 = randCard()
        dealerCardData03 = nil
        dealerCardData04 = nil
        dealerCardData05 = nil
        
        dealerCard_IV_01.image = dealerCardData01!.img
        dealerCard_IV_02.image = dealerCardData02!.img
        dealerCard_IV_03.image = UIImage(named: "blank")
        dealerCard_IV_04.image = UIImage(named: "blank")
        dealerCard_IV_05.image = UIImage(named: "blank")
        
        dealerCardValue01 = dealerCardData01!.value1
        dealerCardValue02 = dealerCardData02!.value1
        dealerCardValue03 = 0
        dealerCardValue04 = 0
        dealerCardValue05 = 0
        
        dealerCardValue = sumOfCards(dealerCardData01!, card2: dealerCardData02!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomizeDeck()
        
        userCardData01 = randCard()
        userCardData02 = randCard()
        
        userCard01.image = userCardData01!.img
        userCard02.image = userCardData02!.img
        userCardValue01 = userCardData01!.value1
        userCardValue02 = userCardData02!.value1
        
        totalCardValue = sumOfCards(userCardData01!, card2: userCardData02!)
        
        testLabel.text = "\(totalCardValue)"
        
        dealerCardData01 = randCard()
        dealerCardData02 = randCard()
        
        dealerCard_IV_01.image = dealerCardData01!.img
        dealerCard_IV_02.image = dealerCardData02!.img
        dealerCardValue01 = dealerCardData01!.value1
        dealerCardValue02 = dealerCardData02!.value1
        
        dealerCardValue = sumOfCards(dealerCardData01!, card2: dealerCardData02!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hitPressed(sender: AnyObject) {
        
        if hitButtonPresses == 0
        {
            userCardData03 = randCard()
            userCard03.image = userCardData03!.img
            userCardValue03 = userCardData03!.value1
            
            totalCardValue = sumOfCards(userCardData01!, card2: userCardData02!, card3: userCardData03!)
            userCheckOver21(totalCardValue)
    
        }
        
        if hitButtonPresses == 1
        {
            userCardData04 = randCard()
            userCard04.image = userCardData04!.img
            userCardValue04 = userCardData04!.value1
            
            totalCardValue = sumOfCards(userCardData01!, card2: userCardData02!, card3: userCardData03!, card4: userCardData04!)
            userCheckOver21(totalCardValue)
        }
        
        if hitButtonPresses == 2
        {
            userCardData05 = randCard()
            userCard05.image = userCardData05!.img
            userCardValue05 = userCardData05!.value1
            
            totalCardValue = sumOfCards(userCardData01!, card2: userCardData02!, card3: userCardData03!, card4: userCardData04!, card5: userCardData05!)
            userCheckOver21(totalCardValue)
        }
        
        hitButtonPresses += 1
        testLabel.text = "\(totalCardValue)"
    }
    
    @IBAction func standPressed(sender: AnyObject) {
        
        //standButtonPresses = 1
        
        delay(1.0)
        {
            
            if self.dealerCardValue < 17
            {
                self.dealerCardData03 = self.randCard()
                self.dealerCard_IV_03.image = self.dealerCardData03!.img
                self.dealerCardValue03 = self.dealerCardData03!.value1
                self.dealerCardValue = self.sumOfCards(self.dealerCardData01!, card2: self.dealerCardData02!, card3: self.dealerCardData03!)
                self.dealerCheckOver21(self.dealerCardValue)
                
                self.delay(1.0)
                {
                    if self.dealerCardValue < 17 && self.dealerCardData03 != nil   //nil check for extra cards
                    {
                        self.dealerCardData04 = self.randCard()
                        self.dealerCard_IV_04.image = self.dealerCardData04!.img
                        self.dealerCardValue04 = self.dealerCardData04!.value1
                        self.dealerCardValue = self.sumOfCards(self.dealerCardData01!, card2: self.dealerCardData02!, card3: self.dealerCardData03!, card4: self.dealerCardData04!)
                        self.dealerCheckOver21(self.dealerCardValue)
                        
                        self.delay(1.0)
                        {
                            if self.dealerCardValue < 17 && self.dealerCardData03 != nil   //nil check for extra cards
                            {
                                self.dealerCardData05 = self.randCard()
                                self.dealerCard_IV_05.image = self.dealerCardData05!.img
                                self.dealerCardValue05 = self.dealerCardData05!.value1
                                self.dealerCardValue = self.sumOfCards(self.dealerCardData01!, card2: self.dealerCardData02!, card3: self.dealerCardData03!, card4: self.dealerCardData04!, card5: self.dealerCardData05!)
                                self.dealerCheckOver21(self.dealerCardValue)
                            }
                        }
                    }
                }
            }
            
            self.compareCards(self.totalCardValue, dealer: self.dealerCardValue)
        }
    }
}

