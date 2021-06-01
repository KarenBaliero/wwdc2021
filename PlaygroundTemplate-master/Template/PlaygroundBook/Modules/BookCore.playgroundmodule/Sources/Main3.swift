
import Foundation
import PlaygroundSupport
import SpriteKit

public class Main3 : SKScene {
    public var background : SKSpriteNode!
    public var quizA : SKSpriteNode!
    public var quizB : SKSpriteNode!
    public var quizC : SKSpriteNode!
    public var quizD : SKSpriteNode!
    public var quizE : SKSpriteNode!
    public var submit : SKSpriteNode!
    
    
    public var quizARight = SKSpriteNode(imageNamed: "check")
    public var quizAWrong = SKSpriteNode(imageNamed: "close")
    public var quizBRight = SKSpriteNode(imageNamed: "check")
    public var quizBWrong = SKSpriteNode(imageNamed: "close")
    public var quizCRight = SKSpriteNode(imageNamed: "check")
    public var quizCWrong = SKSpriteNode(imageNamed: "close")
    public var quizDRight = SKSpriteNode(imageNamed: "check")
    public var quizDWrong = SKSpriteNode(imageNamed: "close")
    public var quizEright = SKSpriteNode(imageNamed: "check")
    public var quizEwrong = SKSpriteNode(imageNamed: "close")
    
    public var memojiRight = SKSpriteNode(imageNamed: "memojiRight")
    public var memojiWrong = SKSpriteNode(imageNamed: "memojiwhat")
    
    public var quizAClicked = false
    public var quizBClicked = false
    public var quizCClicked = false
    public var quizDClicked = false
    public var quizEClicked = false
    public var submitClicked = false
    
    override public func didMove(to view: SKView) {
        background = childNode(withName: "background") as? SKSpriteNode
        quizA = childNode(withName: "QuizA") as? SKSpriteNode
        quizB = childNode(withName: "QuizB") as? SKSpriteNode
        quizC = childNode(withName: "QuizC") as? SKSpriteNode
        quizD = childNode(withName: "QuizD") as? SKSpriteNode
        quizE = childNode(withName: "QuizE") as? SKSpriteNode
        submit = childNode(withName: "submit") as? SKSpriteNode
        
    }

    func touchDown(atPoint pos : CGPoint) {
        if quizA.contains(pos) && !submitClicked {
            if !quizAClicked {
                quizA.texture = SKTexture(imageNamed: "QuizASelected")
                quizAClicked = true
                quizB.texture = SKTexture(imageNamed: "QuizB")
                quizBClicked = false
                quizC.texture = SKTexture(imageNamed: "QuizC")
                quizCClicked = false
                quizD.texture = SKTexture(imageNamed: "QuizD")
                quizDClicked = false
                quizE.texture = SKTexture(imageNamed: "QuizE")
                quizEClicked = false
            } else {
                quizA.texture = SKTexture(imageNamed: "QuizA")
                quizAClicked = false
            }
        }
        
        if quizB.contains(pos) && !submitClicked {
            if !quizBClicked {
                quizB.texture = SKTexture(imageNamed: "QuizBSelected")
                quizBClicked = true
                
                quizA.texture = SKTexture(imageNamed: "QuizA")
                quizAClicked = false
                quizC.texture = SKTexture(imageNamed: "QuizC")
                quizCClicked = false
                quizD.texture = SKTexture(imageNamed: "QuizD")
                quizDClicked = false
                quizE.texture = SKTexture(imageNamed: "QuizE")
                quizEClicked = false
            } else {
                quizB.texture = SKTexture(imageNamed: "QuizB")
                quizBClicked = false
            }
        }
        
        if quizC.contains(pos) && !submitClicked {
            if !quizCClicked {
                quizC.texture = SKTexture(imageNamed: "QuizCSelected")
                quizCClicked = true
                
                quizA.texture = SKTexture(imageNamed: "QuizA")
                quizAClicked = false
                quizB.texture = SKTexture(imageNamed: "QuizB")
                quizBClicked = false
                quizD.texture = SKTexture(imageNamed: "QuizD")
                quizDClicked = false
                quizE.texture = SKTexture(imageNamed: "QuizE")
                quizEClicked = false
            } else {
                quizC.texture = SKTexture(imageNamed: "QuizC")
                quizCClicked = false
            }
        }
        
        if quizD.contains(pos) && !submitClicked {
            if !quizDClicked {
                quizD.texture = SKTexture(imageNamed: "QuizDSelected")
                quizDClicked = true
                
                quizA.texture = SKTexture(imageNamed: "QuizA")
                quizAClicked = false
                quizB.texture = SKTexture(imageNamed: "QuizB")
                quizBClicked = false
                quizC.texture = SKTexture(imageNamed: "QuizC")
                quizCClicked = false
                quizE.texture = SKTexture(imageNamed: "QuizE")
                quizEClicked = false
            } else {
                quizD.texture = SKTexture(imageNamed: "QuizD")
                quizDClicked = false
            }
        }
        
        if quizE.contains(pos) && !submitClicked {
            if !quizEClicked {
                quizE.texture = SKTexture(imageNamed: "QuizESelected")
                quizEClicked = true
                
                quizA.texture = SKTexture(imageNamed: "QuizA")
                quizAClicked = false
                quizB.texture = SKTexture(imageNamed: "QuizB")
                quizBClicked = false
                quizC.texture = SKTexture(imageNamed: "QuizC")
                quizCClicked = false
                quizD.texture = SKTexture(imageNamed: "QuizD")
                quizDClicked = false
                
            } else {
                quizE.texture = SKTexture(imageNamed: "QuizE")
                quizEClicked = false
            }
        }
        
        if submit.contains(pos) && submitClicked == false {
            submitClicked = true
            if quizAClicked {
                quizAWrong.position = CGPoint(x: -275, y: 160)
                self.addChild(quizAWrong)
            }
            
            if quizBClicked {
                quizBWrong.position = CGPoint(x: -275, y: 75)
                self.addChild(quizBWrong)
            }
            
            if quizCClicked {
                quizCWrong.position = CGPoint(x: -275, y: -10)
                self.addChild(quizCWrong)
                
            }
            
            quizDRight.position = CGPoint(x: -275, y: -95)
            self.addChild(quizDRight)
            
            if quizEClicked {
                quizEwrong.position = CGPoint(x: -275, y: -180)
                self.addChild(quizEwrong)
            }
            
            if(quizDClicked){
                memojiRight.position = CGPoint(x: 180, y: -300)
                self.addChild(memojiRight)
                PlaygroundPage.current.assessmentStatus = .pass(message: "Congratulations! Let's learn more about it [next page](@next)!")
                
            }else{
                
                memojiWrong.position = CGPoint(x: 180, y: -300)
                self.addChild(memojiWrong)
                PlaygroundPage.current.assessmentStatus = .pass(message: "Wrong Answer! But no problem let's learn more about in on the [next page](@next)!")
            }
                
        }
        
    }

    func touchMoved(toPoint pos : CGPoint) {
    }

    func touchUp(atPoint pos : CGPoint) {
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
