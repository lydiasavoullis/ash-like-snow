using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using TMPro;
using System.Linq;

public class EvidenceController : MonoBehaviour
{
    [SerializeField]
    GameObject panel;
    [SerializeField]
    GameObject cardPrefab;
    bool finishedTyping = true;
    bool choicesDisplayed = false;
    #region Ink libraries
    public TextAsset inkJSON;
    #endregion
    // Start is called before the first frame update
    void Start()
    {
        GameVars.story = new Story(inkJSON.text);
        StartCoroutine(AddCard());
    }
    public IEnumerator AddCard() {
        yield return new WaitUntil(() => finishedTyping);
        string cardName= "";
        if (GameVars.story.canContinue)
        {
            cardName = GameVars.story.Continue();//get text from ink
        }
        else {
            yield return null;
        }
        GameObject cardObj = Instantiate(cardPrefab, new Vector3(0, 0, 0), Quaternion.identity, panel.transform);
        cardObj.transform.GetChild(0).GetComponent<TextMeshProUGUI>().text = cardName;
        ShowChoices(cardObj.transform.GetChild(2).gameObject, cardObj.transform.GetChild(1).GetComponent<TextMeshProUGUI>());
    }

    public void ShowChoices(GameObject choicesObject, TextMeshProUGUI outcome)
    {
        TMP_Dropdown dropdown = choicesObject.transform.GetComponent<TMP_Dropdown>();
        choicesDisplayed = true;
        List<string> choiceStrings = new List<string>();
        List<Choice> choices = GameVars.story.currentChoices;

        foreach (Choice c in choices)
        {
            choiceStrings.Add(c.text);
            // Debug.Log(c.text);
        }
        //Debug.Log("current value: " + choicesDropdown.value);
        dropdown.AddOptions(choiceStrings);
        dropdown.onValueChanged.AddListener(delegate {
            GameVars.story.ChooseChoiceIndex(dropdown.value - 1);
            if (choicesObject != null)
            {
                choicesDisplayed = false;
                StartCoroutine(WriteText(choiceStrings[dropdown.value - 1], outcome));
                Destroy(choicesObject);
                StartCoroutine(AddCard());
            }

        });

    }
    public IEnumerator WriteText(string passage, TextMeshProUGUI cardOutcome)
    {
        cardOutcome.text = passage;
        cardOutcome.maxVisibleCharacters = 0;
        finishedTyping = false;
        for (int i = 0; i < passage.Length+1; i++)
        {
            cardOutcome.maxVisibleCharacters = passage.Substring(0, i).Length;
            yield return new WaitForSeconds(0.1f);
        }
        finishedTyping = true;
    }
}
