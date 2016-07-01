.class Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;
.super Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;
.source "LinuxStatefulMultiTouchProcessor.java"


# static fields
.field private static final COORD_UNDEFINED:I = -0x80000000

.field private static final ID_UNASSIGNED:I = -0x1


# instance fields
.field private currentID:I

.field private currentSlot:I

.field private final slotToIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    .line 38
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentSlot:I

    .line 41
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->slotToIDMap:Ljava/util/Map;

    .line 46
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    new-instance v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 47
    return-void
.end method

.method private updatePoint(II)V
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    .line 155
    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v4

    move-object v3, v4

    .line 156
    .local v3, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 157
    new-instance v4, Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/TouchState$Point;-><init>()V

    move-object v3, v4

    .line 158
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 159
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v4

    move-object v3, v4

    .line 161
    :cond_0
    move v4, v1

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 162
    move-object v4, v3

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 164
    :cond_1
    move v4, v2

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    .line 165
    move-object v4, v3

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method public processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 12

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v7

    move-object v2, v7

    .line 52
    .local v2, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    const/high16 v7, -0x80000000

    move v3, v7

    .line 53
    .local v3, "x":I
    const/high16 v7, -0x80000000

    move v4, v7

    .line 56
    .local v4, "y":I
    const/4 v7, 0x0

    move v5, v7

    .line 57
    .local v5, "allPointsReleased":Z
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 58
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventType()S

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 148
    :goto_1
    :pswitch_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->nextEvent()V

    goto :goto_0

    .line 60
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->getValue(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I

    move-result v7

    move v6, v7

    .line 61
    .local v6, "value":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->getAxis(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 100
    :cond_0
    :goto_2
    goto :goto_1

    .line 65
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move v7, v3

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_1

    move v7, v4

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_2

    .line 67
    :cond_1
    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->updatePoint(II)V

    .line 68
    const/high16 v7, -0x80000000

    move v11, v7

    move v7, v11

    move v8, v11

    move v4, v8

    move v3, v7

    .line 72
    :cond_2
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentSlot:I

    .line 73
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->slotToIDMap:Ljava/util/Map;

    move-object v9, v0

    iget v9, v9, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentSlot:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, -0x1

    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 73
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    .line 75
    goto :goto_2

    .line 77
    :sswitch_1
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 78
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchState;->removePointForID(I)V

    .line 80
    :cond_3
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    .line 81
    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 82
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->slotToIDMap:Ljava/util/Map;

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentSlot:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 84
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->slotToIDMap:Ljava/util/Map;

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentSlot:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 86
    goto :goto_2

    .line 89
    :sswitch_2
    move v7, v3

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_0

    .line 90
    move v7, v6

    move v3, v7

    goto/16 :goto_2

    .line 95
    :sswitch_3
    move v7, v4

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_0

    .line 96
    move v7, v6

    move v4, v7

    goto/16 :goto_2

    .line 104
    .end local v6    # "value":I
    :pswitch_2
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 112
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 106
    :pswitch_3
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v7

    if-nez v7, :cond_5

    .line 107
    const/4 v7, 0x1

    move v5, v7

    goto :goto_3

    .line 116
    :pswitch_4
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v7

    packed-switch v7, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_1

    .line 131
    :pswitch_6
    move v7, v3

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_6

    move v7, v4

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_a

    :cond_6
    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    .line 136
    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->updatePoint(II)V

    .line 140
    :cond_7
    :goto_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchPipeline;->pushState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 141
    const/high16 v7, -0x80000000

    move v11, v7

    move v7, v11

    move v8, v11

    move v4, v8

    move v3, v7

    .line 142
    const/4 v7, 0x0

    move v5, v7

    .line 143
    goto/16 :goto_1

    .line 118
    :pswitch_7
    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 119
    move v7, v3

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_9

    move v7, v4

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_9

    .line 121
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchState;->removePointForID(I)V

    .line 122
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->currentID:I

    .line 127
    :cond_8
    :goto_5
    const/high16 v7, -0x80000000

    move v11, v7

    move v7, v11

    move v8, v11

    move v4, v8

    move v3, v7

    .line 128
    goto/16 :goto_1

    .line 124
    :cond_9
    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->updatePoint(II)V

    goto :goto_5

    .line 137
    :cond_a
    move v7, v5

    if-eqz v7, :cond_7

    .line 138
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    goto :goto_4

    .line 150
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchPipeline;->flush()V

    .line 151
    return-void

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 61
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2f -> :sswitch_0
        0x35 -> :sswitch_2
        0x36 -> :sswitch_3
        0x39 -> :sswitch_1
    .end sparse-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x14a
        :pswitch_3
    .end packed-switch

    .line 116
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
