//
//  Killian.swift
//  KSwift
//
//  Created by Adam Roth on 6/7/14.
//  Copyright (c) 2014 Adam Roth, Inc. All rights reserved.
//

import SpriteKit

class Killian : Character {
    
    var atlas: SKTextureAtlas
    var wantsSit: Bool
    var wantsLay: Bool
    
    init(){
        
        atlas = SKTextureAtlas(named: "killian")
        wantsSit = false;
        wantsLay = false;
        
        super.init()
        
        self.sm.setEntity(self)

        //
        // Walking
        //
        
        var frames = Array<SKTexture>();
        //frames += self.atlas.textureNamed("output-0.png") // blink frame
        frames += self.atlas.textureNamed("output-1.png")
        frames += self.atlas.textureNamed("output-2.png")
        frames += self.atlas.textureNamed("output-3.png")
        frames += self.atlas.textureNamed("output-4.png")
        frames += self.atlas.textureNamed("output-5.png")
        frames += self.atlas.textureNamed("output-6.png")
        frames += self.atlas.textureNamed("output-7.png")
        frames += self.atlas.textureNamed("output-8.png")
        frames += self.atlas.textureNamed("output-9.png")
        frames += self.atlas.textureNamed("output-10.png")
        frames += self.atlas.textureNamed("output-11.png")
        frames += self.atlas.textureNamed("output-12.png")
        
        
        var anim = CharacterAnimation(name: "walking", type: "state", frames: frames, playback: 0.065)
        self.anims["walking"] = anim;
        
        //
        // Sitting
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-21.png")
        frames += self.atlas.textureNamed("output-22.png")
        frames += self.atlas.textureNamed("output-23.png")
        frames += self.atlas.textureNamed("output-24.png")
        frames += self.atlas.textureNamed("output-25.png")
        frames += self.atlas.textureNamed("output-26.png")
        frames += self.atlas.textureNamed("output-27.png")
        
        anim = CharacterAnimation(name: "sitting", type: "state", frames: frames, playback: 0.07)
        self.anims["sitting"] = anim;
        
        //
        // Laying
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-97.png")
        frames += self.atlas.textureNamed("output-98.png")
        frames += self.atlas.textureNamed("output-99.png")
        frames += self.atlas.textureNamed("output-98.png")
        
        anim = CharacterAnimation(name: "laying", type: "state", frames: frames, playback: 0.12)
        self.anims["laying"] = anim;
        
        //
        // Sleeping
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-114.png")
        frames += self.atlas.textureNamed("output-115.png")
        frames += self.atlas.textureNamed("output-116.png")
        frames += self.atlas.textureNamed("output-117.png")
        frames += self.atlas.textureNamed("output-118.png")
        frames += self.atlas.textureNamed("output-119.png")
        frames += self.atlas.textureNamed("output-120.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-121.png")
        frames += self.atlas.textureNamed("output-120.png")
        frames += self.atlas.textureNamed("output-120.png")
        frames += self.atlas.textureNamed("output-119.png")
        frames += self.atlas.textureNamed("output-118.png")
        frames += self.atlas.textureNamed("output-117.png")
        frames += self.atlas.textureNamed("output-116.png")
        frames += self.atlas.textureNamed("output-115.png")
        frames += self.atlas.textureNamed("output-114.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-113.png")

        anim = CharacterAnimation(name: "sleeping", type: "state", frames: frames, playback: 0.10)
        self.anims["sleeping"] = anim;
        
        //
        // Walking To Sitting
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-14.png")
        frames += self.atlas.textureNamed("output-15.png")
        frames += self.atlas.textureNamed("output-16.png")
        frames += self.atlas.textureNamed("output-17.png")
        frames += self.atlas.textureNamed("output-18.png")
        frames += self.atlas.textureNamed("output-19.png")
        frames += self.atlas.textureNamed("output-20.png")
        
        anim = CharacterAnimation(name: "walking_to_sitting", type: "transition", frames: frames, playback: 0.025)
        self.anims["walking_to_sitting"] = anim;
        
        //
        // Sitting To Walking
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-20.png")
        frames += self.atlas.textureNamed("output-19.png")
        frames += self.atlas.textureNamed("output-18.png")
        frames += self.atlas.textureNamed("output-17.png")
        frames += self.atlas.textureNamed("output-16.png")
        frames += self.atlas.textureNamed("output-15.png")
        frames += self.atlas.textureNamed("output-14.png")
        
        anim = CharacterAnimation(name: "sitting_to_walking", type: "transition", frames: frames, playback: 0.025)
        self.anims["sitting_to_walking"] = anim;
        
        //
        // Sitting To Laying
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-89.png")
        frames += self.atlas.textureNamed("output-90.png")
        frames += self.atlas.textureNamed("output-91.png")
        frames += self.atlas.textureNamed("output-92.png")
        frames += self.atlas.textureNamed("output-93.png")
        frames += self.atlas.textureNamed("output-94.png")
        frames += self.atlas.textureNamed("output-95.png")
        frames += self.atlas.textureNamed("output-96.png")
        frames += self.atlas.textureNamed("output-98.png")
        frames += self.atlas.textureNamed("output-98.png")
        frames += self.atlas.textureNamed("output-98.png")
        frames += self.atlas.textureNamed("output-98.png")
        frames += self.atlas.textureNamed("output-98.png")

        anim = CharacterAnimation(name: "sitting_to_laying", type: "transition", frames: frames, playback: 0.035)
        self.anims["sitting_to_laying"] = anim;
        
        //
        // Laying to Sitting
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-96.png")
        frames += self.atlas.textureNamed("output-95.png")
        frames += self.atlas.textureNamed("output-94.png")
        frames += self.atlas.textureNamed("output-93.png")
        frames += self.atlas.textureNamed("output-92.png")
        frames += self.atlas.textureNamed("output-91.png")
        frames += self.atlas.textureNamed("output-90.png")
        frames += self.atlas.textureNamed("output-89.png")
        frames += self.atlas.textureNamed("output-88.png")
        frames += self.atlas.textureNamed("output-88.png")
        frames += self.atlas.textureNamed("output-88.png")
        frames += self.atlas.textureNamed("output-88.png")
        frames += self.atlas.textureNamed("output-88.png")
        frames += self.atlas.textureNamed("output-88.png")
        frames += self.atlas.textureNamed("output-88.png")
        
        anim = CharacterAnimation(name: "laying_to_sitting", type: "transition", frames: frames, playback: 0.030)
        self.anims["laying_to_sitting"] = anim;
        
        //
        // Laying to Sleeping
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-102.png")
        frames += self.atlas.textureNamed("output-103.png")
        frames += self.atlas.textureNamed("output-104.png")
        frames += self.atlas.textureNamed("output-105.png")
        frames += self.atlas.textureNamed("output-106.png")
        frames += self.atlas.textureNamed("output-107.png")
        frames += self.atlas.textureNamed("output-108.png")
        frames += self.atlas.textureNamed("output-109.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-110.png")
        
        anim = CharacterAnimation(name: "laying_to_sitting", type: "transition", frames: frames, playback: 0.030)
        self.anims["laying_to_sleeping"] = anim;
        
        //
        // Sleeping to Laying
        //
        
        frames = Array<SKTexture>();
        frames += self.atlas.textureNamed("output-113.png")
        frames += self.atlas.textureNamed("output-110.png")
        frames += self.atlas.textureNamed("output-109.png")
        frames += self.atlas.textureNamed("output-108.png")
        frames += self.atlas.textureNamed("output-107.png")
        frames += self.atlas.textureNamed("output-106.png")
        frames += self.atlas.textureNamed("output-105.png")
        frames += self.atlas.textureNamed("output-104.png")
        frames += self.atlas.textureNamed("output-103.png")
        frames += self.atlas.textureNamed("output-102.png")
        frames += self.atlas.textureNamed("output-100.png")
        frames += self.atlas.textureNamed("output-99.png")
        frames += self.atlas.textureNamed("output-98.png")
        frames += self.atlas.textureNamed("output-97.png")
        frames += self.atlas.textureNamed("output-97.png")
        frames += self.atlas.textureNamed("output-97.png")
        frames += self.atlas.textureNamed("output-97.png")
        frames += self.atlas.textureNamed("output-97.png")
        frames += self.atlas.textureNamed("output-97.png")
        
        anim = CharacterAnimation(name: "sleeping_to_laying", type: "transition", frames: frames, playback: 0.030)
        self.anims["sleeping_to_laying"] = anim;
        
        //
        // Initial Sprite Setup
        //
        var initialFrame = self.anims["walking"]?.frames[0];
        self.sprite = SKSpriteNode(texture: initialFrame);
        self.sprite.xScale = 1.0
        self.sprite.yScale = 1.0
        
        //
        // States
        //
        
        self.sm.addState("walking",
            enter: {},
            update: {},
            exit: {})
        
        self.sm.addState("sitting",
            enter: {},
            update: {},
            exit: { self.wantsSit = false })
        
        self.sm.addState("laying",
            enter: { self.wantsSit = false },
            update: {},
            exit: { self.wantsLay = false })
        
        self.sm.addState("sleeping",
            enter: {},
            update: {},
            exit: {})
        
        //
        // Transitions
        //
        self.sm.addTransition("walking_to_sitting", fromState: "walking", toState: "sitting", predicate: {
            return self.wantsSit == true;
        })
        
        self.sm.addTransition("sitting_to_walking", fromState: "sitting", toState: "walking", predicate: {
            return self.wantsSit == false;
        })
    
        self.sm.addTransition("sitting_to_laying", fromState: "sitting", toState: "laying", predicate: {
            return self.sm.duration() > 3.0
        })

        self.sm.addTransition("laying_to_sitting", fromState: "laying", toState: "sitting", predicate: {
            return self.wantsSit == true;
        })

        self.sm.addTransition("laying_to_sleeping", fromState: "laying", toState: "sleeping", predicate: {
            return self.sm.duration() > 3.0
        })

        self.sm.addTransition("sleeping_to_laying", fromState: "sleeping", toState: "laying", predicate: {
            return self.wantsLay == true;
        })
 
    }
    
    
    func setPos( point: CGPoint ){
        self.sprite.position = point;
    }
    
}
