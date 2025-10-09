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
        gameControls.UI.Delete.performed += ctx => StartCoroutine(DeleteButtonTrigger());
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();
    }

    IEnumerator DeleteButtonTrigger()
    {
        if (saveSelected == true) {
            int index = this.transform.GetSiblingIndex();
            if (index == this.transform.parent.childCount)
            {
                saveSlotButton.transform.parent.GetChild(0).GetComponent<Selectable>().Select();
            }
            else
            {
                saveSlotButton.transform.parent.GetChild(index + 1).GetComponent<Selectable>().Select();
            }
            yield return new WaitUntil(()=>!saveSelected);
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
