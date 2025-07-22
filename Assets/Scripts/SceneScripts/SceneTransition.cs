using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
//not using this garbage code at the moment
public class SceneTransition : MonoBehaviour
{
    //public Animator animator;
    public string sceneToLoad;

    public void LoadScene(string scene) {
        //SceneManager.LoadScene(scene);
        StartCoroutine(RemoveMusicThenLoadScene(scene));
    }
    public IEnumerator RemoveMusicThenLoadScene(string scene) {
        GameObject audioManager = GameObject.FindGameObjectWithTag("AudioManager");
        GameObject.DestroyImmediate(audioManager);
        yield return new WaitUntil(()=>audioManager==null);
        SceneManager.LoadScene(scene);
    }
    public void Quit()
    {
        Application.Quit();
    }

    //public void FadeToScene(string scene) {
    //    sceneToLoad = scene;
    //    this.gameObject.SetActive(true);
    //    //animator.SetTrigger("FadeOut");
    //   //animator.SetTrigger("FadeIn");
    //}
    //public void OnFadeComplete() {
    //    Debug.Log("LoadScene");
    //    SceneManager.LoadScene(sceneToLoad);
    //    GameVars.dontAdvanceStory = false;
    //}
}
