using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.UI;
public class TVFlicker : MonoBehaviour
{
    [SerializeField]
    GameObject tvObj;
    [SerializeField]
    GameObject audioManager;
    Image tvScreen;
    Color color;
    // Start is called before the first frame update
    void Start()
    {
        tvScreen = tvObj.GetComponent<Image>();
        tvScreen.color = new Color(tvScreen.color.r, tvScreen.color.g, tvScreen.color.b, 0.45f);
        StartCoroutine(Flicker());

    }

    void OnDisable()
    {
        audioManager.GetComponent<AudioManager>().Stop("holoscreen");
        Debug.Log("PrintOnDisable: script was disabled");
    }

    void OnEnable()
    {
        audioManager.GetComponent<AudioManager>().Play("holoscreen");
        Debug.Log("PrintOnEnable: script was enabled");
    }
    IEnumerator Flicker() {
        int count = 0;
        while (true) {
            color = tvScreen.color;
            if (count >= 5)
            {
                tvScreen.color = new Color(color.r, color.g, color.b, color.a - 0.05f);
                count--;
            }
            else {
                tvScreen.color = new Color(color.r, color.g, color.b, color.a + 0.05f);
                count++;
            }

            //if (tvScreen.color.a >= 0.75f)
            //{
            //    Debug.Log("flicker");
            //    tvScreen.color = new Color(color.r, color.g, color.b, color.a - 0.005f);
            //}
            //if (tvScreen.color.a <= 0.2f)
            //{
            //    Debug.Log(tvScreen.color.a);
            //    tvScreen.color = new Color(color.r, color.g, color.b, color.a + 0.005f);
            //}
            yield return new WaitForSeconds(0.001f);
        }
            

        
    }


}
