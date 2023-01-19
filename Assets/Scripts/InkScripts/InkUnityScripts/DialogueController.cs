using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;
//using Ink.UnityIntegration;
using System.IO;
using System.Threading;
using UnityEngine.InputSystem;
using System;

public class DialogueController : MonoBehaviour
{

    #region prefabs
    [SerializeField]
    Button buttonPrefab;
    [SerializeField]
    Button saveSlot;
    #endregion
    //objects(objects this script interacts with)
    #region Interactable Objects
    [SerializeField]
    GameObject tvScreen;
    [SerializeField]
    TextMeshProUGUI newsText;
    [SerializeField]
    TextMeshProUGUI storyText;
    [SerializeField]
    GameObject nameTag;
    [SerializeField]
    GameObject quitDialogue;
    [SerializeField]
    GameObject textLogBox;
    [SerializeField]
    GameObject textLogList;
    [SerializeField]
    GameObject backgroundDialogueBox;
    [SerializeField]
    GameObject stage;
    [SerializeField]
    GameObject characterBox;
    [SerializeField]
    GameObject menuSystem;
    [SerializeField]
    GameObject audioManager;
    [SerializeField]
    GameObject mainCamera;
    [SerializeField]
    GameObject loadingScreen;
    [SerializeField]
    GameObject scrollList;
    [SerializeField]
    GameObject saveMenu;//if active we don't want to advance the story
    [SerializeField]
    GameObject optionsMenu;//if active we don't want to advance the story
    [SerializeField]

    #endregion
    #region controllers
    //public bool effectJustPlayed = false;
    TextLogController textLogControl = new TextLogController();
    CharacterController characterControl = new CharacterController();
    AudioController audioControl = new AudioController();//audioManager
    SaveController saveControl = new SaveController();
    UIController uIControl = new UIController();
    #endregion
    #region Ink libraries
    public TextAsset inkJSON;

    //public InkFile storyVariables;

    #endregion
    void Start()
    {
        GameVars.finishedTyping = true;
        try
        {
            //GameVars.story.BindExternalFunction("ChangeCharacter", (string charName) => characterControl.LoadCharacterSpriteType(charName, stage, characterBox));
            //GameVars.story.BindExternalFunction("AddCharacter", (string charName, string charType) => characterControl.LoadCharacterSprite(charName, charType, this.stage, characterBox));
            GameVars.story.BindExternalFunction("ChangeSprite", (string charName, string charType) => characterControl.ChangeCharacterSprite(charName, charType, this.stage));
            GameVars.story.BindExternalFunction("RemoveCharacter", (string charName) => characterControl.RemoveCharacter(charName, this.stage));
            GameVars.story.BindExternalFunction("GoToGameScene", (string gameScene, string currentScene) => GoToGameScene(gameScene, currentScene));
        }
        catch (Exception e)
        {
            Debug.Log("tried to bind function twice " + e);
        }
        //if (storyVariables != null) {
        //    GameVars.SetAllStoryVariables(storyVariables.filePath);
        //}
        saveControl.PopulateScrollList(saveSlot, scrollList, inkJSON, optionsMenu);
    }


    private void Update()
    {
        if (Keyboard.current.fKey.wasPressedThisFrame)
        {

            if (!GameVars.autoMode && !GameVars.dontAdvanceStory)
            {
                StartCoroutine(FastForward());
            }
            else
            {
                GameVars.autoMode = false;
            }
        }
        if (Mouse.current.rightButton.wasPressedThisFrame && GameVars.finishedTyping && SceneManager.GetActiveScene().name != "MainMenu" && !GameVars.dontAdvanceStory)//Input.GetMouseButtonDown(1)
        {
            KeepLoadingStory();
        }
        else if (Input.GetMouseButtonDown(1))
        {
            //Debug.Log("don't advance Story: " + GameVars.dontAdvanceStory);
        }

    }
    private void OnLevelWasLoaded(int level)
    {
        //GameVars.story.UnbindExternalFunction("AddCharacter");
        //GameVars.story.UnbindExternalFunction("ChangeSprite");
        //GameVars.story.UnbindExternalFunction("RemoveCharacter");
        characterControl.RefreshCharacters((InkList)GameVars.story.variablesState["characters"], stage, characterBox);
        uIControl.SetDialogueBoxActive((string)GameVars.story.variablesState["textBoxIsActive"], backgroundDialogueBox);
        uIControl.SetNameTag((string)GameVars.story.variablesState["currentSpeaker"], nameTag);
        textLogControl.LoadTextLogContent(textLogList, textLogBox);//load text log

    }

