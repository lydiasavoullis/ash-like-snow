using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisableOnEnable : MonoBehaviour
{
    [SerializeField]
    GameObject menu;
    [SerializeField]
    MenuState menuState;
    private void OnEnable()
    {
        menu.SetActive(false);
        Debug.Log("Text log enabled");
        GameStates.UpdateMenuState(menuState);
    }
    private void OnDisable()
    {
        GameStates.UpdateMenuState(MenuState.NoneOpen);
        menu.SetActive(true);
    }
}
