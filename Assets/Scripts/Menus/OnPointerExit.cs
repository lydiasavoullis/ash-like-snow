using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;

public class OnPointerExit : MonoBehaviour
{
    [SerializeField]
    GameObject optionsButtons;
    [SerializeField]
    GameObject optionsMenu;

    public void OnMouseEnter()
    {
        Debug.Log("enter");
    }
    public void OnMouseExit()
    {
        optionsButtons.SetActive(false);
        optionsMenu.SetActive(true);
    }

}
