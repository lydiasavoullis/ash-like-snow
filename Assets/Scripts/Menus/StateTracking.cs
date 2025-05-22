using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StateTracking : MonoBehaviour
{
    public void InMenu() {
        GameManager.Instance.State = GameState.InMenu;
    }
    public void OutOfMenu()
    {
        GameManager.Instance.State = GameState.InGame;
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