    public void KeepLoadingStory()
    {
        HasEffectJustPlayed();
        string varScene = GameVars.story.variablesState["scene"].ToString();
        if (GameVars.story.variablesState["effectName"].ToString() != "")
        {
            storyText.text = "";
            PlayEffect(GameVars.story.variablesState["effectName"].ToString(), backgroundDialogueBox);
            return;
        }


        if (varScene != SceneManager.GetActiveScene().name)
        {
            //now we have to find all variables in new scene

            characterControl.ChangeScene(varScene, GameVars.loadedScene);
            storyText.text = "";//clear text so that we don't have it hanging around in the next scene
            //GameVars.story.RemoveVariableObserver();
            return;
        }
        GameVars.story.variablesState.variableChangedEvent += ObserveAnyVar;

        if (GameVars.story.canContinue)
        {
            string text = GameVars.story.Continue();//get text from ink
            StartCoroutine(uIControl.WriteText(text, storyText, audioManager));//typewriter effect
            textLogControl.AddToTextLog(text, textLogBox, textLogList);//log all text
            GameVars.story.variablesState.variableChangedEvent -= ObserveAnyVar;
        }
        else
        {
            if ((GameVars.story.currentChoices.Count != 0) && (this.transform.childCount == 0))//means this script has to be attached to the choices object so not great
            {
                GameVars.hasLoadedButtons = true;
                LoadButtons();
            }
            else
            {
                //Debug.Log("Couldn't continue story or load buttons");
                //Debug.Log("CURRENT CHARACTERS" + GameVars.story.variablesState["characters"].ToString());
            }
        }
        GameVars.story.variablesState.variableChangedEvent -= ObserveAnyVar;


    }

    public void ObserveAnyVar(string varName, object newValue) {
        Debug.Log(GameVars.story.variablesState["characters"].ToString());
        switch (varName) {
            //case "textBoxIsActive":
            //    uIControl.SetDialogueBoxActive(newValue.ToString());
            //    break;
            case "newsAnnouncement":
                if (newValue.ToString() != "")
                {
                    tvScreen.SetActive(true);
                }
                else {
                    tvScreen.SetActive(false);
                }
                StartCoroutine(uIControl.WriteText(newValue.ToString(), newsText, audioManager));//typewriter effect
                break;
            case "characters":
                characterControl.UpdateCharactersInScene(newValue.ToString(), stage, characterBox);
                break;
            case "currentSpeaker":
                uIControl.SetNameTag(newValue.ToString(), nameTag);
                break;
            case "music":
                audioControl.PlayMusic(newValue.ToString(), audioManager);
                break;
            case "sfx":
                audioControl.PlaySound(newValue.ToString(), audioManager);
                break;
            //case "gameScene":
            //    characterControl.GoToGameScene(newValue.ToString(), GameVars.story.variablesState["scene"].ToString());
            //    break;
            default:
                //string formattedVal = char.ToLower(varName.ToString()[0]) + varName.ToString().Substring(1);
                //string[] characters = GameVars.story.variablesState["characters"].ToString().Split(',');
                //foreach (string s in characters)
                //{
                //    if (s == formattedVal)
                //    {
                //        characterControl.ChangeCharacterSprite(varName.ToString(), newValue.ToString(), stage);
                //        break;
                //    }
                //}
                break;
        }

    }


    #region Fast Forward
    /// <summary>
    /// puts the story on AUTO mode where it automatically loads
    /// </summary>

    public IEnumerator FastForward()
    {
        GameVars.autoMode = true;
        while (GameVars.autoMode)
        {
            yield return new WaitUntil(() => GameVars.finishedTyping && !GameVars.dontAdvanceStory);
            KeepLoadingStory();
            yield return new WaitForSeconds(GameVars.autoSpeed);
        }
    }
    #endregion


    #region Camera effects
    /// <summary>
    /// Play camera effect from variable
    /// </summary>
    /// <param name="effectName"></param>
    /// <param name="backgroundDialogueBox"></param>
    public void PlayEffect(string effectName, GameObject backgroundDialogueBox)
    {
        uIControl.SetDialogueBoxActive("false", backgroundDialogueBox);
        GameVars.effectJustPlayed = true;
        switch (effectName)
        {
            case "shake":
                backgroundDialogueBox.SetActive(false);
                //uIControl.ShowOrHideDialogueBox("false", backgroundDialogueBox);
                //StartCoroutine(GameObject.FindGameObjectWithTag("MainCamera").GetComponent<ShakeCamera>().TriggerCameraEffect(effectName));
                StartCoroutine(mainCamera.GetComponent<ShakeCamera>().TriggerCameraEffect(effectName, backgroundDialogueBox));
                break;
            case "blur_in":
                backgroundDialogueBox.SetActive(false);
                //StartCoroutine(GameObject.FindGameObjectWithTag("MainCamera").GetComponent<ShakeCamera>().BlurIn());
                //uIControl.ShowOrHideDialogueBox("false", backgroundDialogueBox);
                StartCoroutine(mainCamera.GetComponent<ShakeCamera>().BlurIn(backgroundDialogueBox));
                break;
            default:
                
                break;
        }
    }
    /// <summary>
    /// Continue loading story until a choice is available
    /// </summary>

