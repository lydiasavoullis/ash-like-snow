using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioController
{
    //GameObject audioManager;
    public AudioController() {
       // this.audioManager = audioManager;
    }
    public void PlaySound(string soundName, GameObject audioManager)
    {
        
        if (soundName == "")
        {
            audioManager.GetComponent<AudioManager>().Stop(GameVars.sfxPlaying);
            GameVars.sfxPlaying = "";
            return;
        }
        else
        {
            GameVars.sfxPlaying = soundName;
            audioManager.GetComponent<AudioManager>().Play(soundName);
            //Debug.Log($"PLAYING SFX: {soundName}");
        }

    }
    public void PlayMusic(string songName, GameObject audioManager)
    {
        if (songName == "" || songName == null)
        {
            return;
        }
        if (GameVars.story.variablesState["music"].ToString() != "none")
        {
            audioManager.GetComponent<AudioManager>().Stop(GameVars.musicPlaying);
            audioManager.GetComponent<AudioManager>().Play(GameVars.story.variablesState["music"].ToString());
            GameVars.musicPlaying = GameVars.story.variablesState["music"].ToString();
        }
        else {
            audioManager.GetComponent<AudioManager>().Stop(GameVars.musicPlaying);
            GameVars.musicPlaying = "none";
        }
        

        //if (songName=="none")//
        //{
        //    audioManager.GetComponent<AudioManager>().Stop(GameVars.musicPlaying);
        //    GameVars.musicPlaying = "none";
        //    return;
        //}

        //if (GameVars.story.variablesState["music"].ToString()!=GameVars.musicPlaying) {
        //    audioManager.GetComponent<AudioManager>().Stop(GameVars.musicPlaying);
        //    GameVars.musicPlaying = GameVars.story.variablesState["music"].ToString();
        //}
        //audioManager.GetComponent<AudioManager>().Play(GameVars.story.variablesState["music"].ToString());

    }
}
