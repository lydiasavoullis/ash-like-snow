using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class DiceGame : MonoBehaviour
{
    [SerializeField]
    GameObject dice;
    [SerializeField]
    GameObject diceTablePlayer;
    [SerializeField]
    GameObject diceTableOpponent;
    [SerializeField]
    TextMeshProUGUI scorePlayer;
    [SerializeField]
    TextMeshProUGUI scoreOpponent;
    [SerializeField]
    GameObject rollBtn;
    [SerializeField]
    GameObject gameOutcome;
    [SerializeField]
    TextMeshProUGUI gameOutcomeText;
    [SerializeField]
    GameObject playAgain;
    [SerializeField]
    TextMeshProUGUI funds;
    // Start is called before the first frame update
    void Start()
    {
        SetUpBoard();
    }

    //// Update is called once per frame
    //void Update()
    //{

    //}
    void SetUpBoard() {
        funds.text = GameVars.story.variablesState["funds"].ToString();
        RollADice(diceTablePlayer);
        RollADice(diceTablePlayer);
        RollADice(diceTableOpponent);
        RollADice(diceTableOpponent);
        ShowOpponentDice(false);
       // ShowRollBtn(true);
    }
    public void RollADice(GameObject playerBoard) {
        GameObject newDice = Instantiate(dice, new Vector3(0, 0, 0), Quaternion.identity);
        newDice.transform.SetParent(playerBoard.transform);
        int num = UnityEngine.Random.Range(1, 7);//1-6
        newDice.transform.GetChild(0).GetComponent<TextMeshProUGUI>().text = num.ToString();
        if (playerBoard.name.ToLower().Contains("player"))
        {
            AppendToScore(scorePlayer, num);
            int currentScore = int.Parse(scorePlayer.text); 
            if (currentScore >= 21) {
                if (currentScore == 21)
                {
                    ShowGameOutcome("Win!");
                    ShowRollBtn(false);
                }
                else {
                    ShowGameOutcome("Lose :(");
                }
            }
        }
        else {
            AppendToScore(scoreOpponent, num);
        }
    }
    void ShowOpponentDice(bool diceActive) {
        for (int i = 0; i < diceTableOpponent.transform.childCount; i++) {
            diceTableOpponent.transform.GetChild(i).gameObject.SetActive(diceActive);
        }
        scoreOpponent.gameObject.SetActive(diceActive);
        
    }
    public void AppendToScore(TextMeshProUGUI score, int num) {
        score.text = (int.Parse(score.text) + num).ToString();
    }

    public void Pass() {
        ShowRollBtn(false);
        ShowOpponentDice(true);
        StartCoroutine(OpponentTurn());
    }
    public void ShowRollBtn(bool active) {

        rollBtn.SetActive(active);
    }
    public void LoadScene() {
        SceneManager.LoadScene("MiniGame");
    }
    public void ResetGame()
    {
        
            GameVars.story.variablesState["funds"] = (int.Parse(GameVars.story.variablesState["funds"].ToString()) - 100).ToString();
            gameOutcomeText.text = "You ";
            scorePlayer.text = "0";
            for (int i = 0; i < diceTableOpponent.transform.childCount; i++)
            {
                Destroy(diceTableOpponent.transform.GetChild(i).gameObject);
            }
            scoreOpponent.text = "0";
            for (int i = 0; i < diceTablePlayer.transform.childCount; i++)
            {
                Destroy(diceTablePlayer.transform.GetChild(i).gameObject);
            }
            SetUpBoard();

        
    }
    public IEnumerator OpponentTurn() {
        yield return new WaitForSeconds(1.5f);
        while (int.Parse(scoreOpponent.text)<18) {
            RollADice(diceTableOpponent);
            yield return new WaitForSeconds(0.5f);
        }
        int opponentScore = int.Parse(scoreOpponent.text);
        int playerScore = int.Parse(scorePlayer.text);
        if (opponentScore > 21)
        {
            ShowGameOutcome("Win!");
        }
        else if (opponentScore < playerScore)
        {
            ShowGameOutcome("Win!");
        }
        else if (opponentScore > playerScore)
        {
            ShowGameOutcome("Lose :(");
        }
        else {
            ShowGameOutcome("Draw??");
        }

    }
    public void ShowGameOutcome(string outcome)
    {
        gameOutcome.SetActive(true);
        gameOutcomeText.text += outcome;
        if (gameOutcomeText.text.ToLower().Contains("win"))
        {
            GameVars.story.variablesState["funds"] = (int.Parse(GameVars.story.variablesState["funds"].ToString()) + 200).ToString();
        }
        if (gameOutcomeText.text.ToLower().Contains("draw"))
        {
            GameVars.story.variablesState["funds"] = (int.Parse(GameVars.story.variablesState["funds"].ToString()) + 100).ToString();
        }
        if (int.Parse(GameVars.story.variablesState["funds"].ToString()) < 100)
        {
            playAgain.SetActive(false);
        }
        funds.text = GameVars.story.variablesState["funds"].ToString();
    }
    }
