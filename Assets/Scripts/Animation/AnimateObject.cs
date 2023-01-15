using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimateObject : MonoBehaviour
{
    public Canvas canvas;
    public GameObject animatedChar;
    public void SpawnObject(){
        animatedChar =  Instantiate(Resources.Load<GameObject>("maki_animation"), new Vector3(0, -3, 0), Quaternion.identity);
        animatedChar.transform.SetParent(canvas.transform);

    }
    public void PlayThinking(string animationClip) {
        animatedChar.GetComponent<Animator>().Play("maki_thinking");
    }
    private void Start()
    {
        SpawnObject();
    }
}
