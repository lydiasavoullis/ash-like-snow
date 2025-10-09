using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DeleteSaveDialogue : MonoBehaviour
{
    GameControls gameControls;
    [SerializeField]
    GameObject deleteDialogue;
    public static Selectable nextFile;
    private void OnEnable()
    {
        gameControls = new GameControls();
        gameControls.UI.Enable();
        gameControls.UI.Delete.performed += ctx => SelectNext();
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }
    
    public static void SelectNext()
    {
        nextFile.Select();
    }
}
