using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class XmasLights : MonoBehaviour
{
    private void Start()
    {
        StartCoroutine(FlashLights());
    }
    public IEnumerator FlashLights() {
        float alpha = 1f;
        float counter = 20;
        bool alphaIncrease = false;
        while (true) {

            if (counter == 0) {
                alphaIncrease = true;
            }
            if (counter == 20)
            {
                alphaIncrease = false;
            }

            if (alphaIncrease)
            {
                counter++;
                alpha += 0.03f;
            }
            else {
                counter--;
                alpha -= 0.03f;
                
            }
            gameObject.GetComponent<Image>().color = new Color(1, 1, 1, alpha);
            //if (counter == 0)
            //{
            //    counter++;
            //    alpha += 0.05f;
            //    gameObject.GetComponent<Image>().color = new Color(1, 1, 1, alpha);
            //}
            //else {
            //    alpha -= 0.05f;
            //    gameObject.GetComponent<Image>().color = new Color(1, 1, 1, alpha);
            //}
            yield return new WaitForSeconds(0.1f);
        }
        

    }
}
