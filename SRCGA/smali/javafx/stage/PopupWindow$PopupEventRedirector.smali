.class Ljavafx/stage/PopupWindow$PopupEventRedirector;
.super Lcom/sun/javafx/event/EventRedirector;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupEventRedirector"
.end annotation


# static fields
.field private static final ESCAPE_KEY_COMBINATION:Ljavafx/scene/input/KeyCombination;


# instance fields
.field private final popupWindow:Ljavafx/stage/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 946
    const-string v0, "Esc"

    .line 947
    invoke-static {v0}, Ljavafx/scene/input/KeyCombination;->keyCombination(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination;

    move-result-object v0

    sput-object v0, Ljavafx/stage/PopupWindow$PopupEventRedirector;->ESCAPE_KEY_COMBINATION:Ljavafx/scene/input/KeyCombination;

    .line 946
    return-void
.end method

.method public constructor <init>(Ljavafx/stage/PopupWindow;)V
    .locals 4

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, p1

    .local v1, "popupWindow":Ljavafx/stage/PopupWindow;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventRedirector;-><init>(Ljava/lang/Object;)V

    .line 952
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    .line 953
    return-void
.end method

.method private handleAutoHidingEvents(Ljava/lang/Object;Ljavafx/event/Event;)V
    .locals 7

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v3

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1017
    .line 1031
    :goto_0
    return-void

    .line 1020
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->isAutoHide()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/stage/PopupWindow$PopupEventRedirector;->isOwnerNodeEvent(Ljavafx/event/Event;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1023
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    new-instance v4, Lcom/sun/javafx/stage/FocusUngrabEvent;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/stage/FocusUngrabEvent;-><init>()V

    invoke-static {v3, v4}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 1025
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->doAutoHide()V

    .line 1027
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getConsumeAutoHidingEvents()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1028
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/Event;->consume()V

    .line 1031
    :cond_1
    goto :goto_0
.end method

.method private handleEscapeKeyPressedEvent(Ljavafx/event/Event;)V
    .locals 3

    .prologue
    .line 1001
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->isHideOnEscape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->doAutoHide()V

    .line 1004
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->getConsumeAutoHidingEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1005
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 1008
    :cond_0
    return-void
.end method

.method private handleFocusUngrabEvent()V
    .locals 2

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->isAutoHide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->doAutoHide()V

    .line 1037
    :cond_0
    return-void
.end method

.method private handleKeyEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 12

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 979
    .line 998
    :goto_0
    return-void

    .line 982
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v2, v5

    .line 983
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 984
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 985
    .local v3, "sceneFocusOwner":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    :goto_1
    move-object v4, v5

    .line 987
    .local v4, "eventTarget":Ljavafx/event/EventTarget;
    move-object v5, v4

    new-instance v6, Lcom/sun/javafx/event/DirectEvent;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/input/KeyEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/javafx/event/DirectEvent;-><init>(Ljavafx/event/Event;)V

    invoke-static {v5, v6}, Lcom/sun/javafx/event/EventUtil;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v5

    if-nez v5, :cond_2

    .line 989
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 990
    goto :goto_0

    .line 985
    .end local v4    # "eventTarget":Ljavafx/event/EventTarget;
    :cond_1
    move-object v5, v2

    goto :goto_1

    .line 994
    .end local v3    # "sceneFocusOwner":Ljavafx/scene/Node;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_3

    sget-object v5, Ljavafx/stage/PopupWindow$PopupEventRedirector;->ESCAPE_KEY_COMBINATION:Ljavafx/scene/input/KeyCombination;

    move-object v6, v1

    .line 995
    invoke-virtual {v5, v6}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 996
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/stage/PopupWindow$PopupEventRedirector;->handleEscapeKeyPressedEvent(Ljavafx/event/Event;)V

    .line 998
    :cond_3
    goto :goto_0
.end method

.method private isOwnerNodeEvent(Ljavafx/event/Event;)Z
    .locals 7

    .prologue
    .line 1040
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/PopupWindow$PopupEventRedirector;->popupWindow:Ljavafx/stage/PopupWindow;

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v2, v5

    .line 1041
    .local v2, "ownerNode":Ljavafx/scene/Node;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 1042
    const/4 v5, 0x0

    move v0, v5

    .line 1058
    .end local v0    # "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    :goto_0
    return v0

    .line 1045
    .restart local v0    # "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v5

    move-object v3, v5

    .line 1046
    .local v3, "eventTarget":Ljavafx/event/EventTarget;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/Node;

    if-nez v5, :cond_1

    .line 1047
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1050
    :cond_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 1052
    .local v4, "node":Ljavafx/scene/Node;
    :cond_2
    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_3

    .line 1053
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1055
    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    move-object v4, v5

    .line 1056
    move-object v5, v4

    if-nez v5, :cond_2

    .line 1058
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method protected handleRedirectedEvent(Ljava/lang/Object;Ljavafx/event/Event;)V
    .locals 7

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$PopupEventRedirector;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/input/KeyEvent;

    if-eqz v4, :cond_0

    .line 959
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-direct {v4, v5}, Ljavafx/stage/PopupWindow$PopupEventRedirector;->handleKeyEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 960
    .line 975
    :goto_0
    return-void

    .line 963
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v3, v4

    .line 965
    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    move-object v4, v3

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-eq v4, v5, :cond_1

    move-object v4, v3

    sget-object v5, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_2

    .line 967
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/stage/PopupWindow$PopupEventRedirector;->handleAutoHidingEvents(Ljava/lang/Object;Ljavafx/event/Event;)V

    .line 968
    goto :goto_0

    .line 971
    :cond_2
    move-object v4, v3

    sget-object v5, Lcom/sun/javafx/stage/FocusUngrabEvent;->FOCUS_UNGRAB:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_3

    .line 972
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/stage/PopupWindow$PopupEventRedirector;->handleFocusUngrabEvent()V

    .line 973
    goto :goto_0

    .line 975
    :cond_3
    goto :goto_0
.end method