    public void HasEffectJustPlayed()
    {
        if (GameVars.effectJustPlayed)
        {
            GameVars.story.variablesState["effectName"] = "";
            GameVars.effectJustPlayed = false;
            //backgroundDialogueBox.SetActive(true);
            uIControl.SetDialogueBoxActive("true", backgroundDialogueBox);
        }
    }

    #endregion 

    #region UI methods
    /// <summary>
    /// Add choice buttons to the choices GameObject when they appear in the story
    /// </summary>
    public void LoadButtons()
    {
        if (GameVars.story.canContinue == true)
        {
            return;
        }
        foreach (Choice choice in GameVars.story.currentChoices)
        {

            Button choiceButton = Instantiate(buttonPrefab) as Button;
            TextMeshProUGUI choiceText = choiceButton.GetComponentInChildren<TextMeshProUGUI>();
            choiceText.text = choice.text;
            choiceButton.transform.SetParent(this.transform, false);
            choiceButton.onClick.AddListener(delegate {
                ChooseStoryChoice(choice);

            });

        }
        GameVars.hasLoadedButtons = true;
    }

    //mini game scene, gift scene/shop scene
    public void GoToGameScene(string gameScene, string currentScene)
    {
        menuSystem.SetActive(false);
            Button choiceButton = Instantiate(buttonPrefab) as Button;
            TextMeshProUGUI choiceText = choiceButton.GetComponentInChildren<TextMeshProUGUI>();
            choiceText.text = "Load "+ gameScene;
            choiceButton.transform.SetParent(this.transform, false);
            choiceButton.onClick.AddListener(delegate {
                GameVars.currentScene = currentScene;
                SceneManager.LoadScene(gameScene);

            });

            Button choiceButton2 = Instantiate(buttonPrefab) as Button;
            TextMeshProUGUI choiceText2 = choiceButton2.GetComponentInChildren<TextMeshProUGUI>();
            choiceText2.text = "Skip " + gameScene;
            choiceButton2.transform.SetParent(this.transform, false);
            choiceButton2.onClick.AddListener(delegate {
                RefreshUI();
                menuSystem.SetActive(true);
            });

            GameVars.hasLoadedButtons = true;
    }

    /// <summary>
    /// Select the corresponding choice in ink as the button pressed
    /// </summary>
    /// <param name="choice"></param>
    void ChooseStoryChoice(Choice choice)
    {
        GameVars.story.ChooseChoiceIndex(choice.index);
        //Debug.Log("CURRENT CHARACTERS" + GameVars.story.variablesState["characters"].ToString()); 
        RefreshUI();
    }
    public void RefreshUI()
    {
        GameVars.hasLoadedButtons = false;
        GameVars.dontAdvanceStory = false;
        uIControl.EraseUI(this.gameObject, storyText);
        //characterControl.RefreshCharacters(GameVars.loadedChars);
        characterControl.RefreshCharacters((InkList)GameVars.story.variablesState["characters"], stage, characterBox);
        LoadButtons();
    }
    #endregion

    #region Saving/loading methods


    public void AfterLoadedFromSave()
    {
        
        GameVars.story.state.LoadJson(GameVars.loadedState);
        HasEffectJustPlayed();
        //PlayEffect(GameVars.story.variablesState["effectName"].ToString(), backgroundDialogueBox);
        //UI control
        RefreshUI();
        uIControl.ShowOrHideDialogueBox(GameVars.story.variablesState["textBoxIsActive"].ToString(), backgroundDialogueBox);
        uIControl.SetNameTag(GameVars.story.variablesState["currentSpeaker"].ToString(), nameTag);
        //Dialogue control
        uIControl.GetLastLineOfDialogue(storyText);
        textLogControl.LoadTextLogContent(textLogList, textLogBox);//load text log
        //sound control
        GameVars.musicPlaying = GameVars.story.variablesState["music"].ToString();
        audioControl.PlayMusic(GameVars.story.variablesState["music"].ToString(), audioManager);
        GameVars.sfxPlaying = GameVars.story.variablesState["sfx"].ToString();
        audioControl.PlaySound(GameVars.story.variablesState["sfx"].ToString(), audioManager);
    }

    /// <summary>
    /// Save to binary file
    /// </summary>
    public void SaveStory()
    {
        GameVars.loadedScene = SceneManager.GetActiveScene().name;
        string filename = saveControl.GenerateFileName();
        StartCoroutine(ScreenshotHandler.TakeScreenshot_Static(saveMenu, filename));//save menu
        GameVars.loadedState = GameVars.story.state.ToJson();//save story state
        GameVars.loadedScene = SceneManager.GetActiveScene().name;
        SaveSystem.SaveData(this, filename);//save data to file on system
        saveControl.CreateSaveSlot(filename, saveSlot, scrollList, inkJSON, optionsMenu);//create save slot to load file
    }


    #endregion


}
