//
//  Character.swift
//  KSwift
//
//  Created by Adam Roth on 6/5/14.
//  Copyright (c) 2014 Adam Roth, Inc. All rights reserved.
//

import Foundation
import SpriteKit

class CharacterAnimation {
    var name: String
    var type: String
    var frames: Array<SKTexture>
    var playback: NSTimeInterval
    
    init( name:String, type:String, frames:Array<SKTexture>, playback:NSTimeInterval ){
        self.name = name;
        self.type = type;
        self.frames = frames;
        self.playback = playback;
    }
}

class Character : SKNode {
    let sm = StateMachine()
    var anims: Dictionary<String, CharacterAnimation>
    var sprite: SKSpriteNode
    var currentAnim: CharacterAnimation?
    
    init() {
        self.anims = Dictionary<String, CharacterAnimation>()
        self.sprite = SKSpriteNode();
        super.init();
    }
}