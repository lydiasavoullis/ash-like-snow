using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisableOnEnable : MonoBehaviour
{
    [SerializeField]
    GameObject menu;
    private void OnEnable()
    {
        menu.SetActive(false);
        Debug.Log("Text log enabled");
    }
    private void OnDisable()
    {
        menu.SetActive(true);
    }
}
