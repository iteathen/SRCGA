.class public Lcom/sun/glass/ui/TouchInputSupport;
.super Ljava/lang/Object;
.source "TouchInputSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;,
        Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    }
.end annotation


# instance fields
.field private curIsDirect:Z

.field private curModifiers:I

.field private curTouchCount:I

.field private curView:Lcom/sun/glass/ui/View;

.field private filterTouchCoordinates:Z

.field private listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

.field private touch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;",
            ">;"
        }
    .end annotation
.end field

.field private touchCount:I


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;Z)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;
    move v2, p2

    .local v2, "filterTouchCoordinates":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 63
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 64
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    .line 65
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/TouchInputSupport;->filterTouchCoordinates:Z

    .line 66
    move v3, v2

    if-eqz v3, :cond_0

    .line 67
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    .line 69
    :cond_0
    return-void
.end method

.method private filterTouchInputState(IJIIII)I
    .locals 20

    .prologue
    .line 146
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport;
    move/from16 v1, p1

    .local v1, "state":I
    move-wide/from16 v2, p2

    .local v2, "id":J
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "xAbs":I
    move/from16 v7, p7

    .local v7, "yAbs":I
    move v9, v1

    packed-switch v9, :pswitch_data_0

    .line 163
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown touch state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    :goto_0
    move v9, v1

    move v0, v9

    .end local v0    # "this":Lcom/sun/glass/ui/TouchInputSupport;
    return v0

    .line 148
    .restart local v0    # "this":Lcom/sun/glass/ui/TouchInputSupport;
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;

    move-object v8, v9

    .line 152
    .local v8, "c":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move v9, v4

    move-object v10, v8

    invoke-static {v10}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->access$000(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I

    move-result v10

    if-ne v9, v10, :cond_0

    move v9, v5

    move-object v10, v8

    invoke-static {v10}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->access$100(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 153
    const/16 v9, 0x32e

    move v1, v9

    .line 154
    goto :goto_0

    .line 158
    .end local v8    # "c":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    :cond_0
    :pswitch_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;-><init>(IIIILcom/sun/glass/ui/TouchInputSupport$1;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 159
    goto :goto_0

    .line 161
    :pswitch_3
    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x32b
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getTouchCount()I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 73
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/TouchInputSupport;
    return v0
.end method

.method public notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V
    .locals 16

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "modifiers":I
    move/from16 v3, p3

    .local v3, "isDirect":Z
    move/from16 v4, p4

    .local v4, "touchEventCount":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    if-eqz v8, :cond_2

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    if-eq v8, v9, :cond_2

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 80
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    invoke-virtual {v8}, Lcom/sun/glass/ui/View;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 82
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/glass/ui/View;->notifyBeginTouchEvent(IZI)V

    .line 83
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v6, v8

    .line 84
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;>;"
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;

    move-object v7, v8

    .line 85
    .local v7, "coord":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    const/16 v9, 0x32d

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v12, v7

    invoke-static {v12}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->access$000(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I

    move-result v12

    move-object v13, v7

    invoke-static {v13}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->access$100(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I

    move-result v13

    move-object v14, v7

    invoke-static {v14}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->access$200(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I

    move-result v14

    move-object v15, v7

    invoke-static {v15}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->access$300(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I

    move-result v15

    invoke-virtual/range {v8 .. v15}, Lcom/sun/glass/ui/View;->notifyNextTouchEvent(IJIIII)V

    .line 86
    goto :goto_0

    .line 87
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;>;"
    .end local v7    # "coord":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    invoke-virtual {v8}, Lcom/sun/glass/ui/View;->notifyEndTouchEvent()V

    .line 89
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 90
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 91
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    if-eqz v8, :cond_2

    .line 92
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;->touchCountChanged(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V

    .line 96
    :cond_2
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    iput v9, v8, Lcom/sun/glass/ui/TouchInputSupport;->curTouchCount:I

    .line 97
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    .line 98
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/glass/ui/TouchInputSupport;->curModifiers:I

    .line 99
    move-object v8, v0

    move v9, v3

    iput-boolean v9, v8, Lcom/sun/glass/ui/TouchInputSupport;->curIsDirect:Z

    .line 100
    move-object v8, v1

    if-eqz v8, :cond_3

    .line 101
    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/glass/ui/View;->notifyBeginTouchEvent(IZI)V

    .line 103
    :cond_3
    return-void
.end method

.method public notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 107
    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/View;->notifyEndTouchEvent()V

    .line 113
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/TouchInputSupport;->curTouchCount:I

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/TouchInputSupport;->curTouchCount:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    if-eqz v2, :cond_1

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/TouchInputSupport;->curModifiers:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/glass/ui/TouchInputSupport;->curIsDirect:Z

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;->touchCountChanged(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V

    .line 117
    :cond_1
    goto :goto_0
.end method

.method public notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V
    .locals 19

    .prologue
    .line 122
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/TouchInputSupport;
    move-object/from16 v2, p1

    .local v2, "view":Lcom/sun/glass/ui/View;
    move/from16 v3, p2

    .local v3, "state":I
    move-wide/from16 v4, p3

    .local v4, "id":J
    move/from16 v6, p5

    .local v6, "x":I
    move/from16 v7, p6

    .local v7, "y":I
    move/from16 v8, p7

    .local v8, "xAbs":I
    move/from16 v9, p8

    .local v9, "yAbs":I
    move v10, v3

    packed-switch v10, :pswitch_data_0

    .line 133
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown touch state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    .line 143
    :goto_0
    return-void

    .line 124
    :pswitch_0
    move-object v10, v1

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    iget v11, v11, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 125
    .line 136
    :goto_1
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/glass/ui/TouchInputSupport;->filterTouchCoordinates:Z

    if-eqz v10, :cond_0

    .line 137
    move-object v10, v1

    move v11, v3

    move-wide v12, v4

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/sun/glass/ui/TouchInputSupport;->filterTouchInputState(IJIIII)I

    move-result v10

    move v3, v10

    .line 140
    :cond_0
    move-object v10, v2

    if-eqz v10, :cond_1

    .line 141
    move-object v10, v2

    move v11, v3

    move-wide v12, v4

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/sun/glass/ui/View;->notifyNextTouchEvent(IJIIII)V

    .line 143
    :cond_1
    goto :goto_0

    .line 127
    :pswitch_1
    move-object v10, v1

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    iget v11, v11, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 128
    goto :goto_1

    .line 131
    :pswitch_2
    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x32b
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
