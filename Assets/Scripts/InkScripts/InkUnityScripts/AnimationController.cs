using Ink.Runtime;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class AnimationController
{
    public void PlayAnimation(string character, string animation, GameObject stage)
    {
        
        for (int i = 0; i < stage.transform.childCount; i++)
        {
            if (stage.transform.GetChild(i).name.ToLower() == character.ToLower())
            {
                
                Transform characterSprite = stage.transform.GetChild(i).GetChild(0);
                characterSprite.GetComponent<Animator>().SetTrigger(animation);//.Play(animation);
                //AnimationClip[] clips = characterSprite.GetComponent<Animator>().runtimeAnimatorController.animationClips;
                //Debug.Log("Played: " + animation);
                //foreach (AnimationClip c in clips) {
                //    Debug.Log("clip: " + c);
                //}
                break;
            }
        }
        

        

    }



}