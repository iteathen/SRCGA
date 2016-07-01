.class Lcom/sun/glass/ui/monocle/MouseInput;
.super Ljava/lang/Object;
.source "MouseInput.java"


# static fields
.field private static final DRAG_DROP:I = 0x4

.field private static final DRAG_ENTER:I = 0x1

.field private static final DRAG_LEAVE:I = 0x2

.field private static final DRAG_OVER:I = 0x3

.field private static instance:Lcom/sun/glass/ui/monocle/MouseInput;


# instance fields
.field private buttons:Lcom/sun/glass/ui/monocle/IntSet;

.field private dragActions:Ljava/util/BitSet;

.field private dragButton:I

.field private dragInProgress:Z

.field private dragView:Lcom/sun/glass/ui/monocle/MonocleView;

.field private state:Lcom/sun/glass/ui/monocle/MouseState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/MouseInput;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/MouseInput;->instance:Lcom/sun/glass/ui/monocle/MouseInput;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    .line 42
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/IntSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/IntSet;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->dragInProgress:Z

    .line 47
    move-object v1, v0

    const/16 v2, 0xd3

    iput v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->dragButton:I

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    .line 51
    move-object v1, v0

    new-instance v2, Ljava/util/BitSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MouseInput;->lambda$setState$97(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MouseInput;->lambda$setState$98(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-wide v14, v6

    move/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/sun/glass/ui/monocle/MouseInput;->lambda$setState$99(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v11 .. v21}, Lcom/sun/glass/ui/monocle/MouseInput;->lambda$postMouseEvent$100(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    return-void
.end method

.method static getInstance()Lcom/sun/glass/ui/monocle/MouseInput;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sun/glass/ui/monocle/MouseInput;->instance:Lcom/sun/glass/ui/monocle/MouseInput;

    return-object v0
.end method

.method private synthetic lambda$postMouseEvent$100(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V
    .locals 22

    .prologue
    .line 227
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move/from16 v2, p2

    .local v2, "eventType":I
    move/from16 v3, p3

    .local v3, "button":I
    move/from16 v4, p4

    .local v4, "relX":I
    move/from16 v5, p5

    .local v5, "relY":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    move/from16 v9, p9

    .local v9, "isPopupTrigger":Z
    move/from16 v10, p10

    .local v10, "synthesized":Z
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v11 .. v21}, Lcom/sun/glass/ui/monocle/MouseInput;->notifyMouse(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    .line 230
    return-void
.end method

.method private static synthetic lambda$setState$97(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "oldWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->notifyFocusDisabled(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    .line 102
    return-void
.end method

.method private static synthetic lambda$setState$98(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->notifyFocusDisabled(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    .line 140
    return-void
.end method

.method private static synthetic lambda$setState$99(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V
    .locals 27

    .prologue
    .line 213
    move-object/from16 v1, p0

    .local v1, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move/from16 v2, p1

    .local v2, "relX":I
    move/from16 v3, p2

    .local v3, "relY":I
    move/from16 v4, p3

    .local v4, "x":I
    move/from16 v5, p4

    .local v5, "y":I
    move-wide/from16 v6, p5

    .local v6, "dY":D
    move/from16 v8, p7

    .local v8, "modifiers":I
    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v6

    move/from16 v18, v8

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v9 .. v26}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyScroll(IIIIDDIIIIIDD)V

    .line 216
    return-void
.end method

.method private notifyMouse(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V
    .locals 22

    .prologue
    .line 236
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move/from16 v2, p2

    .local v2, "eventType":I
    move/from16 v3, p3

    .local v3, "button":I
    move/from16 v4, p4

    .local v4, "relX":I
    move/from16 v5, p5

    .local v5, "relY":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    move/from16 v9, p9

    .local v9, "isPopupTrigger":Z
    move/from16 v10, p10

    .local v10, "synthesized":Z
    move v12, v2

    packed-switch v12, :pswitch_data_0

    .line 314
    :cond_0
    :goto_0
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v12 .. v21}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyMouse(IIIIIIIZZ)V

    .line 318
    :goto_1
    return-void

    .line 238
    :pswitch_0
    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragButton:I

    const/16 v13, 0xd3

    if-ne v12, v13, :cond_0

    .line 239
    move-object v12, v0

    move v13, v3

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragButton:I

    goto :goto_0

    .line 244
    :pswitch_1
    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragButton:I

    move v13, v3

    if-ne v12, v13, :cond_0

    .line 245
    move-object v12, v0

    const/16 v13, 0xd3

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragButton:I

    .line 246
    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragInProgress:Z

    if-eqz v12, :cond_0

    .line 248
    move-object v12, v1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x2

    :try_start_0
    invoke-virtual/range {v12 .. v17}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyDragDrop(IIIII)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 252
    .line 254
    :goto_2
    move-object v12, v1

    const/4 v13, 0x2

    :try_start_1
    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyDragEnd(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .line 258
    :goto_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v12

    check-cast v12, Lcom/sun/glass/ui/monocle/MonocleApplication;

    invoke-virtual {v12}, Lcom/sun/glass/ui/monocle/MonocleApplication;->leaveDndEventLoop()V

    .line 259
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->clear()V

    .line 260
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    .line 261
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragInProgress:Z

    goto :goto_0

    .line 250
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 251
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 255
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 256
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 267
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :pswitch_2
    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragButton:I

    const/16 v13, 0xd3

    if-eq v12, v13, :cond_0

    .line 268
    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragInProgress:Z

    if-eqz v12, :cond_5

    .line 269
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v13, v1

    if-ne v12, v13, :cond_2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 272
    move-object v12, v1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x2

    :try_start_2
    invoke-virtual/range {v12 .. v17}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyDragEnter(IIIII)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    .line 276
    .line 277
    :goto_4
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    .line 304
    :cond_1
    :goto_5
    goto/16 :goto_1

    .line 274
    :catch_2
    move-exception v12

    move-object v11, v12

    .line 275
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 278
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v13, v1

    if-ne v12, v13, :cond_3

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 280
    move-object v12, v1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x2

    :try_start_3
    invoke-virtual/range {v12 .. v17}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyDragOver(IIIII)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    .line 284
    .line 285
    :goto_6
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    .line 282
    :catch_3
    move-exception v12

    move-object v11, v12

    .line 283
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 286
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v13, v1

    if-eq v12, v13, :cond_1

    .line 287
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    if-eqz v12, :cond_4

    .line 289
    move-object v12, v0

    :try_start_4
    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    invoke-virtual {v12}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyDragLeave()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 292
    .line 295
    :cond_4
    :goto_7
    move-object v12, v1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x2

    :try_start_5
    invoke-virtual/range {v12 .. v17}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyDragEnter(IIIII)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v12

    .line 299
    .line 300
    :goto_8
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->clear()V

    .line 301
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragActions:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    .line 302
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    goto :goto_5

    .line 290
    :catch_4
    move-exception v12

    move-object v11, v12

    .line 291
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 297
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v12

    move-object v11, v12

    .line 298
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 306
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_5
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    if-nez v12, :cond_0

    .line 307
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/sun/glass/ui/monocle/MouseInput;->dragView:Lcom/sun/glass/ui/monocle/MonocleView;

    goto/16 :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private postMouseEvent(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V
    .locals 22

    .prologue
    .line 226
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move/from16 v2, p2

    .local v2, "eventType":I
    move/from16 v3, p3

    .local v3, "button":I
    move/from16 v4, p4

    .local v4, "relX":I
    move/from16 v5, p5

    .local v5, "relY":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    move/from16 v9, p9

    .local v9, "isPopupTrigger":Z
    move/from16 v10, p10

    .local v10, "synthesized":Z
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-static/range {v11 .. v21}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)Ljava/lang/Runnable;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method


# virtual methods
.method getState(Lcom/sun/glass/ui/monocle/MouseState;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object v1, p1

    .local v1, "result":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 68
    return-void
.end method

.method notifyDragStart()V
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/MouseInput;->dragInProgress:Z

    .line 322
    return-void
.end method

.method setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V
    .locals 34

    .prologue
    .line 81
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object/from16 v4, p1

    .local v4, "newState":Lcom/sun/glass/ui/monocle/MouseState;
    move/from16 v5, p2

    .local v5, "synthesized":Z
    sget-object v22, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEvents:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 82
    const-string v22, "Set %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    const/16 v25, 0x0

    move-object/from16 v26, v4

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v22

    move-object/from16 v6, v22

    .line 86
    .local v6, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    const/16 v22, 0x0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->getX()I

    move-result v23

    move-object/from16 v24, v6

    invoke-interface/range {v24 .. v24}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v6

    invoke-interface/range {v25 .. v25}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v7, v22

    .line 87
    .local v7, "x":I
    const/16 v22, 0x0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->getY()I

    move-result v23

    move-object/from16 v24, v6

    invoke-interface/range {v24 .. v24}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v6

    invoke-interface/range {v25 .. v25}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v8, v22

    .line 88
    .local v8, "y":I
    move-object/from16 v22, v4

    move/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 89
    move-object/from16 v22, v4

    move/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 92
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->getWindow(Z)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v22

    move-object/from16 v9, v22

    .line 93
    .local v9, "oldWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v22

    move/from16 v10, v22

    .line 94
    .local v10, "recalculateWindow":Z
    move-object/from16 v22, v4

    move/from16 v23, v10

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->getWindow(Z)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v22

    move-object/from16 v11, v22

    .line 95
    .local v11, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object/from16 v22, v11

    if-nez v22, :cond_4

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v12, v22

    .line 97
    .local v12, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object/from16 v22, v9

    move-object/from16 v23, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v22, v9

    if-eqz v22, :cond_1

    .line 98
    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MonocleWindow;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_5

    .line 100
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleWindow;)Ljava/lang/Runnable;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 125
    :cond_1
    :goto_1
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getX()I

    move-result v22

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getY()I

    move-result v22

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    :cond_2
    const/16 v22, 0x1

    :goto_2
    move/from16 v13, v22

    .line 126
    .local v13, "newAbsoluteLocation":Z
    move/from16 v22, v13

    if-eqz v22, :cond_3

    .line 127
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v22

    .line 128
    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v22

    move/from16 v23, v7

    move/from16 v24, v8

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/NativeCursor;->setLocation(II)V

    .line 130
    :cond_3
    move-object/from16 v22, v12

    if-nez v22, :cond_7

    .line 131
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 132
    .line 221
    :goto_3
    return-void

    .line 95
    .end local v12    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    .end local v13    # "newAbsoluteLocation":Z
    :cond_4
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v22

    check-cast v22, Lcom/sun/glass/ui/monocle/MonocleView;

    goto :goto_0

    .line 105
    .restart local v12    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    :cond_5
    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v22

    check-cast v22, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object/from16 v13, v22

    .line 106
    .local v13, "oldView":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object/from16 v22, v13

    if-eqz v22, :cond_1

    .line 108
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getModifiers()I

    move-result v22

    move/from16 v14, v22

    .line 109
    .local v14, "modifiers":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButton()I

    move-result v22

    move/from16 v15, v22

    .line 110
    .local v15, "button":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 111
    .local v16, "isPopupTrigger":Z
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getX()I

    move-result v22

    move/from16 v17, v22

    .line 112
    .local v17, "oldX":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getY()I

    move-result v22

    move/from16 v18, v22

    .line 113
    .local v18, "oldY":I
    move/from16 v22, v17

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v19, v22

    .line 114
    .local v19, "oldRelX":I
    move/from16 v22, v18

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v20, v22

    .line 116
    .local v20, "oldRelY":I
    move-object/from16 v22, v3

    move-object/from16 v23, v13

    const/16 v24, 0xe2

    move/from16 v25, v15

    move/from16 v26, v19

    move/from16 v27, v20

    move/from16 v28, v17

    move/from16 v29, v18

    move/from16 v30, v14

    move/from16 v31, v16

    move/from16 v32, v5

    :try_start_0
    invoke-direct/range {v22 .. v32}, Lcom/sun/glass/ui/monocle/MouseInput;->postMouseEvent(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto/16 :goto_1

    .line 119
    :catch_0
    move-exception v22

    move-object/from16 v21, v22

    .line 120
    .local v21, "e":Ljava/lang/RuntimeException;
    move-object/from16 v22, v21

    invoke-static/range {v22 .. v22}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 125
    .end local v13    # "oldView":Lcom/sun/glass/ui/monocle/MonocleView;
    .end local v14    # "modifiers":I
    .end local v15    # "button":I
    .end local v16    # "isPopupTrigger":Z
    .end local v17    # "oldX":I
    .end local v18    # "oldY":I
    .end local v19    # "oldRelX":I
    .end local v20    # "oldRelY":I
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 135
    .local v13, "newAbsoluteLocation":Z
    :cond_7
    move-object/from16 v22, v11

    if-eqz v22, :cond_8

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MonocleWindow;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_8

    .line 136
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 138
    move-object/from16 v22, v11

    invoke-static/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleWindow;)Ljava/lang/Runnable;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 141
    goto/16 :goto_3

    .line 144
    :cond_8
    move/from16 v22, v7

    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v14, v22

    .line 145
    .local v14, "relX":I
    move/from16 v22, v8

    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v15, v22

    .line 147
    .local v15, "relY":I
    move-object/from16 v22, v9

    move-object/from16 v23, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v22, v12

    if-eqz v22, :cond_9

    .line 148
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getModifiers()I

    move-result v22

    move/from16 v16, v22

    .line 149
    .local v16, "modifiers":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButton()I

    move-result v22

    move/from16 v17, v22

    .line 150
    .local v17, "button":I
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 151
    .local v18, "isPopupTrigger":Z
    move-object/from16 v22, v3

    move-object/from16 v23, v12

    const/16 v24, 0xe1

    move/from16 v25, v17

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v16

    move/from16 v31, v18

    move/from16 v32, v5

    invoke-direct/range {v22 .. v32}, Lcom/sun/glass/ui/monocle/MouseInput;->postMouseEvent(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    .line 156
    .end local v16    # "modifiers":I
    .end local v17    # "button":I
    .end local v18    # "isPopupTrigger":Z
    :cond_9
    move-object/from16 v22, v9

    move-object/from16 v23, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_b

    const/16 v22, 0x1

    :goto_4
    move/from16 v23, v13

    or-int v22, v22, v23

    if-eqz v22, :cond_a

    .line 157
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_c

    const/16 v22, 0x1

    :goto_5
    move/from16 v16, v22

    .line 158
    .local v16, "isDrag":Z
    move/from16 v22, v16

    if-eqz v22, :cond_d

    const/16 v22, 0xdf

    :goto_6
    move/from16 v17, v22

    .line 159
    .local v17, "eventType":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getModifiers()I

    move-result v22

    move/from16 v18, v22

    .line 160
    .local v18, "modifiers":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButton()I

    move-result v22

    move/from16 v19, v22

    .line 161
    .local v19, "button":I
    const/16 v22, 0x0

    move/from16 v20, v22

    .line 162
    .local v20, "isPopupTrigger":Z
    move-object/from16 v22, v3

    move-object/from16 v23, v12

    move/from16 v24, v17

    move/from16 v25, v19

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v18

    move/from16 v31, v20

    move/from16 v32, v5

    invoke-direct/range {v22 .. v32}, Lcom/sun/glass/ui/monocle/MouseInput;->postMouseEvent(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    .line 168
    .end local v16    # "isDrag":Z
    .end local v17    # "eventType":I
    .end local v18    # "modifiers":I
    .end local v19    # "button":I
    .end local v20    # "isPopupTrigger":Z
    :cond_a
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/glass/ui/monocle/MouseState;->getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/IntSet;->difference(Lcom/sun/glass/ui/monocle/IntSet;Lcom/sun/glass/ui/monocle/IntSet;)V

    .line 169
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_e

    .line 170
    new-instance v22, Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object/from16 v16, v22

    .line 171
    .local v16, "pressState":Lcom/sun/glass/ui/monocle/MouseState;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 172
    const/16 v22, 0x0

    move/from16 v17, v22

    .local v17, "i":I
    :goto_7
    move/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/IntSet;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 173
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v22, v0

    move/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v22

    move/from16 v18, v22

    .line 174
    .local v18, "button":I
    move-object/from16 v22, v16

    move/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 176
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 177
    .local v19, "isPopupTrigger":Z
    move-object/from16 v22, v3

    move-object/from16 v23, v12

    const/16 v24, 0xdd

    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v16

    .line 179
    invoke-virtual/range {v30 .. v30}, Lcom/sun/glass/ui/monocle/MouseState;->getModifiers()I

    move-result v30

    move/from16 v31, v19

    move/from16 v32, v5

    .line 177
    invoke-direct/range {v22 .. v32}, Lcom/sun/glass/ui/monocle/MouseInput;->postMouseEvent(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    .line 172
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 156
    .end local v16    # "pressState":Lcom/sun/glass/ui/monocle/MouseState;
    .end local v17    # "i":I
    .end local v18    # "button":I
    .end local v19    # "isPopupTrigger":Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 157
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 158
    .local v16, "isDrag":Z
    :cond_d
    const/16 v22, 0xe0

    goto/16 :goto_6

    .line 183
    .end local v16    # "isDrag":Z
    :cond_e
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/IntSet;->clear()V

    .line 185
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    .line 186
    invoke-virtual/range {v24 .. v24}, Lcom/sun/glass/ui/monocle/MouseState;->getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v24

    .line 185
    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/IntSet;->difference(Lcom/sun/glass/ui/monocle/IntSet;Lcom/sun/glass/ui/monocle/IntSet;)V

    .line 187
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_f

    .line 188
    new-instance v22, Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object/from16 v16, v22

    .line 189
    .local v16, "releaseState":Lcom/sun/glass/ui/monocle/MouseState;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v22, v0

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 190
    const/16 v22, 0x0

    move/from16 v17, v22

    .restart local v17    # "i":I
    :goto_8
    move/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/IntSet;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 191
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v22, v0

    move/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v22

    move/from16 v18, v22

    .line 192
    .restart local v18    # "button":I
    move-object/from16 v22, v16

    move/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->releaseButton(I)V

    .line 194
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 195
    .restart local v19    # "isPopupTrigger":Z
    move-object/from16 v22, v3

    move-object/from16 v23, v12

    const/16 v24, 0xde

    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v16

    .line 197
    invoke-virtual/range {v30 .. v30}, Lcom/sun/glass/ui/monocle/MouseState;->getModifiers()I

    move-result v30

    move/from16 v31, v19

    move/from16 v32, v5

    .line 195
    invoke-direct/range {v22 .. v32}, Lcom/sun/glass/ui/monocle/MouseInput;->postMouseEvent(Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    .line 190
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 201
    .end local v16    # "releaseState":Lcom/sun/glass/ui/monocle/MouseState;
    .end local v17    # "i":I
    .end local v18    # "button":I
    .end local v19    # "isPopupTrigger":Z
    :cond_f
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->buttons:Lcom/sun/glass/ui/monocle/IntSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/IntSet;->clear()V

    .line 203
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getWheel()I

    move-result v22

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->getWheel()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 205
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getWheel()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 208
    :pswitch_0
    const-wide/16 v22, 0x0

    move-wide/from16 v16, v22

    .line 210
    .local v16, "dY":D
    :goto_9
    move-wide/from16 v22, v16

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_10

    .line 211
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/MouseState;->getModifiers()I

    move-result v22

    move/from16 v18, v22

    .line 212
    .local v18, "modifiers":I
    move-object/from16 v22, v12

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v27, v16

    move/from16 v29, v18

    invoke-static/range {v22 .. v29}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)Ljava/lang/Runnable;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 218
    .end local v18    # "modifiers":I
    :cond_10
    move-object/from16 v22, v4

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->setWheel(I)V

    .line 220
    .end local v16    # "dY":D
    :cond_11
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/MouseInput;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/glass/ui/monocle/MouseState;->copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 221
    goto/16 :goto_3

    .line 206
    :pswitch_1
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v22

    .restart local v16    # "dY":D
    goto :goto_9

    .line 207
    .end local v16    # "dY":D
    :pswitch_2
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v22

    .restart local v16    # "dY":D
    goto :goto_9

    .line 205
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
