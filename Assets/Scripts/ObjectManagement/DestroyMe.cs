using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyMe : MonoBehaviour
{
    public GameObject oldGameObject;
    public void DeleteObject() {
        Destroy(oldGameObject);
    }
}
