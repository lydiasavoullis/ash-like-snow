using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyOld : MonoBehaviour
{
    public GameObject persistantObject;
    private void Awake()
    {
        GameObject obj = FindObjectOfType<MakePersistant>().gameObject;
        Destroy(obj);
    }
    // Start is called before the first frame update
    void Start()
    {
        Instantiate(persistantObject, new Vector3(0, 0, 0), Quaternion.identity);
    }

    
}
