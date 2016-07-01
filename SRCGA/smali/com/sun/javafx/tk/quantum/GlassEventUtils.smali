.class Lcom/sun/javafx/tk/quantum/GlassEventUtils;
.super Ljava/lang/Object;
.source "GlassEventUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassEventUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getMouseEventString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    move v0, p0

    .local v0, "type":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 65
    :pswitch_0
    const-string v1, "UNKNOWN"

    move-object v0, v1

    .end local v0    # "type":I
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "type":I
    :pswitch_1
    const-string v1, "BUTTON_NONE"

    move-object v0, v1

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v1, "BUTTON_LEFT"

    move-object v0, v1

    goto :goto_0

    .line 45
    :pswitch_3
    const-string v1, "BUTTON_RIGHT"

    move-object v0, v1

    goto :goto_0

    .line 47
    :pswitch_4
    const-string v1, "BUTTON_OTHER"

    move-object v0, v1

    goto :goto_0

    .line 49
    :pswitch_5
    const-string v1, "DOWN"

    move-object v0, v1

    goto :goto_0

    .line 51
    :pswitch_6
    const-string v1, "UP"

    move-object v0, v1

    goto :goto_0

    .line 53
    :pswitch_7
    const-string v1, "DRAG"

    move-object v0, v1

    goto :goto_0

    .line 55
    :pswitch_8
    const-string v1, "MOVE"

    move-object v0, v1

    goto :goto_0

    .line 57
    :pswitch_9
    const-string v1, "ENTER"

    move-object v0, v1

    goto :goto_0

    .line 59
    :pswitch_a
    const-string v1, "EXIT"

    move-object v0, v1

    goto :goto_0

    .line 61
    :pswitch_b
    const-string v1, "CLICK"

    move-object v0, v1

    goto :goto_0

    .line 63
    :pswitch_c
    const-string v1, "WHEEL"

    move-object v0, v1

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getViewEventString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move v0, p0

    .local v0, "type":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 86
    const-string v1, "UNKNOWN"

    move-object v0, v1

    .end local v0    # "type":I
    :goto_0
    return-object v0

    .line 72
    .restart local v0    # "type":I
    :sswitch_0
    const-string v1, "ADD"

    move-object v0, v1

    goto :goto_0

    .line 74
    :sswitch_1
    const-string v1, "REMOVE"

    move-object v0, v1

    goto :goto_0

    .line 76
    :sswitch_2
    const-string v1, "REPAINT"

    move-object v0, v1

    goto :goto_0

    .line 78
    :sswitch_3
    const-string v1, "RESIZE"

    move-object v0, v1

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v1, "MOVE"

    move-object v0, v1

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v1, "FULLSCREEN_ENTER"

    move-object v0, v1

    goto :goto_0

    .line 84
    :sswitch_6
    const-string v1, "FULLSCREEN_EXIT"

    move-object v0, v1

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x19b -> :sswitch_0
        0x19c -> :sswitch_1
        0x1a5 -> :sswitch_2
        0x1a6 -> :sswitch_3
        0x1a7 -> :sswitch_4
        0x1af -> :sswitch_5
        0x1b0 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getWindowEventString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    move v0, p0

    .local v0, "type":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 119
    const-string v1, "UNKNOWN"

    move-object v0, v1

    .end local v0    # "type":I
    :goto_0
    return-object v0

    .line 93
    .restart local v0    # "type":I
    :sswitch_0
    const-string v1, "RESIZE"

    move-object v0, v1

    goto :goto_0

    .line 95
    :sswitch_1
    const-string v1, "MOVE"

    move-object v0, v1

    goto :goto_0

    .line 97
    :sswitch_2
    const-string v1, "CLOSE"

    move-object v0, v1

    goto :goto_0

    .line 99
    :sswitch_3
    const-string v1, "DESTROY"

    move-object v0, v1

    goto :goto_0

    .line 101
    :sswitch_4
    const-string v1, "MINIMIZE"

    move-object v0, v1

    goto :goto_0

    .line 103
    :sswitch_5
    const-string v1, "MAXIMIZE"

    move-object v0, v1

    goto :goto_0

    .line 105
    :sswitch_6
    const-string v1, "RESTORE"

    move-object v0, v1

    goto :goto_0

    .line 107
    :sswitch_7
    const-string v1, "FOCUS_LOST"

    move-object v0, v1

    goto :goto_0

    .line 109
    :sswitch_8
    const-string v1, "FOCUS_GAINED"

    move-object v0, v1

    goto :goto_0

    .line 111
    :sswitch_9
    const-string v1, "FOCUS_GAINED_FORWARD"

    move-object v0, v1

    goto :goto_0

    .line 113
    :sswitch_a
    const-string v1, "FOCUS_GAINED_BACKWARD"

    move-object v0, v1

    goto :goto_0

    .line 115
    :sswitch_b
    const-string v1, "FOCUS_DISABLED"

    move-object v0, v1

    goto :goto_0

    .line 117
    :sswitch_c
    const-string v1, "FOCUS_UNGRAB"

    move-object v0, v1

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ff -> :sswitch_0
        0x200 -> :sswitch_1
        0x209 -> :sswitch_2
        0x20a -> :sswitch_3
        0x213 -> :sswitch_4
        0x214 -> :sswitch_5
        0x215 -> :sswitch_6
        0x21d -> :sswitch_7
        0x21e -> :sswitch_8
        0x21f -> :sswitch_9
        0x220 -> :sswitch_a
        0x221 -> :sswitch_b
        0x222 -> :sswitch_c
    .end sparse-switch
.end method
