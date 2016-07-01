.class public Lcom/sun/javafx/scene/control/behavior/KeyBinding;
.super Ljava/lang/Object;
.source "KeyBinding.java"


# instance fields
.field private action:Ljava/lang/String;

.field private alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

.field private code:Ljavafx/scene/input/KeyCode;

.field private ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

.field private eventType:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

.field private shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;


# direct methods
.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "action":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v0

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    .line 55
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 56
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 57
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 58
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 61
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->code:Ljavafx/scene/input/KeyCode;

    .line 62
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->action:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/KeyCode;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object v3, p3

    .local v3, "action":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v4, v0

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    .line 55
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 56
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 57
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 58
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 66
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->code:Ljavafx/scene/input/KeyCode;

    .line 67
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    .line 68
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->action:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public alt(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 95
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public ctrl(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 86
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->action:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public final getAlt()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public final getCode()Ljavafx/scene/input/KeyCode;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->code:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public final getCtrl()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public final getMeta()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public final getShift()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public getSpecificity(Ljavafx/scene/control/Control;Ljavafx/scene/input/KeyEvent;)I
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;
    move-object v2, p2

    .local v2, "event":Ljavafx/scene/input/KeyEvent;
    const/4 v4, 0x0

    move v3, v4

    .line 146
    .local v3, "s":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->code:Ljavafx/scene/input/KeyCode;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->code:Ljavafx/scene/input/KeyCode;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 153
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    :goto_0
    return v0

    .line 146
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    :cond_0
    const/4 v4, 0x1

    move v3, v4

    .line 147
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->equals(Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-eq v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 148
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->equals(Z)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-eq v4, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 149
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->equals(Z)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-eq v4, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 150
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->equals(Z)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-eq v4, v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 151
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    if-eqz v4, :cond_9

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    if-eq v4, v5, :cond_9

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 153
    move v4, v3

    move v0, v4

    goto/16 :goto_0
.end method

.method public final getType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public meta()Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public meta(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 104
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public shift(Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;)Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 77
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method

.method public shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StubToolkit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isMac()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    .line 131
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    :goto_0
    return-object v0

    .line 114
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 117
    :cond_1
    sget-object v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 131
    move-object v1, v0

    move-object v0, v1

    goto :goto_0

    .line 119
    :pswitch_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 122
    :pswitch_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 125
    :pswitch_2
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 128
    :pswitch_3
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyBinding [code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->code:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shift="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", meta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->meta:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->eventType:Ljavafx/event/EventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    return-object v0
.end method
