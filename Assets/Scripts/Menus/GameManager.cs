using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{

    //https://www.youtube.com/watch?v=4I0vonyqMi8
    public static GameManager Instance;
    public GameState State;
    private void Awake()
    {
        Instance = this;
    }
    

    // Update is called once per frame
    public void UpdateGameState(GameState newState)
    {
        State = newState;
    }
}

public enum GameState { 
    InMenu,
    InGame
}
