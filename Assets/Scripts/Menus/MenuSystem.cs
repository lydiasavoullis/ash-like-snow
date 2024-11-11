using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MenuSystem : MonoBehaviour
{
    public Button saveSlot;
    public GameObject scrollList;
    public GameObject saveSlotMenu;
    public GameObject optionsMenu;
    public GameObject quitMenu;
    public GameObject sceneLoader;
    public GameObject textLog;
    public GameObject persistantObject;
    public TextAsset inkJSON;
    public SaveController saveController;
    public GameObject audioManager;

    void Start()
    {
        saveController = new SaveController();
        saveController.PopulateScrollList(saveSlot, scrollList, inkJSON, optionsMenu);

    }
    public void ResetGameVars() {
        GameVars.ResetStaticVariables(inkJSON);
    }
    public void PlayClickSound() {

        //FindObjectOfType<AudioManager>().Play("click");
        audioManager.GetComponent<AudioManager>().Play("click");
    }
    public void PlayHoverSound()
    {
        //FindObjectOfType<AudioManager>().Play("hover");
        audioManager.GetComponent<AudioManager>().Play("hover");
    }
    /// <summary>
    /// Set saves object active
    /// </summary>
    public void LoadSaves()
    {
        saveSlotMenu.SetActive(true);
        GameVars.dontAdvanceStory = true;
    }
    /// <summary>
    /// Set saves object inactive
    /// </summary>
    public void LoadOutOfSaves() {
        saveSlotMenu.SetActive(false);
        GameVars.dontAdvanceStory = false;
    }

    /// <summary>
    /// Yet to implement an options menu
    /// </summary>
    public void LoadOptions()
    {
        optionsMenu.SetActive(true);
        GameVars.dontAdvanceStory = true;
    }
    public void LoadOutOfOptions()
    {
        optionsMenu.SetActive(false);
        GameVars.dontAdvanceStory = false;
    }
    public void DoYouWantToQuitActive() {
        quitMenu.SetActive(true);
        GameVars.dontAdvanceStory = true;
    }
    public void DoYouWantToQuitNotActive()
    {
        quitMenu.SetActive(false);
        GameVars.dontAdvanceStory = false;
    }
    /// <summary>
    /// Close application
    /// </summary>
    public void Quit()
    {
        Application.Quit();
    }
    /// <summary>
    /// Load menu scene
    /// </summary>
    public void LoadMenu()
    {
        GameVars.justLoaded = false;
        SceneManager.LoadScene("MainMenuAlt");//menu scene name
        
    }
    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);

    }

}
