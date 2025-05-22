using System;
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
    public TextAsset inkJSON;
    public SaveController saveController;
    public GameObject audioManager;
    public Button continueGameButton;
    public TextMeshProUGUI errorMessage;

    void Start()
    {
        Debug.Log("Game state: " + GameStates.State);
        saveController = new SaveController();
        saveController.PopulateScrollList(saveSlot, scrollList, inkJSON, optionsMenu);
        if (SceneManager.GetActiveScene().name == "MainMenuAlt") {
            SetupContinueGameButton();
        }
        
    }
    public void SetupContinueGameButton() {
        string savesExist = saveController.SavesExist();
        if (savesExist == "false")
        {
            return;
        }
        else {
            continueGameButton.gameObject.SetActive(true);
            continueGameButton.onClick.AddListener(delegate {
                try {
                    saveController.LoadStory(savesExist, inkJSON, optionsMenu);
                }
                catch (Exception e) {
                    errorMessage.gameObject.SetActive(true);
                    errorMessage.text = "Couldn't Load Save!";
                }
                

            });
        }
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
        //GameManager.Instance.State = GameState.InMenu;
    }
    /// <summary>
    /// Set saves object inactive
    /// </summary>
    public void LoadOutOfSaves() {
        saveSlotMenu.SetActive(false);
        GameStates.State = GameState.InGame;
    }

    /// <summary>
    /// Yet to implement an options menu
    /// </summary>
    public void LoadOptions()
    {
        optionsMenu.SetActive(true);
        GameStates.State = GameState.InMenu;
    }
    public void LoadOutOfOptions()
    {
        optionsMenu.SetActive(false);
        GameStates.State = GameState.InGame;
    }
    public void DoYouWantToQuitActive() {
        quitMenu.SetActive(true);
        GameStates.State = GameState.InMenu;
    }
    public void DoYouWantToQuitNotActive()
    {
        quitMenu.SetActive(false);
        GameStates.State = GameState.InGame;
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
