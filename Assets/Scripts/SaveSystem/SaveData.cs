using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[System.Serializable]
public class SaveData
{
    public string saveState;
    public string currentScene;
    public List<string> currentCharacters;
    public List<string> storyLog;
    public SaveData(DialogueController script) {
        saveState = GameVars.loadedState;//the json string containing the state of the story
        currentScene = GameVars.loadedScene;
        currentCharacters = GameVars.loadedChars;
        storyLog = GameVars.loadedTextLog;
    }
   
}
