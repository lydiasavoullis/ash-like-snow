using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneLoader : MonoBehaviour
{
    public GameObject loadingScreen;
    public Slider loadingBar;
    public GameObject persistantObject;
    public GameObject newPersistantObject;
    bool hasLoaded = false;

    public void LoadScene(string scene) {
        loadingScreen.SetActive(true);
        StartCoroutine(LoadAsynchronously(scene));
        //Debug.Log("***Loaded scene***");
        StartCoroutine(DestroyPersistantObject());
    }
    IEnumerator LoadAsynchronously(string scene) {

        AsyncOperation operation = SceneManager.LoadSceneAsync(scene);
        while (!operation.isDone) {
            float progress = Mathf.Clamp01(operation.progress / .9f);
            loadingBar.value = progress;
            if (progress >= 0.95)
            {
                hasLoaded = true;
            }
            yield return null;
        }
        
        loadingScreen.SetActive(false);
    
        
    }


    public void NewPersistantObject()
    {
        //Debug.Log("Created persistant object");
        Instantiate(newPersistantObject, new Vector3(0, 0, 0), Quaternion.identity);
    }
    IEnumerator DestroyPersistantObject() {
        yield return new WaitUntil(() => hasLoaded);
        hasLoaded = false;
        Destroy(persistantObject);
        
    }
}
