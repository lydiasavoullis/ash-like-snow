using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonNavigation : MonoBehaviour
{
    [SerializeField]
    MenuSystem menuSystem;
    [SerializeField]
    DialogueController dControl;
    GameControls gameControls;
    private void Awake()
    {
        gameControls = new GameControls();
        gameControls.UI.OpenMenu.performed += ctx => OpenMenu();
        gameControls.UI.CloseMenu.performed += ctx => CloseMenu();
    }
    private void OpenMenu()
    {
        if (GameStates.MenuState == MenuState.NoneOpen) {
            menuSystem.transform.GetChild(0).gameObject.SetActive(false);
            menuSystem.transform.GetChild(1).gameObject.SetActive(true);
            GameObject.FindGameObjectWithTag("MenuButtons").transform.GetChild(1).GetComponent<Button>().Select();//select first button
                                                                                                                  //dControl.gameObject.SetActive(false);
        }

    }
    private void CloseMenu()
    {
        //dControl.gameObject.SetActive(true);
        menuSystem.transform.GetChild(0).gameObject.SetActive(true);
        menuSystem.transform.GetChild(1).gameObject.SetActive(false);
        if (dControl.transform.childCount > 0)
        {
            dControl.transform.GetChild(0).GetComponent<Button>().Select();
        }
    }
    private void OnEnable()
    {
        gameControls.UI.Enable();
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }


}
