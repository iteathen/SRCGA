.class Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;
.super Ljava/lang/Object;
.source "LinuxMouseProcessor.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/LinuxInputProcessor;


# instance fields
.field private hasPendingState:Z

.field private mouse:Lcom/sun/glass/ui/monocle/MouseInput;

.field private previousState:Lcom/sun/glass/ui/monocle/MouseState;

.field private state:Lcom/sun/glass/ui/monocle/MouseState;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouse:Lcom/sun/glass/ui/monocle/MouseInput;

    .line 33
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    .line 34
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    return-void
.end method

.method private static mouseButtonForKeyCode(I)I
    .locals 2

    .prologue
    .line 123
    move v0, p0

    .local v0, "keyCode":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 131
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "keyCode":I
    :goto_0
    return v0

    .line 125
    .restart local v0    # "keyCode":I
    :pswitch_0
    const/16 v1, 0xd4

    move v0, v1

    goto :goto_0

    .line 127
    :pswitch_1
    const/16 v1, 0xd6

    move v0, v1

    goto :goto_0

    .line 129
    :pswitch_2
    const/16 v1, 0xd5

    move v0, v1

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x110
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendEvent()V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MouseState;->canBeFoldedWith(Lcom/sun/glass/ui/monocle/MouseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->hasPendingState:Z

    .line 119
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 120
    return-void

    .line 111
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->hasPendingState:Z

    if-eqz v1, :cond_1

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouse:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 114
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->hasPendingState:Z

    .line 117
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouse:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    goto :goto_0
.end method


# virtual methods
.method public processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v6

    move-object v2, v6

    .line 44
    .local v2, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouse:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 45
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouse:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 46
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->hasPendingState:Z

    .line 47
    :goto_0
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 48
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 98
    :cond_0
    :goto_1
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->nextEvent()V

    goto :goto_0

    .line 50
    :pswitch_0
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 75
    goto :goto_1

    .line 52
    :sswitch_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MouseState;->getX()I

    move-result v6

    move v3, v6

    .line 53
    .local v3, "x":I
    move v6, v3

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 54
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 55
    goto :goto_1

    .line 57
    .end local v3    # "x":I
    :sswitch_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MouseState;->getY()I

    move-result v6

    move v4, v6

    .line 58
    .local v4, "y":I
    move v6, v4

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v7

    add-int/2addr v6, v7

    move v4, v6

    .line 59
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 60
    goto :goto_1

    .line 62
    .end local v4    # "y":I
    :sswitch_2
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v6

    move v5, v6

    .line 63
    .local v5, "value":I
    move v6, v5

    if-gez v6, :cond_1

    .line 64
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setWheel(I)V

    goto :goto_1

    .line 65
    :cond_1
    move v6, v5

    if-lez v6, :cond_2

    .line 66
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setWheel(I)V

    goto :goto_1

    .line 68
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setWheel(I)V

    .line 70
    goto :goto_1

    .line 77
    .end local v5    # "value":I
    :pswitch_1
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 83
    goto :goto_1

    .line 79
    :pswitch_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->sendEvent()V

    .line 80
    goto :goto_1

    .line 85
    :pswitch_3
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v6

    invoke-static {v6}, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouseButtonForKeyCode(I)I

    move-result v6

    move v3, v6

    .line 86
    .local v3, "button":I
    move v6, v3

    if-ltz v6, :cond_0

    .line 87
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v6

    if-nez v6, :cond_3

    .line 88
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->releaseButton(I)V

    goto/16 :goto_1

    .line 90
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    goto/16 :goto_1

    .line 100
    .end local v3    # "button":I
    :cond_4
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->hasPendingState:Z

    if-eqz v6, :cond_5

    .line 101
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->mouse:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;->previousState:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 103
    :cond_5
    return-void

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 77
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
