using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetInkVariables : MonoBehaviour
{
    // Start is called before the first frame update
    public TextAsset inkjSON;
    void Start()
    {
        GameVars.ResetStaticVariables(inkjSON);

    }
 

}
