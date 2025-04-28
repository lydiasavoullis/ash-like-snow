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
    //is it possible to stop song completely or switch song
    public void PlayMusic(string songName, GameObject audioManager)
    {
        if (songName == "" || songName == null)//stop the music that is playing
        {
            audioManager.GetComponent<AudioManager>().Stop(GameVars.musicPlaying);
            GameVars.musicPlaying = "";
            return;
        }
        else if (audioManager.GetComponent<AudioManager>().GetSongsThatArePlaying().Contains(GameVars.story.variablesState["music"].ToString())) //if you trigger this track to play, but it is already playing
        {
            return;
        }
        else if (!audioManager.GetComponent<AudioManager>().GetSongsThatArePlaying().Contains(GameVars.story.variablesState["music"].ToString()) && GameVars.musicPlaying == GameVars.story.variablesState["music"].ToString()) //if it is NOT playing but SHOULD be playing(loaded in from save)
        {
            audioManager.GetComponent<AudioManager>().Play(GameVars.story.variablesState["music"].ToString());
            return;
        }
        else if (GameVars.story.variablesState["music"].ToString() != "" && GameVars.musicPlaying != "")//if this new song should be playing, but a previous song was already playing
        {
            audioManager.GetComponent<AudioManager>().Stop(GameVars.musicPlaying);
            audioManager.GetComponent<AudioManager>().Play(GameVars.story.variablesState["music"].ToString());
            GameVars.musicPlaying = GameVars.story.variablesState["music"].ToString();
            return;
        }
        else if (!audioManager.GetComponent<AudioManager>().GetSongsThatArePlaying().Contains(GameVars.story.variablesState["music"].ToString())) //play a song after no song is playing
        {
            audioManager.GetComponent<AudioManager>().Play(GameVars.story.variablesState["music"].ToString());
            GameVars.musicPlaying = GameVars.story.variablesState["music"].ToString();
            return;
        }
        else {
            return;
        }
        
        
        
        //else if (GameVars.story.variablesState["music"].ToString() == GameVars.musicPlaying) {
        //    return;
        //}

    }
}
