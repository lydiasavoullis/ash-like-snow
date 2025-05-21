using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InGame : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        GameManager.Instance.State = GameState.InGame;
    }

    
}
