using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StopOtherMusic : MonoBehaviour
{
    AudioManager audioManager;
    // Start is called before the first frame update
    public void StopMusic() {
        GameObject.DestroyImmediate(GameObject.FindGameObjectWithTag("AudioManager"));
    }

}
