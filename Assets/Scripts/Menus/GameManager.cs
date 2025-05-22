using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{

    //https://www.youtube.com/watch?v=4I0vonyqMi8
    public static GameManager Instance;
    public GameState State;
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
