
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
[RequireComponent(typeof(ScrollRect))]
public class ScrollRectAutoScroll : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public float scrollSpeed = 10f;
    private bool mouseOver = false;

    private List<Selectable> m_Selectables = new List<Selectable>();
    private ScrollRect m_ScrollRect;

    private Vector2 m_NextScrollPosition = Vector2.up;

    GameControls gameControls;
    void OnEnable()
    {
        gameControls = new GameControls();
        gameControls.UI.Enable();
        gameControls.UI.Navigate.performed += ctx => NewInputScroll();
        if (m_ScrollRect)
        {
            m_ScrollRect.content.GetComponentsInChildren(m_Selectables);
        }
    }
    private void OnDisable()
    {
        gameControls.UI.Disable();

    }
    void Awake()
    {
        m_ScrollRect = GetComponent<ScrollRect>();
    }
    void Start()
    {
        if (m_ScrollRect)
        {
            m_ScrollRect.content.GetComponentsInChildren(m_Selectables);
        }
        ScrollToSelected(true);
    }
    void Update()
    {
        // Scroll via input.
        //InputScroll();
        
        if (!mouseOver)
        {
            // Lerp scrolling code.
            m_ScrollRect.normalizedPosition = Vector2.Lerp(m_ScrollRect.normalizedPosition, m_NextScrollPosition, scrollSpeed * Time.deltaTime);
        }
        else
        {
            m_NextScrollPosition = m_ScrollRect.normalizedPosition;
        }
    }
    void NewInputScroll() {
        if (m_Selectables.Count > 0)
        {
            ScrollToSelected(false);
        }
    }
    //void InputScroll()
    //{
    //    if (m_Selectables.Count > 0)
    //    {
    //        //Input.GetButtonDown("Horizontal") || Input.GetButtonDown("Vertical") || Input.GetButton("Horizontal") || Input.GetButton("Vertical")
    //        if (Input.GetButtonDown("Horizontal") || Input.GetButtonDown("Vertical") || Input.GetButton("Horizontal") || Input.GetButton("Vertical"))
    //        {
    //            ScrollToSelected(false);
    //        }
    //    }
    //}
    void ScrollToSelected(bool quickScroll)
    {
        int selectedIndex = -1;
        Selectable selectedElement = EventSystem.current.currentSelectedGameObject ? EventSystem.current.currentSelectedGameObject.GetComponent<Selectable>() : null;

        if (selectedElement)
        {
            selectedIndex = m_Selectables.IndexOf(selectedElement);
        }
        if (selectedIndex > -1)
        {
            if (quickScroll)
            {
                m_ScrollRect.normalizedPosition = new Vector2(m_ScrollRect.normalizedPosition.x, 1 - (selectedIndex / ((float)m_Selectables.Count - 1)));
                m_NextScrollPosition = m_ScrollRect.normalizedPosition;
            }
            else
            {
                m_NextScrollPosition = new Vector2(m_ScrollRect.normalizedPosition.x, 1 - (selectedIndex / ((float)m_Selectables.Count - 1)));
            }
        }
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        mouseOver = true;
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        mouseOver = false;
        ScrollToSelected(false);
    }
}
