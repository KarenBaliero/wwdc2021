

import PlaygroundSupport
import SpriteKit
import AVFoundation

public class Main2: SKScene, SKPhysicsContactDelegate {

    public var acertouTodas = true
    
    public var test1Results : SKSpriteNode!
    public var test2Results : SKSpriteNode!
    public var test3Results : SKSpriteNode!
    public var test4Results : SKSpriteNode!
    public var test5Results : SKSpriteNode!
    public var test6Results : SKSpriteNode!
    public var test7Results : SKSpriteNode!
    
    
    public var background : SKSpriteNode!
    public var person1 : SKSpriteNode!
    public var person2 : SKSpriteNode!
    public var person3 : SKSpriteNode!
    public var person4 : SKSpriteNode!
    public var person5 : SKSpriteNode!
    public var person6 : SKSpriteNode!
    public var person7 : SKSpriteNode!
    public var person8 : SKSpriteNode!
    public var person9 : SKSpriteNode!
    public var person10 : SKSpriteNode!
    public var person11 : SKSpriteNode!
    public var person12 : SKSpriteNode!
    public var person13 : SKSpriteNode!
    public var person14 : SKSpriteNode!
    public var person15 : SKSpriteNode!
    public var person16 : SKSpriteNode!
    public var object1 : SKSpriteNode!
    public var object2 : SKSpriteNode!
    
    
    public var person1Moved = false
    public var person2Moved = false
    public var person3Moved = false
    public var person4Moved = false
    public var person5Moved = false
    public var person6Moved = false
    public var person7Moved = false
    public var person8Moved = false
    public var person9Moved = false
    public var person10Moved = false
    public var person11Moved = false
    public var person12Moved = false
    public var person13Moved = false
    public var person14Moved = false
    public var person15Moved = false
    public var person16Moved = false
    public var object1Moved = false
    public var object2Moved = false
    
    public var test1IsCorrect = false
    public var test2IsCorrect = false
    public var test3IsCorrect = false
    public var test4IsCorrect = false
    public var test5IsCorrect = false
    public var test6IsCorrect = false
    public var test7IsCorrect = true
    
    
    public var test2Right = SKSpriteNode(imageNamed: "check")
    public var test2Wrong = SKSpriteNode(imageNamed: "close")
    public var test3Right = SKSpriteNode(imageNamed: "check")
    public var test3Wrong = SKSpriteNode(imageNamed: "close")
    public var test4Right = SKSpriteNode(imageNamed: "check")
    public var test4Wrong = SKSpriteNode(imageNamed: "close")
    public var test5right = SKSpriteNode(imageNamed: "check")
    public var test5wrong = SKSpriteNode(imageNamed: "close")
    public var test6right = SKSpriteNode(imageNamed: "check")
    public var test6wrong = SKSpriteNode(imageNamed: "close")
    public var test7right = SKSpriteNode(imageNamed: "check")
    public var test7wrong = SKSpriteNode(imageNamed: "close")
    
    public var memojiRight = SKSpriteNode(imageNamed: "Well")
    public var memojiWrong = SKSpriteNode(imageNamed: "Failed")
    
    public var pictures = [SKSpriteNode]()
    public var cards = [Bool]()
    public var testCorrets = [Bool]()
    public var dragging : SKSpriteNode!
    var zTop: CGFloat = 1
    
