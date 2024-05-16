using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class MainMenuPlay : MonoBehaviour
{
    [SerializeField]
    GameObject menuButtonsContainer;
    List<Button> menuButtons;
    int selected;
    //go through menu buttons with scroll wheel
    private void Start()
    {
        menuButtons = new List<Button>();
        for (int i=0;i<menuButtonsContainer.transform.childCount;i++) {
            menuButtons.Add(menuButtonsContainer.transform.GetChild(i).GetComponent<Button>());
        }
    }
    private void Update()
    {
        //if (Mouse.current.scroll.ReadValue().y > 0) {
        //    Debug.Log("scrolled up "+ (Mouse.current.scroll.ReadValue().y));
        //} else if (Mouse.current.scroll.ReadValue().y < 0) {
        //    Debug.Log("scrolled down" + (Mouse.current.scroll.ReadValue().y));

        //}
        
    }


}
