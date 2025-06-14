using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public Sound[] sounds;
    public static AudioManager instance;
    private void Awake()
    {
        //DontDestroyOnLoad(gameObject);
        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
        foreach (Sound s in sounds) {
            s.source = gameObject.AddComponent<AudioSource>();
            s.source.clip = s.clip;
            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;
            s.source.outputAudioMixerGroup = s.group;
        }
    }
    public List<string> GetSongsThatArePlaying()
    {
        List<string> songsPlaying = new List<string>();
        for (int i=0;i<sounds.Length;i++) {
            if (sounds[i].source.isPlaying) {
                songsPlaying.Add(sounds[i].source.name);
            }
        }
        return songsPlaying;

    }
    public void Play(string name)
    {
        //Debug.Log(name);
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null) {
            Debug.Log("Sound: " + name +" not found!");
            return;
        }
        s.source.volume = 1.0f;
        Debug.Log(s.source.name.ToString() + " : " + s.source.volume.ToString());
        s.source.Play();
        //StartCoroutine(StartFade(s.source, 2f, 1f, false));

    }
    public void TypeSound(string name, float maxPitch, float minPitch)
    {
        //Debug.Log(name);
        Sound s = Array.Find(sounds, sound => sound.name == name);
        s.source.pitch = (UnityEngine.Random.Range(minPitch, maxPitch));
        if (s == null)
        {
            Debug.Log("Sound: " + name + " not found!");
            return;
        }
        if (!s.source.isPlaying) {
            //Debug.Log();
            s.source.Play();
        }
        

    }
    public void Stop(string name) {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            //Debug.Log("Sound: " + name + " not found!");
            return;
        }
        //s.source.Stop();
        //StartFadeOut(s.source, 4f, 0f);
        StartCoroutine(StartFade(s.source, 2f, 0.4f));
    }
    public static IEnumerator StartFade(AudioSource audioSource, float duration, float targetVolume)
    {
        Debug.Log("Fade music");
        float currentTime = 0;
        float start = audioSource.volume;

        while (currentTime < duration)
        {
            currentTime += Time.deltaTime;
            audioSource.volume = Mathf.Lerp(start, targetVolume, currentTime / duration);
            yield return null;
        }
        audioSource.Stop();
        audioSource.volume = 1.0f;
        yield break;

        
    }
    //public void StartFadeOut(AudioSource audioSource, float duration, float targetVolume)
    //{
    //    Debug.Log("Fade music");
    //    float currentTime = 0;
    //    float start = audioSource.volume;

    //    while (currentTime < duration)
    //    {
    //        currentTime += Time.deltaTime;
    //        audioSource.volume = Mathf.Lerp(start, targetVolume, currentTime / duration);
    //    }
    //    audioSource.Stop();
    //    //yield return null;
    //}
    

}
