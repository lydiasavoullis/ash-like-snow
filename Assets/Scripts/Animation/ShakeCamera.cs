using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Linq;
using System.Threading;

public class ShakeCamera : MonoBehaviour
{
    Animator camAnim;
    [SerializeField]
    GameObject blurPanel;
    private void Start()
    {

        camAnim = GetComponent<Animator>();
        //panel = GameObject.FindGameObjectWithTag("BlurEffects");
        blurPanel.GetComponent<Image>().material.SetFloat("_Size", 0f);//reset blur
       
    }
    public IEnumerator TriggerCameraEffect(string effectName, GameObject dialogueBox){
        GameVars.dontAdvanceStory = true;
        //dialogueBox.SetActive(false);
        camAnim.SetTrigger(effectName);
        List<AnimationClip> clips = camAnim.runtimeAnimatorController.animationClips.ToList();
        float time = clips.Find(item=>item.name=="shaky_camera").length;
        yield return new WaitForSeconds(time);
        GameVars.dontAdvanceStory = false;
        //dialogueBox.SetActive(true);
        yield return null;
        //Debug.Log("animation took:" + time);
    }
    public IEnumerator BlurIn(GameObject dialogueBox) {
        Debug.Log("background image: " + blurPanel.name);
        GameVars.dontAdvanceStory = true;
        //dialogueBox.SetActive(false);
        //panel.GetComponent<Image>().material.SetFloat("_Size", 5f);
        float i = 6f;
        //blurPanel.GetComponent<Image>().material.SetFloat("_Size", i);
        while (i > 0)
        {
            i -= 0.2f;
            blurPanel.GetComponent<Image>().material.SetFloat("_Size", i);
            yield return new WaitForSeconds(0.1f);
        }
        GameVars.dontAdvanceStory = false;
        //dialogueBox.SetActive(true);
        yield return null;


    }

}
