using System.Collections;
using System.Collections.Generic;
using System.IO;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
public class DeleteSave : MonoBehaviour
{
    public GameObject saveSlotButton;
    GameControls gameControls;
    [SerializeField]
    public bool saveSelected = false;
    private void OnEnable()
    {
        gameControls = new GameControls();
        gameControls.UI.Enable();
        gameControls.UI.Delete.performed += ctx => DeleteButtonTrigger();
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }
    void DeleteButtonTrigger()
    {
        if (saveSelected == true) {
            //saveSlotButton.transform.parent.GetChild(saveSlotButton.transform.GetSiblingIndex()).gameObject.GetComponent<Selectable>().Select();
            saveSlotButton.transform.parent.GetChild(0).gameObject.GetComponent<Selectable>().Select();
            DeleteSelf();
        }
        
    }
    public void IsSelected(bool state)
    {
        saveSelected = state;
    }

    //make delete trigger more user friendly
    public void DeleteSelf() {     
        Destroy(saveSlotButton);
        string filename = saveSlotButton.GetComponentInChildren<TextMeshProUGUI>().text;
        string dataFile = Application.persistentDataPath + "/" + "saves" + "/" + filename + ".story";
        string image = Application.persistentDataPath + "/" + "saves" + "/" + filename + ".png";
        if (File.Exists(dataFile)) {
            File.Delete(dataFile);
        }
        if (File.Exists(image))
        {
            File.Delete(image);
        }
    }
}
