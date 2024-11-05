using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnLoadSetUp : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField]
    GameObject choices;
    void Start()
    {
       // Debug.Log("On scene start");
        if (GameVars.justLoaded == true)
        {
            GameVars.justLoaded = false;
            choices.GetComponent<DialogueController>().AfterLoadedFromSave();
            //Debug.Log("loaded from save");
        }

    }

}
