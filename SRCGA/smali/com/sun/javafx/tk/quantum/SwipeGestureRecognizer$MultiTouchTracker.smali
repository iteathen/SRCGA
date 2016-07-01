.class Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
.super Ljava/lang/Object;
.source "SwipeGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiTouchTracker"
.end annotation


# instance fields
.field cc:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

.field private currentTouchCount:I

.field direct:Z

.field modifiers:I

.field state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;

.field private touchCount:I

.field trackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->this$0:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 216
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 217
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->trackers:Ljava/util/Map;

    .line 219
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;-><init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->cc:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;)V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;-><init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public params(IZ)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move v1, p1

    .local v1, "modifiers":I
    move v2, p2

    .local v2, "direct":Z
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->modifiers:I

    .line 228
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->direct:Z

    .line 229
    return-void
.end method

.method public pressed(JJDDDD)V
    .locals 27

    .prologue
    .line 232
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move-wide/from16 v2, p1

    .local v2, "id":J
    move-wide/from16 v4, p3

    .local v4, "nanos":J
    move-wide/from16 v6, p5

    .local v6, "x":D
    move-wide/from16 v8, p7

    .local v8, "y":D
    move-wide/from16 v10, p9

    .local v10, "xAbs":D
    move-wide/from16 v12, p11

    .local v12, "yAbs":D
    move-object v15, v1

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    .line 233
    sget-object v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;->$SwitchMap$com$sun$javafx$tk$quantum$SwipeGestureRecognizer$SwipeRecognitionState:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 235
    :pswitch_0
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    .line 236
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->ADDING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 239
    :pswitch_1
    new-instance v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;-><init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;)V

    move-object v14, v15

    .line 240
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->start(JDDDD)V

    .line 241
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 242
    goto :goto_0

    .line 245
    .end local v14    # "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    :pswitch_2
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 246
    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public progress(JJDD)V
    .locals 19

    .prologue
    .line 308
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move-wide/from16 v2, p1

    .local v2, "id":J
    move-wide/from16 v4, p3

    .local v4, "nanos":J
    move-wide/from16 v6, p5

    .local v6, "x":D
    move-wide/from16 v8, p7

    .local v8, "y":D
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    sget-object v12, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    if-ne v11, v12, :cond_0

    .line 309
    .line 322
    :goto_0
    return-void

    .line 312
    :cond_0
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->trackers:Ljava/util/Map;

    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;

    move-object v10, v11

    .line 314
    .local v10, "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v11, v10

    if-nez v11, :cond_1

    .line 316
    move-object v11, v1

    sget-object v12, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    iput-object v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 317
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string v13, "Error in swipe gesture recognition: reported unknown touch point"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 321
    :cond_1
    move-object v11, v10

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v17}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->progress(JDD)V

    .line 322
    goto :goto_0
.end method

.method public released(JJDDDD)V
    .locals 29

    .prologue
    .line 253
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move-wide/from16 v3, p1

    .local v3, "id":J
    move-wide/from16 v5, p3

    .local v5, "nanos":J
    move-wide/from16 v7, p5

    .local v7, "x":D
    move-wide/from16 v9, p7

    .local v9, "y":D
    move-wide/from16 v11, p9

    .local v11, "xAbs":D
    move-wide/from16 v13, p11

    .local v13, "yAbs":D
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 254
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->trackers:Ljava/util/Map;

    move-object/from16 v17, v0

    move-wide/from16 v18, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;

    move-object/from16 v15, v17

    .line 256
    .local v15, "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object/from16 v17, v15

    if-nez v17, :cond_0

    .line 258
    move-object/from16 v17, v2

    sget-object v18, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 259
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    const-string v19, "Error in swipe gesture recognition: released unknown touch point"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 263
    :cond_0
    move-object/from16 v17, v15

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v17 .. v27}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->end(JDDDD)V

    .line 264
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->cc:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginX:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginY:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginAbsX:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v15

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginAbsY:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v17 .. v25}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->add(DDDD)V

    .line 266
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->cc:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endX:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endY:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endAbsX:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v15

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endAbsY:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v17 .. v25}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->add(DDDD)V

    .line 269
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->this$0:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->access$300(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;)Ljavafx/event/EventType;

    move-result-object v17

    move-object/from16 v16, v17

    .line 271
    .local v16, "swipeType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    sget-object v17, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;->$SwitchMap$com$sun$javafx$tk$quantum$SwipeGestureRecognizer$SwipeRecognitionState:[I

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 291
    :cond_1
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->trackers:Ljava/util/Map;

    move-object/from16 v17, v0

    move-wide/from16 v18, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 294
    .end local v15    # "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    .end local v16    # "swipeType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    .line 296
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 297
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->REMOVING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 298
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->this$0:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->type:Ljavafx/event/EventType;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->cc:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->touchCount:I

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->modifiers:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->direct:Z

    move/from16 v22, v0

    invoke-static/range {v17 .. v22}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->access$400(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Ljavafx/event/EventType;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IIZ)V

    .line 301
    :cond_3
    move-object/from16 v17, v2

    sget-object v18, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 302
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->reset()V

    .line 304
    :cond_4
    return-void

    .line 273
    .restart local v15    # "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    .restart local v16    # "swipeType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    :pswitch_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->reset()V

    .line 274
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    const-string v19, "Error in swipe gesture recognition: released touch point outside of gesture"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 278
    :pswitch_1
    move-object/from16 v17, v2

    sget-object v18, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->REMOVING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 279
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->currentTouchCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->touchCount:I

    .line 280
    move-object/from16 v17, v2

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->type:Ljavafx/event/EventType;

    .line 281
    goto/16 :goto_0

    .line 283
    :pswitch_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->type:Ljavafx/event/EventType;

    move-object/from16 v17, v0

    move-object/from16 v18, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 285
    move-object/from16 v17, v2

    sget-object v18, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method reset()V
    .locals 3

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->trackers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 326
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->cc:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->reset()V

    .line 327
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 328
    return-void
.end method
