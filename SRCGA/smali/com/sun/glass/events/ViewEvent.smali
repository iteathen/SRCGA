.class public Lcom/sun/glass/events/ViewEvent;
.super Ljava/lang/Object;
.source "ViewEvent.java"


# static fields
.field public static final ADD:I = 0x19b

.field public static final FULLSCREEN_ENTER:I = 0x1af

.field public static final FULLSCREEN_EXIT:I = 0x1b0

.field public static final MOVE:I = 0x1a7

.field public static final REMOVE:I = 0x19c

.field public static final REPAINT:I = 0x1a5

.field public static final RESIZE:I = 0x1a6


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/ViewEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    move v0, p0

    .local v0, "type":I
    const-string v2, "UNKNOWN"

    move-object v1, v2

    .line 40
    .local v1, "string":Ljava/lang/String;
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 52
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown view event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":I
    return-object v0

    .line 41
    .restart local v0    # "type":I
    :sswitch_0
    const-string v2, "ADD"

    move-object v1, v2

    goto :goto_0

    .line 42
    :sswitch_1
    const-string v2, "REMOVE"

    move-object v1, v2

    goto :goto_0

    .line 44
    :sswitch_2
    const-string v2, "REPAINT"

    move-object v1, v2

    goto :goto_0

    .line 45
    :sswitch_3
    const-string v2, "RESIZE"

    move-object v1, v2

    goto :goto_0

    .line 46
    :sswitch_4
    const-string v2, "MOVE"

    move-object v1, v2

    goto :goto_0

    .line 48
    :sswitch_5
    const-string v2, "FULLSCREEN_ENTER"

    move-object v1, v2

    goto :goto_0

    .line 49
    :sswitch_6
    const-string v2, "FULLSCREEN_EXIT"

    move-object v1, v2

    goto :goto_0

    .line 40
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
