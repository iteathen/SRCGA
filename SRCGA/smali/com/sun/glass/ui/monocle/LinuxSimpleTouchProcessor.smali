.class Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;
.super Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;
.source "LinuxSimpleTouchProcessor.java"


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    .line 32
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    new-instance v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 33
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    new-instance v3, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 34
    return-void
.end method


# virtual methods
.method public processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v5

    move-object v2, v5

    .line 39
    .local v2, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 40
    const/4 v5, 0x0

    move v3, v5

    .line 41
    .local v3, "touchReleased":Z
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 42
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventType()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 92
    :goto_1
    :pswitch_0
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->nextEvent()V

    goto :goto_0

    .line 44
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->getValue(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I

    move-result v5

    move v4, v5

    .line 45
    .local v4, "value":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->getAxis(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 63
    :goto_2
    goto :goto_1

    .line 48
    :sswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 49
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v5

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    goto :goto_2

    .line 51
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v5

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 53
    goto :goto_2

    .line 56
    :sswitch_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 57
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v5

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    goto :goto_2

    .line 59
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v5

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    goto :goto_2

    .line 66
    .end local v4    # "value":I
    :pswitch_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 76
    :cond_2
    :goto_3
    goto :goto_1

    .line 68
    :pswitch_3
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v5

    if-nez v5, :cond_3

    .line 69
    const/4 v5, 0x1

    move v3, v5

    goto :goto_3

    .line 70
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 72
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v5

    goto :goto_3

    .line 78
    :pswitch_4
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_1

    .line 80
    :pswitch_5
    move v5, v3

    if-eqz v5, :cond_4

    .line 82
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 83
    const/4 v5, 0x0

    move v3, v5

    .line 85
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchPipeline;->pushState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 86
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 87
    goto/16 :goto_1

    .line 94
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/TouchPipeline;->flush()V

    .line 95
    return-void

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch

    .line 66
    :pswitch_data_1
    .packed-switch 0x14a
        :pswitch_3
    .end packed-switch

    .line 78
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
