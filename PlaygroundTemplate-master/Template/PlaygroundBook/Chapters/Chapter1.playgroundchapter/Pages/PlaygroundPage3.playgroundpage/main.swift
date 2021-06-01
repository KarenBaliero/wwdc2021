/*:
 # What happened?

 Depending on how we train the model, we may have different results.

 This can happen for several reasons, in this quiz there are some reasons why a machine learning model doesn’t work as expected all the time, can you guess what was the main cause that made our results change this time?

 When you’re done, go to [next page](@next)! 😄
 
 */

//#-hidden-code
import PlaygroundSupport
import SpriteKit
import BookCore

// Load the SKScene from 'GameScene.sks'
let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 768, height: 1024))
if let scene = Main3(fileNamed: "Main3") {
    // Set the scale mode
    scene.scaleMode = .aspectFit
    // Present the scene
    sceneView.presentScene(scene)
}

PlaygroundSupport.PlaygroundPage.current.liveView = sceneView

//The sound effect I used is Creative Commons that can be found at www.soundbible.com by the name “Blop" recorded by Mark DiAngelo.

//#-end-hidden-code
