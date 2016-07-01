.class public Lcom/sun/javafx/embed/AbstractEvents;
.super Ljava/lang/Object;
.source "AbstractEvents.java"


# static fields
.field public static final FOCUSEVENT_ACTIVATED:I = 0x0

.field public static final FOCUSEVENT_DEACTIVATED:I = 0x3

.field public static final FOCUSEVENT_TRAVERSED_BACKWARD:I = 0x2

.field public static final FOCUSEVENT_TRAVERSED_FORWARD:I = 0x1

.field public static final KEYEVENT_PRESSED:I = 0x0

.field public static final KEYEVENT_RELEASED:I = 0x1

.field public static final KEYEVENT_TYPED:I = 0x2

.field public static final MODIFIER_ALT:I = 0x4

.field public static final MODIFIER_CONTROL:I = 0x2

.field public static final MODIFIER_META:I = 0x8

.field public static final MODIFIER_SHIFT:I = 0x1

.field public static final MOUSEEVENT_CLICKED:I = 0x2

.field public static final MOUSEEVENT_DRAGGED:I = 0x6

.field public static final MOUSEEVENT_ENTERED:I = 0x3

.field public static final MOUSEEVENT_EXITED:I = 0x4

.field public static final MOUSEEVENT_MIDDLE_BUTTON:I = 0x4

.field public static final MOUSEEVENT_MOVED:I = 0x5

.field public static final MOUSEEVENT_NONE_BUTTON:I = 0x0

.field public static final MOUSEEVENT_PRESSED:I = 0x0

.field public static final MOUSEEVENT_PRIMARY_BUTTON:I = 0x1

.field public static final MOUSEEVENT_RELEASED:I = 0x1

.field public static final MOUSEEVENT_SECONDARY_BUTTON:I = 0x2

.field public static final MOUSEEVENT_WHEEL:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/embed/AbstractEvents;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusCauseToPeerFocusCause(I)Lcom/sun/javafx/tk/FocusCause;
    .locals 2

    .prologue
    .line 120
    move v0, p0

    .local v0, "focusCause":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 131
    sget-object v1, Lcom/sun/javafx/tk/FocusCause;->ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    move-object v0, v1

    .end local v0    # "focusCause":I
    :goto_0
    return-object v0

    .line 122
    .restart local v0    # "focusCause":I
    :pswitch_0
    sget-object v1, Lcom/sun/javafx/tk/FocusCause;->ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    move-object v0, v1

    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v1, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_FORWARD:Lcom/sun/javafx/tk/FocusCause;

    move-object v0, v1

    goto :goto_0

    .line 126
    :pswitch_2
    sget-object v1, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_BACKWARD:Lcom/sun/javafx/tk/FocusCause;

    move-object v0, v1

    goto :goto_0

    .line 128
    :pswitch_3
    sget-object v1, Lcom/sun/javafx/tk/FocusCause;->DEACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    move-object v0, v1

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static keyIDToFXEventType(I)Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    move v0, p0

    .local v0, "embedKeyID":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 116
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    move-object v0, v1

    .end local v0    # "embedKeyID":I
    :goto_0
    return-object v0

    .line 109
    .restart local v0    # "embedKeyID":I
    :pswitch_0
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 113
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static mouseButtonToFXMouseButton(I)Ljavafx/scene/input/MouseButton;
    .locals 2

    .prologue
    .line 94
    move v0, p0

    .local v0, "embedButton":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 103
    :pswitch_0
    sget-object v1, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    .end local v0    # "embedButton":I
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "embedButton":I
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    goto :goto_0

    .line 98
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    goto :goto_0

    .line 100
    :pswitch_3
    sget-object v1, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static mouseIDToFXEventID(I)Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    move v0, p0

    .local v0, "embedMouseID":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 90
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    move-object v0, v1

    .end local v0    # "embedMouseID":I
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "embedMouseID":I
    :pswitch_0
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 83
    :pswitch_4
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 87
    :pswitch_6
    sget-object v1, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v0, v1

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
