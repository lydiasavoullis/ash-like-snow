using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pause : MonoBehaviour
{
    public void DontAdvance() {
        GameVars.dontAdvanceStory = true;
    }
    public void ContinueStory() {
        GameVars.dontAdvanceStory = false;
    }
}
