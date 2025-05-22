using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class GameStates
{
    public static GameState State;
    public static void UpdateGameState(GameState newState)
    {
        State = newState;
    }
}
