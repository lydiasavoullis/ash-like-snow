using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ButtonBoxResize : MonoBehaviour
{
    public void ResizeByScale(float size){
        this.GetComponent<Image>().rectTransform.localScale = new Vector3(size,size,size);
    }
    public void Reset()
    {
        this.GetComponent<Image>().rectTransform.localScale = new Vector3(1, 1, 1);
    }
}
