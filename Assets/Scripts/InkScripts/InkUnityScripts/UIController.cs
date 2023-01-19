using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.InputSystem;
using System;

public class UIController
{
    //GameObject backgroundDialogueBox;
    //GameObject nameTag;
    //TextMeshProUGUI storyText;
    //GameObject choicesUI;
    //MonoBehaviour monoBehaviour;
    public UIController()
    {//GameObject backgroundDialogueBox, GameObject nameTag, TextMeshProUGUI storyText, GameObject choicesUI
        //monoBehaviour = new MonoBehaviour();
        //this.backgroundDialogueBox = backgroundDialogueBox;
        //this.nameTag = nameTag;
        //this.storyText = storyText;
        //this.choicesUI = choicesUI;
    }
    #region Text UI methods
    //set name tag colours in the text log here
    public Color SetNameColour(string name)
    {
        Color colour = new Color(0, 0, 0, 255);
        switch (name.ToLower())
        {
            case "cas":
                colour = new Color32(150, 100, 255, 255);
                break;
            case "lavender":
                colour = Color.magenta;
                break;
            case "pandora":
                colour = new Color32(204, 255, 229, 255);
                break;
            default:
                break;

        }
        return colour;
    }
    public void GetLastLineOfDialogue(TextMeshProUGUI storyText)
    {
        if (GameVars.loadedTextLog.Count > 0)
        {
            //remove name tag
            storyText.text = GameVars.loadedTextLog[GameVars.loadedTextLog.Count - 1].Split(new string[] { "</color>" }, StringSplitOptions.None)[1];
             //GameVars.loadedTextLog[GameVars.loadedTextLog.Count - 1];
            //Debug.Log($"LAST LINE: {storyText.text}");
        }

    }


    /// <summary>
    /// Create 'typewriter' effect when writing out passage
    /// </summary>
    /// <param name="passage"></param>
    /// <returns></returns>
    //public IEnumerator WriteText(string passage, TextMeshProUGUI storyText)
    //{
    //    GameVars.finishedTyping = false;
    //    for (int i = 0; i < passage.Length; i++)
    //    {
    //        storyText.text = passage.Substring(0, i);
    //        yield return new WaitForSeconds(GameVars.delay);
    //    }
    //    GameVars.finishedTyping = true;
    //}

    public IEnumerator WriteText(string passage, TextMeshProUGUI storyText, GameObject manager)
    {
        
        storyText.text = passage;
        storyText.maxVisibleCharacters = 0;
        GameVars.finishedTyping = false;
        yield return new WaitForSeconds(0.01f);
        for (int i = 0; i < passage.Length; i++)
        {
            //manager.GetComponent<AudioManager>().Play("typing");
            manager.GetComponent<AudioManager>().TypeSound("typing");
            Debug.Log("play effect");
            if (Mouse.current.rightButton.wasPressedThisFrame)
            {
                storyText.maxVisibleCharacters = passage.Length;
                break;
            }
            else {
                storyText.maxVisibleCharacters = passage.Substring(0, i).Length;
                yield return new WaitForSeconds(GameVars.delay);
            }

        }
        
        GameVars.finishedTyping = true;
    }

    #endregion

    #region UI methods

    public void ShowOrHideDialogueBox(string textBoxIsActive, GameObject backgroundDialogueBox)
    {
        if (textBoxIsActive == "false")
        {
            backgroundDialogueBox.SetActive(false);//if false: hide, if true: show
            GameVars.dontAdvanceStory = true; //if false: don't advance is true. If true: don't advance is false
            GameVars.story.variablesState["textBoxIsActive"] = "false";
        }
        else
        {
            backgroundDialogueBox.SetActive(true);//if false: hide, if true: show
            GameVars.dontAdvanceStory = false; //if false: don't advance is true. If true: don't advance is false
            GameVars.story.variablesState["textBoxIsActive"] = "true";
        }

    }
    /// <summary>
    /// Destroy buttons that are children of the choices object
    /// </summary>
    public void EraseUI(GameObject choicesUI, TextMeshProUGUI storyText)
    {
        for (int i = 0; i < choicesUI.transform.childCount; i++)
        {
            GameObject.Destroy(choicesUI.transform.GetChild(i).gameObject);
        }
        storyText.text = "";
    }

    public void SetNameTag(string name, GameObject nameTag)
    {
        //if (extraInfo != null || extraInfo != "")
        //{
        //    Debug.Log($"Set Name tag info: {extraInfo}");
        //}
        
        if (name == "")
        {
            nameTag.SetActive(false);
            //deactivate name tag
        }
        else
        {
            nameTag.SetActive(true);//activate name tag
            nameTag.GetComponentInChildren<TextMeshProUGUI>().text = name;//set name tag to name
        }
    }
    //sets dialogue box without changing  GameVars.dontAdvanceStory
    public void SetDialogueBoxActive(string isActive, GameObject backgroundDialogueBox)
    {
        //if (extraInfo !=null || extraInfo != "") {
        //    Debug.Log($"Set Dialogue box info: {extraInfo}");
        //}
        
        if (isActive == "true")
        {
            backgroundDialogueBox.SetActive(true);
            GameVars.story.variablesState["textBoxIsActive"] = "true";
            
        }
        else
        {
            backgroundDialogueBox.SetActive(false);
            GameVars.story.variablesState["textBoxIsActive"] = "false";
        }
    }
    #endregion
}
