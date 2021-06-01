/*:
 # Train the machine

 For this training machine experience we will train a machine to detect a person in each photo!
   
 The machine will work better if you select more photos of people, so put as many photos as you can!
 
 BE CAREFUL: don't touch the chairs photos or it will confuse the machine!
   
 */

//#-hidden-code
import PlaygroundSupport
import SpriteKit
import BookCore

// Load the SKScene from 'GameScene.sks'
let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 768, height: 1024))
if let scene = Main2(fileNamed: "Main2") {
    // Set the scale mode
    scene.scaleMode = .aspectFit
    // Present the scene
    sceneView.presentScene(scene)
}

PlaygroundSupport.PlaygroundPage.current.liveView = sceneView

//The sound effect I used is Creative Commons that can be found at www.soundbible.com by the name “Blop" recorded by Mark DiAngelo.

//#-end-hidden-code
