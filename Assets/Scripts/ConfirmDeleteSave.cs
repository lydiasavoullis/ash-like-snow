using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConfirmDeleteSave : MonoBehaviour
{
    GameControls gameControls;
    private void OnEnable()
    {
        gameControls = new GameControls();
        gameControls.UI.Enable();
        gameControls.UI.Delete.performed += ctx => DeleteSaveYes();
        gameControls.UI.Select.performed += ctx => DeleteSaveNo();
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }
    void DeleteSaveYes() {
        this.gameObject.SetActive(false);
    }
    void DeleteSaveNo()
    {

        this.gameObject.SetActive(false);
    }
}
