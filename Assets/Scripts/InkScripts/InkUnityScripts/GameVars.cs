using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
public static class GameVars
{
    public static string loadedState = "";
    public static string loadedScene = "";
    public static List<string> loadedChars = new List<string>();
    public static List<string> loadedTextLog = new List<string>();
    public static bool hasLoadedButtons = false;
    public static bool justLoaded = false;//is this a loaded save or new story
    public static bool dontAdvanceStory = false;//DONT advance the story if our scenes are transitioning!
    public static bool autoMode = false;
    public static Story story;
    public static float delay = 0.01f;
    public static float autoSpeed = 4f;
    public static string sfxPlaying;
    public static string musicPlaying;
    public static string lastFilename;
    public static bool finishedTyping = true;
    public static bool effectJustPlayed = false;
    public static InkList characters;
    public static List<string> variables;// = new List<string>() { "textBoxIsActive", "characters", "currentSpeaker", "music", "sfx" };
    public static int funds;
    public static string currentScene;
    public static void SetAllStoryVariables(string variablesFilePath) {
        string inkFileContents = File.ReadAllText(variablesFilePath);
        Ink.Compiler compiler = new Ink.Compiler(inkFileContents);
        Story variablesStory = compiler.Compile();
        variables = new List<string>();
        foreach (string name in variablesStory.variablesState) {
            variables.Add(name);
        }
    }
    public static void ResetStaticVariables(TextAsset inkJSON)
    {
        dontAdvanceStory = false;
        autoMode = false;
        finishedTyping = true;
        hasLoadedButtons = false;
        story = new Story(inkJSON.text);
        characters = null;
        //loadedChars = new List<string>();
        //loadedTextLog = new List<string>();
        //sfxPlaying="";
        //musicPlaying="";
    }

}
