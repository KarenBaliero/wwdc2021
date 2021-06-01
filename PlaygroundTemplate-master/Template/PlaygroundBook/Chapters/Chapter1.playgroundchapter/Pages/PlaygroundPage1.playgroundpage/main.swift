/*:
 # Dangerous Technologies
 
 WWDC2021 Submission for Swift Student Challenge

# Credits

 **Author:** Karen Baliero
 * Check Icon- designed by Pixel perfect from Flaticon
 * Close Icon - designed by Pixel perfect from Flaticon
 * Loading Icon - designed by Freepik from Flaticon
 * Right drawn arrow - designed by Freepik from Flaticon
 * Steps Circles Page1 - Designed by macrovector / Freepik
 * People, Photos, Chairs, Newspaper andMachine - Illustration by Freepik Storyset
 * Avatar Images - Memoji™ by Apple®
 * Other Images made by Karen Baliero using Figma®
 * Template of Books from @dudamello: https://github.com/dudamello/PlaygroundTemplate
 * Fonts: SF Pro Text SF Pro Display
 * Definitions found on: https://dictionary.cambridge.org/us/dictionary/english/bias
*/


//#-hidden-code
import PlaygroundSupport
import SpriteKit
import BookCore
// Load the SKScene from 'GameScene.sks'
let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 768, height: 1024))
if let scene = Main1(fileNamed: "Main1") {
    // Set the scale mode
    scene.scaleMode = .aspectFit
    // Present the scene
    sceneView.presentScene(scene)
}

PlaygroundSupport.PlaygroundPage.current.liveView = sceneView
//#-end-hidden-code
