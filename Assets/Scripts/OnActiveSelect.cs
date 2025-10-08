using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
public class OnActiveSelect : MonoBehaviour
{
    [SerializeField]
    Selectable firstSelected;
    [SerializeField]
    EventSystem eventSystem;
    private void OnEnable()
    {
        firstSelected.Select();
        eventSystem.firstSelectedGameObject = firstSelected.gameObject;
    }
}
