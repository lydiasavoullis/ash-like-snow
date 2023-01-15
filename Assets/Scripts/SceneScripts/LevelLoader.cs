using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class LevelLoader : MonoBehaviour
{
    public Animator transition;
    public float triggerTime = 1f;

    public void LoadNextLevel(string sceneName) {
        //Debug.Log("Loaded next scene");
        StartCoroutine(LoadLevel(sceneName));
    }
    public IEnumerator LoadLevel(string levelName) {
        transition.SetTrigger("Start");
        yield return new WaitForSeconds(triggerTime);
        SceneManager.LoadScene(levelName);
        GameVars.dontAdvanceStory = false;
    }
}
