//
//  GameScene.swift
//  KSwift
//
//  Created by Adam Roth on 6/4/14.
//  Copyright (c) 2014 Adam Roth, Inc. All rights reserved.
//

import SpriteKit

let killian = Killian()


class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 35;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        // Killy

        killian.setPos( CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame ) ) );
        self.addChild( killian.sprite );
        
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        /* Called when a touch begins */
        for touch: AnyObject in touches {
            if( killian.currentAnim?.name == "walking_to_sitting" ||
                killian.currentAnim?.name == "sitting_to_walking" ){
                    NSLog("[ERROR] Transition in progress, cannot force another animation.");
                    return;
            }
            
            
            if( killian.sm.currentState == "walking" || killian.sm.currentState == "laying" ){
                killian.wantsSit = true;
            } else if( killian.sm.currentState == "sleeping"){
                killian.wantsLay = true;
            }else{
                killian.wantsSit = false;
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        killian.sm.update();
        
        // update state label
        var label:SKLabelNode = self.childNodeWithName("testLabel") as SKLabelNode
        label.position = CGPointMake( killian.position.x + killian.sprite.size.width + 65, killian.position.y + 170 )
        label.text = "state: \(killian.sm.currentState)"
        
    }
}
