using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StateTracking : MonoBehaviour
{
    public void InMenu() {
        GameStates.State = GameState.InMenu;
    }
    public void OutOfMenu()
    {
        GameStates.State = GameState.InGame;
    }
    public void SetStateThenLoadGame(string scene)
    {
        StartCoroutine(LoadScene(scene));
    }
    public IEnumerator LoadScene(string scene) {
        GameStates.UpdateGameState(GameState.InGame);
        yield return new WaitUntil(() => GameStates.State == GameState.InGame);
        SceneManager.LoadScene(scene);
    }
}
