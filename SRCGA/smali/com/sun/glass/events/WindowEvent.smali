.class public Lcom/sun/glass/events/WindowEvent;
.super Ljava/lang/Object;
.source "WindowEvent.java"


# static fields
.field public static final CLOSE:I = 0x209

.field public static final DESTROY:I = 0x20a

.field public static final FOCUS_DISABLED:I = 0x221

.field public static final FOCUS_GAINED:I = 0x21e

.field public static final FOCUS_GAINED_BACKWARD:I = 0x220

.field public static final FOCUS_GAINED_FORWARD:I = 0x21f

.field public static final FOCUS_LOST:I = 0x21d

.field public static final FOCUS_UNGRAB:I = 0x222

.field public static final MAXIMIZE:I = 0x214

.field public static final MINIMIZE:I = 0x213

.field public static final MOVE:I = 0x200

.field public static final RESIZE:I = 0x1ff

.field public static final RESTORE:I = 0x215

.field public static final _FOCUS_MAX:I = 0x220

.field public static final _FOCUS_MIN:I = 0x21d


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/WindowEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move v0, p0

    .local v0, "eventType":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 77
    const-string v1, "UNKNOWN"

    move-object v0, v1

    .end local v0    # "eventType":I
    :goto_0
    return-object v0

    .line 51
    .restart local v0    # "eventType":I
    :sswitch_0
    const-string v1, "RESIZE"

    move-object v0, v1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v1, "MOVE"

    move-object v0, v1

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v1, "CLOSE"

    move-object v0, v1

    goto :goto_0

    .line 57
    :sswitch_3
    const-string v1, "DESTROY"

    move-object v0, v1

    goto :goto_0

    .line 59
    :sswitch_4
    const-string v1, "MINIMIZE"

    move-object v0, v1

    goto :goto_0

    .line 61
    :sswitch_5
    const-string v1, "MAXIMIZE"

    move-object v0, v1

    goto :goto_0

    .line 63
    :sswitch_6
    const-string v1, "RESTORE"

    move-object v0, v1

    goto :goto_0

    .line 65
    :sswitch_7
    const-string v1, "FOCUS_LOST"

    move-object v0, v1

    goto :goto_0

    .line 67
    :sswitch_8
    const-string v1, "FOCUS_GAINED"

    move-object v0, v1

    goto :goto_0

    .line 69
    :sswitch_9
    const-string v1, "FOCUS_GAINED_FORWARD"

    move-object v0, v1

    goto :goto_0

    .line 71
    :sswitch_a
    const-string v1, "FOCUS_GAINED_BACKWARD"

    move-object v0, v1

    goto :goto_0

    .line 73
    :sswitch_b
    const-string v1, "FOCUS_DISABLED"

    move-object v0, v1

    goto :goto_0

    .line 75
    :sswitch_c
    const-string v1, "FOCUS_UNGRAB"

    move-object v0, v1

    goto :goto_0

    .line 49
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
