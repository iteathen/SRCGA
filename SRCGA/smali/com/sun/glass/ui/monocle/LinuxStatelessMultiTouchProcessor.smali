.class Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;
.super Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;
.source "LinuxStatelessMultiTouchProcessor.java"


# static fields
.field private static final COORD_UNDEFINED:I = -0x80000000


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    .line 40
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    new-instance v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 41
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    new-instance v3, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 42
    return-void
.end method


# virtual methods
.method public processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v7

    move-object v2, v7

    .line 47
    .local v2, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 48
    const/high16 v7, -0x80000000

    move v3, v7

    .line 49
    .local v3, "x":I
    const/high16 v7, -0x80000000

    move v4, v7

    .line 50
    .local v4, "y":I
    const/4 v7, 0x0

    move v5, v7

    .line 51
    .local v5, "touchReleased":Z
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 52
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventType()S

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 102
    :goto_1
    :pswitch_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->nextEvent()V

    goto :goto_0

    .line 54
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->getValue(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I

    move-result v7

    move v6, v7

    .line 55
    .local v6, "value":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->getAxis(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 65
    :goto_2
    goto :goto_1

    .line 58
    :sswitch_0
    move v7, v6

    move v3, v7

    .line 59
    goto :goto_2

    .line 62
    :sswitch_1
    move v7, v6

    move v4, v7

    goto :goto_2

    .line 68
    .end local v6    # "value":I
    :pswitch_2
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 75
    :cond_0
    :goto_3
    goto :goto_1

    .line 70
    :pswitch_3
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v7

    if-nez v7, :cond_0

    .line 71
    const/4 v7, 0x1

    move v5, v7

    goto :goto_3

    .line 77
    :pswitch_4
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v7

    packed-switch v7, :pswitch_data_2

    :pswitch_5
    goto :goto_1

    .line 89
    :pswitch_6
    move v7, v5

    if-eqz v7, :cond_1

    .line 91
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 92
    const/4 v7, 0x0

    move v5, v7

    .line 94
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchPipeline;->pushState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 95
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 96
    const/high16 v7, -0x80000000

    move v9, v7

    move v7, v9

    move v8, v9

    move v4, v8

    move v3, v7

    .line 97
    goto :goto_1

    .line 79
    :pswitch_7
    move v7, v3

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_2

    move v7, v4

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_2

    .line 80
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v7

    move-object v6, v7

    .line 81
    .local v6, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v7, v6

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 82
    move-object v7, v6

    move v8, v3

    iput v8, v7, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 83
    move-object v7, v6

    move v8, v4

    iput v8, v7, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 85
    .end local v6    # "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_2
    const/high16 v7, -0x80000000

    move v9, v7

    move v7, v9

    move v8, v9

    move v4, v8

    move v3, v7

    .line 86
    goto/16 :goto_1

    .line 104
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchPipeline;->flush()V

    .line 105
    return-void

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x14a
        :pswitch_3
    .end packed-switch

    .line 77
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
