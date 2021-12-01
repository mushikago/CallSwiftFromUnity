using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Runtime.InteropServices;

public class CallSwiftTest : MonoBehaviour
{
    [DllImport("__Internal")]
    private static extern void CallSwift();

    public GameObject sphere;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void onPressOpenSettingButton()
    {
        sphere.gameObject.SetActive(false);

        Debug.Log("onPressOpenSettingButton");
#if UNITY_IOS
        //Application.OpenURL( url );
        Debug.Log("onPressOpenSettingButton #if UNITY_IOS");
        CallSwift();
#endif
    }
}
