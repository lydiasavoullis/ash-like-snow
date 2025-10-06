using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{

    //https://www.youtube.com/watch?v=4I0vonyqMi8
    public static GameManager Instance;
    public GameState State;
    public MenuState MenuState;
    //https://www.youtube.com/watch?v=j_eQGp-IbCE
    private void Awake()
    {
        Debug.Log(State);
        DontDestroyOnLoad(gameObject);
        if (Instance == null)
        {
            Instance = this;
            return;
        }
        else {
            Destroy(gameObject);   
        }
    }
    

    public void UpdateGameState(GameState newState)
    {
        State = newState;
    }
    public void UpdateMenuState(MenuState newState)
    {
        MenuState = newState;
    }
}

public enum GameState { 
    InMenu,
    InGame
}
/***
 * Any dialogues open on screen
 */
public enum MenuState
{
    TextLogOpen,
    MenuDialogueOpen,
    QuitDialogueOpen,
    NoneOpen
}