    override public func didMove(to view: SKView) {
        
        test1Results = childNode(withName: "no1") as? SKSpriteNode
        test2Results = childNode(withName: "no2") as? SKSpriteNode
        test3Results = childNode(withName: "no3") as? SKSpriteNode
        test4Results = childNode(withName: "no4") as? SKSpriteNode
        test5Results = childNode(withName: "no5") as? SKSpriteNode
        test6Results = childNode(withName: "no6") as? SKSpriteNode
        test7Results = childNode(withName: "no7") as? SKSpriteNode
        
        background = childNode(withName: "background") as? SKSpriteNode
        person1 = childNode(withName: "Person1") as? SKSpriteNode
        person2 = childNode(withName: "Person2") as? SKSpriteNode
        person3 = childNode(withName: "Person3") as? SKSpriteNode
        person4 = childNode(withName: "Person4") as? SKSpriteNode
        person5 = childNode(withName: "Person5") as? SKSpriteNode
        person6 = childNode(withName: "Person6") as? SKSpriteNode
        person7 = childNode(withName: "Person7") as? SKSpriteNode
        person8 = childNode(withName: "Person8") as? SKSpriteNode
        person9 = childNode(withName: "Person9") as? SKSpriteNode
        person10 = childNode(withName: "Person10") as? SKSpriteNode
        person11 = childNode(withName: "Person11") as? SKSpriteNode
        person12 = childNode(withName: "Person12") as? SKSpriteNode
        person13 = childNode(withName: "Person13") as? SKSpriteNode
        person14 = childNode(withName: "Person14") as? SKSpriteNode
        person15 = childNode(withName: "Person15") as? SKSpriteNode
        person16 = childNode(withName: "Person16") as? SKSpriteNode
        object1 = childNode(withName: "object1") as? SKSpriteNode
        object2 = childNode(withName: "object2") as? SKSpriteNode
        
       
        
        pictures.append(person1)
        pictures.append(person2)
        pictures.append(person3)
        pictures.append(person4)
        pictures.append(person5)
        pictures.append(person6)
        pictures.append(person7)
        pictures.append(person8)
        pictures.append(person9)
        pictures.append(person10)
        pictures.append(person11)
        pictures.append(person12)
        pictures.append(person13)
        pictures.append(person14)
        pictures.append(person15)
        pictures.append(person16)
        pictures.append(object1)
        pictures.append(object2)
        
        cards.append(person1Moved)
        cards.append(person2Moved)
        cards.append(person3Moved)
        cards.append(person4Moved)
        cards.append(person5Moved)
        cards.append(person6Moved)
        cards.append(person7Moved)
        cards.append(person8Moved)
        cards.append(person9Moved)
        cards.append(person10Moved)
        cards.append(person11Moved)
        cards.append(person12Moved)
        cards.append(person13Moved)
        cards.append(person14Moved)
        cards.append(person15Moved)
        cards.append(person16Moved)
        cards.append(object1Moved)
        cards.append(object2Moved)
        
        testCorrets.append(test1IsCorrect)
        testCorrets.append(test2IsCorrect)
        testCorrets.append(test3IsCorrect)
        testCorrets.append(test4IsCorrect)
        testCorrets.append(test5IsCorrect)
        testCorrets.append(test6IsCorrect)
        testCorrets.append(test7IsCorrect)
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { timer in

            for i in 0...6 {
                if(self.testCorrets[i] == false){
                    self.acertouTodas = false
                }
            }
            
            if(self.acertouTodas){
                self.memojiRight.position = CGPoint(x: 0, y: 160)
                self.addChild(self.memojiRight)
                PlaygroundPage.current.assessmentStatus = .pass(message: "Congratulations! When you are ready to go to the [next page](@next)!")
            }else{
                self.memojiWrong.position = CGPoint(x: 0, y: 160)
                self.addChild(self.memojiWrong)
                PlaygroundPage.current.assessmentStatus = .pass(message: "Maybe you selected an object or didn’t put enough people in training. Now go to the [next page](@next)!")
            }
            
            
        }
    
        
    }

    
    @objc public static override var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        for i in 0...17 {
            if pictures[i].contains(pos){
                dragging = pictures[i]
                pictures[i].zPosition = zTop
                zTop += 1
                cards[i] = true
                if (i==1){
                    test1Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[0] = true
                }else if (i==15 || i==12){
                    test2Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[1] = true
                } else if(i==0 || i==7 || i==12){
                    test3Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[2] = true
                }else if(i == 6 || i == 8 || i == 9 || i == 13){
                    test4Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[3] = true
                }else if(i == 5 || i == 11){
                    test5Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[4] = true
                }else if(i == 10 || i == 14){
                    test6Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[5] = true
                }else if(i == 16 || i == 17){
                    test7Results.texture = SKTexture(imageNamed: "check")
                    testCorrets[6] = false
                }
            }
        }
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if dragging != nil {
            dragging.position = pos
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if dragging != nil {
            dragging.setScale(0.5)
            dragging = nil
        }
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchDown(atPoint: t.location(in: self)) }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchMoved(toPoint: t.location(in: self)) }
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
        
    }
    
    override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }
    
    override public func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
