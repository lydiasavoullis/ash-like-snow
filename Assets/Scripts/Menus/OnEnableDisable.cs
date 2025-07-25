using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnEnableDisable : MonoBehaviour
{
    private void OnEnable()
    {
        GameStates.UpdateGameState(GameState.InMenu);
    }
    private void OnDisable()
    {
        GameStates.UpdateGameState(GameState.InGame);
    }
}
