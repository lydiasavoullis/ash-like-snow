using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeleteSaveDialogue : MonoBehaviour
{
    GameControls gameControls;
    [SerializeField]
    GameObject deleteDialogue;
    private void OnEnable()
    {
        gameControls = new GameControls();
        gameControls.UI.Enable();
        gameControls.UI.Delete.performed += ctx => deleteDialogue.SetActive(true);
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }
}
