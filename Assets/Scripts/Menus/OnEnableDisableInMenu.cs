using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

//for options and saves menu and other menus
public class OnEnableDisableInMenu : MonoBehaviour
{
    GameObject inkController;
    GameControls gameControls;
    [SerializeField]
    Selectable firstElement;
    [SerializeField]
    GameObject SavesList;
    [SerializeField]
    GameObject eventSystem;
    [SerializeField]
    GameObject menuButtons;
    private void OnEnable()
    {
        if (SavesList != null)
        {
            if (SavesList.transform.childCount != 0)
            {
                SavesList.transform.GetChild(0).GetComponent<Selectable>().Select();
                eventSystem.GetComponent<EventSystem>().firstSelectedGameObject = SavesList.transform.GetChild(0).gameObject;
            }
        }
        else {
            firstElement.Select();
        }
        
        gameControls = new GameControls();
        gameControls.UI.Enable();
        gameControls.UI.CloseMenu.performed += ctx => BackToMenu();

    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }

    private void BackToMenu() {
        menuButtons.SetActive(true);
        this.gameObject.SetActive(false);
        menuButtons.transform.GetChild(0).GetChild(1).GetComponent<Selectable>().Select();
    }
}
