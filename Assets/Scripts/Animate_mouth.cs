using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Animate_mouth : MonoBehaviour
{
    private void Start()
    {
        
        Sprite one = Resources.Load<Sprite>("characters_mouth_animation/lavender/Lavender_mouth_open1");
        Sprite two = Resources.Load<Sprite>("characters_mouth_animation/lavender/Lavender_mouth_open2");
        StartCoroutine(AnimateMouth(one, two));
    }
    public IEnumerator AnimateMouth(Sprite open1, Sprite open2) {
        while (true) {
            yield return new WaitForSeconds(0.5f);
            this.GetComponent<Image>().sprite = open1;
            yield return new WaitForSeconds(0.5f);
            this.GetComponent<Image>().sprite = open2;
        } 
    }
    public void StopSpeaking() {
        Sprite none = Resources.Load<Sprite>("characters_mouth_animation/none");
        this.GetComponent<Image>().sprite = none;
    }
}
