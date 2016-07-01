.class public Ljavafx/scene/ImageCursor;
.super Ljavafx/scene/Cursor;
.source "ImageCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/ImageCursor$DelayedInitialization;,
        Ljavafx/scene/ImageCursor$ObjectPropertyImpl;,
        Ljavafx/scene/ImageCursor$DoublePropertyImpl;
    }
.end annotation


# instance fields
.field private activeCounter:I

.field private currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

.field private firstCursorFrame:Lcom/sun/javafx/cursor/ImageCursorFrame;

.field private hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

.field private hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

.field private image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/ImageCursor$ObjectPropertyImpl",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imageListener:Ljavafx/beans/InvalidationListener;

.field private otherCursorFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sun/javafx/cursor/ImageCursorFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Cursor;-><init>()V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;)V
    .locals 8
    .param p1    # Ljavafx/scene/image/Image;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "image"
        .end annotation
    .end param

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Ljavafx/scene/ImageCursor;-><init>(Ljavafx/scene/image/Image;DD)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;DD)V
    .locals 12
    .param p1    # Ljavafx/scene/image/Image;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "image"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "hotspotX"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "hotspotY"
        .end annotation
    .end param

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-wide v2, p2

    .local v2, "hotspotX":D
    move-wide/from16 v4, p4

    .local v4, "hotspotY":D
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/Cursor;-><init>()V

    .line 195
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 196
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-static/range {v6 .. v11}, Ljavafx/scene/ImageCursor$DelayedInitialization;->applyTo(Ljavafx/scene/ImageCursor;Ljavafx/scene/image/Image;DD)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/ImageCursor;->initialize(Ljavafx/scene/image/Image;DD)V

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/scene/ImageCursor;Ljavafx/scene/image/Image;DD)V
    .locals 12

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-wide v2, p2

    .local v2, "x2":D
    move-wide/from16 v4, p4

    .local v4, "x3":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/ImageCursor;->initialize(Ljavafx/scene/image/Image;DD)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DD)V
    .locals 12

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "x1":[Ljavafx/scene/image/Image;
    move-wide v2, p2

    .local v2, "x2":D
    move-wide/from16 v4, p4

    .local v4, "x3":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/ImageCursor;->initialize([Ljavafx/scene/image/Image;DD)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/ImageCursor;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/ImageCursor;->lambda$getImageListener$497(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private bindImage(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "toImage":Ljavafx/scene/image/Image;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 444
    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/ImageCursor;->getImageListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 448
    goto :goto_0
.end method

.method public static chooseBestCursor([Ljavafx/scene/image/Image;DD)Ljavafx/scene/ImageCursor;
    .locals 13

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "images":[Ljavafx/scene/image/Image;
    move-wide v1, p1

    .local v1, "hotspotX":D
    move-wide/from16 v3, p3

    .local v3, "hotspotY":D
    new-instance v6, Ljavafx/scene/ImageCursor;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/ImageCursor;-><init>()V

    move-object v5, v6

    .line 277
    .local v5, "imageCursor":Ljavafx/scene/ImageCursor;
    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/ImageCursor;->needsDelayedInitialization([Ljavafx/scene/image/Image;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    move-object v6, v5

    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-static/range {v6 .. v11}, Ljavafx/scene/ImageCursor$DelayedInitialization;->applyTo(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DD)V

    .line 284
    :goto_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "images":[Ljavafx/scene/image/Image;
    return-object v0

    .line 281
    .restart local v0    # "images":[Ljavafx/scene/image/Image;
    :cond_0
    move-object v6, v5

    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/ImageCursor;->initialize([Ljavafx/scene/image/Image;DD)V

    goto :goto_0
.end method

.method private static findBestImage([Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 22

    .prologue
    .line 471
    move-object/from16 v3, p0

    .local v3, "images":[Ljavafx/scene/image/Image;
    move-object/from16 v18, v3

    move-object/from16 v4, v18

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v6, v18

    :goto_0
    move/from16 v18, v6

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v18, v4

    move/from16 v19, v6

    aget-object v18, v18, v19

    move-object/from16 v7, v18

    .line 472
    .local v7, "image":Ljavafx/scene/image/Image;
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v7

    .line 473
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 472
    invoke-static/range {v18 .. v21}, Ljavafx/scene/ImageCursor;->getBestSize(DD)Ljavafx/geometry/Dimension2D;

    move-result-object v18

    move-object/from16 v8, v18

    .line 474
    .local v8, "dim":Ljavafx/geometry/Dimension2D;
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v8

    .line 475
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v18

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    .line 476
    move-object/from16 v18, v7

    move-object/from16 v3, v18

    .line 530
    .end local v3    # "images":[Ljavafx/scene/image/Image;
    .end local v7    # "image":Ljavafx/scene/image/Image;
    .end local v8    # "dim":Ljavafx/geometry/Dimension2D;
    .local v4, "bestImage":Ljavafx/scene/image/Image;
    .local v5, "bestRatio":D
    :goto_1
    return-object v3

    .line 471
    .end local v4    # "bestImage":Ljavafx/scene/image/Image;
    .end local v5    # "bestRatio":D
    .restart local v3    # "images":[Ljavafx/scene/image/Image;
    .restart local v7    # "image":Ljavafx/scene/image/Image;
    .restart local v8    # "dim":Ljavafx/geometry/Dimension2D;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 482
    .end local v7    # "image":Ljavafx/scene/image/Image;
    .end local v8    # "dim":Ljavafx/geometry/Dimension2D;
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v4, v18

    .line 483
    .restart local v4    # "bestImage":Ljavafx/scene/image/Image;
    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v5, v18

    .line 484
    .restart local v5    # "bestRatio":D
    move-object/from16 v18, v3

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_2
    move/from16 v18, v9

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v18, v7

    move/from16 v19, v9

    aget-object v18, v18, v19

    move-object/from16 v10, v18

    .line 485
    .local v10, "image":Ljavafx/scene/image/Image;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    .line 486
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v10

    .line 487
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v20

    .line 486
    invoke-static/range {v18 .. v21}, Ljavafx/scene/ImageCursor;->getBestSize(DD)Ljavafx/geometry/Dimension2D;

    move-result-object v18

    move-object/from16 v11, v18

    .line 488
    .local v11, "dim":Ljavafx/geometry/Dimension2D;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 489
    .local v12, "ratioX":D
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v18

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 490
    .local v14, "ratioY":D
    move-wide/from16 v18, v12

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_2

    move-wide/from16 v18, v14

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_2

    .line 491
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 492
    .local v16, "ratio":D
    move-wide/from16 v18, v16

    move-wide/from16 v20, v5

    cmpg-double v18, v18, v20

    if-gez v18, :cond_2

    .line 493
    move-object/from16 v18, v10

    move-object/from16 v4, v18

    .line 494
    move-wide/from16 v18, v16

    move-wide/from16 v5, v18

    .line 484
    .end local v11    # "dim":Ljavafx/geometry/Dimension2D;
    .end local v12    # "ratioX":D
    .end local v14    # "ratioY":D
    .end local v16    # "ratio":D
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 499
    .end local v10    # "image":Ljavafx/scene/image/Image;
    :cond_3
    move-object/from16 v18, v4

    if-eqz v18, :cond_4

    .line 500
    move-object/from16 v18, v4

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 505
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_3
    move/from16 v18, v9

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    move-object/from16 v18, v7

    move/from16 v19, v9

    aget-object v18, v18, v19

    move-object/from16 v10, v18

    .line 506
    .restart local v10    # "image":Ljavafx/scene/image/Image;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_7

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_7

    .line 507
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v10

    .line 508
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v20

    .line 507
    invoke-static/range {v18 .. v21}, Ljavafx/scene/ImageCursor;->getBestSize(DD)Ljavafx/geometry/Dimension2D;

    move-result-object v18

    move-object/from16 v11, v18

    .line 509
    .restart local v11    # "dim":Ljavafx/geometry/Dimension2D;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_7

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_7

    .line 510
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 511
    .restart local v12    # "ratioX":D
    move-wide/from16 v18, v12

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_5

    .line 512
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v12

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 514
    :cond_5
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v18

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 515
    .restart local v14    # "ratioY":D
    move-wide/from16 v18, v14

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_6

    .line 516
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v14

    div-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 518
    :cond_6
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 519
    .restart local v16    # "ratio":D
    move-wide/from16 v18, v16

    move-wide/from16 v20, v5

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    .line 520
    move-object/from16 v18, v10

    move-object/from16 v4, v18

    .line 521
    move-wide/from16 v18, v16

    move-wide/from16 v5, v18

    .line 505
    .end local v11    # "dim":Ljavafx/geometry/Dimension2D;
    .end local v12    # "ratioX":D
    .end local v14    # "ratioY":D
    .end local v16    # "ratio":D
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 526
    .end local v10    # "image":Ljavafx/scene/image/Image;
    :cond_8
    move-object/from16 v18, v4

    if-eqz v18, :cond_9

    .line 527
    move-object/from16 v18, v4

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 530
    :cond_9
    move-object/from16 v18, v3

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v3, v18

    goto/16 :goto_1
.end method

.method public static getBestSize(DD)Ljavafx/geometry/Dimension2D;
    .locals 8

    .prologue
    .line 228
    move-wide v0, p0

    .local v0, "preferredWidth":D
    move-wide v2, p2

    .local v2, "preferredHeight":D
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-wide v5, v0

    double-to-int v5, v5

    move-wide v6, v2

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/tk/Toolkit;->getBestCursorSize(II)Ljavafx/geometry/Dimension2D;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "preferredWidth":D
    return-object v0
.end method

.method private getImageListener()Ljavafx/beans/InvalidationListener;
    .locals 3

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->imageListener:Ljavafx/beans/InvalidationListener;

    if-nez v1, :cond_0

    .line 436
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/ImageCursor$$Lambda$1;->lambdaFactory$(Ljavafx/scene/ImageCursor;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/ImageCursor;->imageListener:Ljavafx/beans/InvalidationListener;

    .line 439
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->imageListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method

.method public static getMaximumColors()I
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getMaximumCursorColors()I

    move-result v0

    return v0
.end method

.method private hotspotXPropertyImpl()Ljavafx/scene/ImageCursor$DoublePropertyImpl;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    if-nez v1, :cond_0

    .line 113
    move-object v1, v0

    new-instance v2, Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "hotspotX"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;-><init>(Ljavafx/scene/ImageCursor;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/ImageCursor;->hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    .line 116
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method

.method private hotspotYPropertyImpl()Ljavafx/scene/ImageCursor$DoublePropertyImpl;
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    if-nez v1, :cond_0

    .line 140
    move-object v1, v0

    new-instance v2, Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "hotspotY"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;-><init>(Ljavafx/scene/ImageCursor;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/ImageCursor;->hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    .line 143
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method

.method private imagePropertyImpl()Ljavafx/scene/ImageCursor$ObjectPropertyImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/ImageCursor$ObjectPropertyImpl",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    if-nez v1, :cond_0

    .line 86
    move-object v1, v0

    new-instance v2, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "image"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;-><init>(Ljavafx/scene/ImageCursor;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/ImageCursor;->image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    .line 89
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method

.method private initialize(Ljavafx/scene/image/Image;DD)V
    .locals 18

    .prologue
    .line 385
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursor;
    move-object/from16 v2, p1

    .local v2, "newImage":Ljavafx/scene/image/Image;
    move-wide/from16 v3, p2

    .local v3, "newHotspotX":D
    move-wide/from16 v5, p4

    .local v5, "newHotspotY":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/ImageCursor;->getImage()Ljavafx/scene/image/Image;

    move-result-object v12

    move-object v7, v12

    .line 386
    .local v7, "oldImage":Ljavafx/scene/image/Image;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/ImageCursor;->getHotspotX()D

    move-result-wide v12

    move-wide v8, v12

    .line 387
    .local v8, "oldHotspotX":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/ImageCursor;->getHotspotY()D

    move-result-wide v12

    move-wide v10, v12

    .line 389
    .local v10, "oldHotspotY":D
    move-object v12, v2

    if-eqz v12, :cond_0

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_0

    move-object v12, v2

    .line 390
    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_6

    .line 392
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v3, v12

    .line 393
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 409
    :cond_1
    :goto_0
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/ImageCursor;->imagePropertyImpl()Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->store(Ljava/lang/Object;)V

    .line 410
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/ImageCursor;->hotspotXPropertyImpl()Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-result-object v12

    move-wide v13, v3

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;->store(D)V

    .line 411
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/ImageCursor;->hotspotYPropertyImpl()Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-result-object v12

    move-wide v13, v5

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;->store(D)V

    .line 413
    move-object v12, v7

    move-object v13, v2

    if-eq v12, v13, :cond_3

    .line 414
    move-object v12, v1

    iget v12, v12, Ljavafx/scene/ImageCursor;->activeCounter:I

    if-lez v12, :cond_2

    .line 415
    move-object v12, v1

    move-object v13, v7

    invoke-direct {v12, v13}, Ljavafx/scene/ImageCursor;->unbindImage(Ljavafx/scene/image/Image;)V

    .line 416
    move-object v12, v1

    move-object v13, v2

    invoke-direct {v12, v13}, Ljavafx/scene/ImageCursor;->bindImage(Ljavafx/scene/image/Image;)V

    .line 419
    :cond_2
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/ImageCursor;->invalidateCurrentFrame()V

    .line 420
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/ImageCursor;->image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    invoke-virtual {v12}, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->fireValueChangedEvent()V

    .line 423
    :cond_3
    move-wide v12, v8

    move-wide v14, v3

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_4

    .line 424
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/ImageCursor;->hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    invoke-virtual {v12}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;->fireValueChangedEvent()V

    .line 427
    :cond_4
    move-wide v12, v10

    move-wide v14, v5

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_5

    .line 428
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/ImageCursor;->hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    invoke-virtual {v12}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;->fireValueChangedEvent()V

    .line 430
    :cond_5
    return-void

    .line 395
    :cond_6
    move-wide v12, v3

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_7

    .line 396
    const-wide/16 v12, 0x0

    move-wide v3, v12

    .line 398
    :cond_7
    move-wide v12, v3

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-lez v12, :cond_8

    .line 399
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    move-wide v3, v12

    .line 401
    :cond_8
    move-wide v12, v5

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_9

    .line 402
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 404
    :cond_9
    move-wide v12, v5

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 405
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    move-wide v5, v12

    goto/16 :goto_0
.end method

.method private initialize([Ljavafx/scene/image/Image;DD)V
    .locals 20

    .prologue
    .line 360
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object/from16 v1, p1

    .local v1, "images":[Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "hotspotX":D
    move-wide/from16 v4, p4

    .local v4, "hotspotY":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljavafx/scene/ImageCursor;->getBestSize(DD)Ljavafx/geometry/Dimension2D;

    move-result-object v12

    move-object v6, v12

    .line 364
    .local v6, "dim":Ljavafx/geometry/Dimension2D;
    move-object v12, v1

    array-length v12, v12

    if-eqz v12, :cond_0

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_0

    move-object v12, v6

    .line 365
    invoke-virtual {v12}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 366
    .line 380
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    move-object v12, v1

    array-length v12, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 371
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/ImageCursor;->initialize(Ljavafx/scene/image/Image;DD)V

    .line 372
    goto :goto_0

    .line 375
    :cond_2
    move-object v12, v1

    invoke-static {v12}, Ljavafx/scene/ImageCursor;->findBestImage([Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;

    move-result-object v12

    move-object v7, v12

    .line 376
    .local v7, "bestImage":Ljavafx/scene/image/Image;
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    move-object v14, v1

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v14

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 377
    .local v8, "scaleX":D
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    move-object v14, v1

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v14

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 379
    .local v10, "scaleY":D
    move-object v12, v0

    move-object v13, v7

    move-wide v14, v2

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    move-wide/from16 v16, v4

    move-wide/from16 v18, v10

    mul-double v16, v16, v18

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/ImageCursor;->initialize(Ljavafx/scene/image/Image;DD)V

    .line 380
    goto :goto_0
.end method

.method private invalidateCurrentFrame()V
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 340
    return-void
.end method

.method private synthetic lambda$getImageListener$497(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/ImageCursor;->invalidateCurrentFrame()V

    return-void
.end method

.method private static needsDelayedInitialization([Ljavafx/scene/image/Image;)Z
    .locals 10

    .prologue
    .line 459
    move-object v1, p0

    .local v1, "images":[Ljavafx/scene/image/Image;
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 460
    .local v5, "image":Ljavafx/scene/image/Image;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 461
    const/4 v6, 0x1

    move v1, v6

    .line 465
    .end local v1    # "images":[Ljavafx/scene/image/Image;
    :goto_1
    return v1

    .line 459
    .restart local v1    # "images":[Ljavafx/scene/image/Image;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 465
    .end local v5    # "image":Ljavafx/scene/image/Image;
    :cond_1
    const/4 v6, 0x0

    move v1, v6

    goto :goto_1
.end method

.method private unbindImage(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, p1

    .local v1, "fromImage":Ljavafx/scene/image/Image;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 452
    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/ImageCursor;->getImageListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 456
    goto :goto_0
.end method


# virtual methods
.method activate()V
    .locals 6

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/scene/ImageCursor;->activeCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Ljavafx/scene/ImageCursor;->activeCounter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 345
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/ImageCursor;->getImage()Ljavafx/scene/image/Image;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/ImageCursor;->bindImage(Ljavafx/scene/image/Image;)V

    .line 346
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ImageCursor;->invalidateCurrentFrame()V

    .line 348
    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/scene/ImageCursor;->activeCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Ljavafx/scene/ImageCursor;->activeCounter:I

    if-nez v1, :cond_0

    .line 353
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/ImageCursor;->getImage()Ljavafx/scene/image/Image;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/ImageCursor;->unbindImage(Ljavafx/scene/image/Image;)V

    .line 355
    :cond_0
    return-void
.end method

.method getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;
    .locals 17

    .prologue
    .line 288
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    if-eqz v4, :cond_0

    .line 289
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    move-object v0, v4

    .line 335
    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    .local v1, "cursorImage":Ljavafx/scene/image/Image;
    :goto_0
    return-object v0

    .line 292
    .end local v1    # "cursorImage":Ljavafx/scene/image/Image;
    .restart local v0    # "this":Ljavafx/scene/ImageCursor;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/ImageCursor;->getImage()Ljavafx/scene/image/Image;

    move-result-object v4

    move-object v1, v4

    .line 294
    .restart local v1    # "cursorImage":Ljavafx/scene/image/Image;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 295
    move-object v4, v0

    sget-object v5, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    invoke-virtual {v5}, Ljavafx/scene/Cursor;->getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 296
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    move-object v0, v4

    goto :goto_0

    .line 299
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 300
    .local v2, "cursorPlatformImage":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 301
    move-object v4, v0

    sget-object v5, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    invoke-virtual {v5}, Ljavafx/scene/Cursor;->getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 302
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    move-object v0, v4

    goto :goto_0

    .line 305
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->firstCursorFrame:Lcom/sun/javafx/cursor/ImageCursorFrame;

    if-nez v4, :cond_4

    .line 306
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/cursor/ImageCursorFrame;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-object v7, v2

    move-object v8, v1

    .line 308
    invoke-virtual {v8}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v8

    move-object v10, v1

    .line 309
    invoke-virtual {v10}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v10

    move-object v12, v0

    .line 310
    invoke-virtual {v12}, Ljavafx/scene/ImageCursor;->getHotspotX()D

    move-result-wide v12

    move-object v14, v0

    .line 311
    invoke-virtual {v14}, Ljavafx/scene/ImageCursor;->getHotspotY()D

    move-result-wide v14

    invoke-direct/range {v6 .. v15}, Lcom/sun/javafx/cursor/ImageCursorFrame;-><init>(Ljava/lang/Object;DDDD)V

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->firstCursorFrame:Lcom/sun/javafx/cursor/ImageCursorFrame;

    .line 312
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/ImageCursor;->firstCursorFrame:Lcom/sun/javafx/cursor/ImageCursorFrame;

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 335
    :cond_3
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    move-object v0, v4

    goto :goto_0

    .line 313
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->firstCursorFrame:Lcom/sun/javafx/cursor/ImageCursorFrame;

    invoke-virtual {v4}, Lcom/sun/javafx/cursor/ImageCursorFrame;->getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    if-ne v4, v5, :cond_5

    .line 314
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/ImageCursor;->firstCursorFrame:Lcom/sun/javafx/cursor/ImageCursorFrame;

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    goto :goto_1

    .line 316
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->otherCursorFrames:Ljava/util/Map;

    if-nez v4, :cond_6

    .line 317
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->otherCursorFrames:Ljava/util/Map;

    .line 320
    :cond_6
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/ImageCursor;->otherCursorFrames:Ljava/util/Map;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/cursor/CursorFrame;

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 321
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    if-nez v4, :cond_3

    .line 323
    new-instance v4, Lcom/sun/javafx/cursor/ImageCursorFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    move-object v6, v2

    move-object v7, v1

    .line 325
    invoke-virtual {v7}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v7

    move-object v9, v1

    .line 326
    invoke-virtual {v9}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v9

    move-object v11, v0

    .line 327
    invoke-virtual {v11}, Ljavafx/scene/ImageCursor;->getHotspotX()D

    move-result-wide v11

    move-object v13, v0

    .line 328
    invoke-virtual {v13}, Ljavafx/scene/ImageCursor;->getHotspotY()D

    move-result-wide v13

    invoke-direct/range {v5 .. v14}, Lcom/sun/javafx/cursor/ImageCursorFrame;-><init>(Ljava/lang/Object;DDDD)V

    move-object v3, v4

    .line 330
    .local v3, "newCursorFrame":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ImageCursor;->otherCursorFrames:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 331
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/ImageCursor;->currentCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    goto :goto_1
.end method

.method public final getHotspotX()D
    .locals 4

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursor;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/ImageCursor;->hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/ImageCursor;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/ImageCursor;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/ImageCursor;->hotspotX:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    invoke-virtual {v2}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getHotspotY()D
    .locals 4

    .prologue
    .line 131
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursor;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/ImageCursor;->hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/ImageCursor;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/ImageCursor;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/ImageCursor;->hotspotY:Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    invoke-virtual {v2}, Ljavafx/scene/ImageCursor$DoublePropertyImpl;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/ImageCursor;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor;->image:Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    invoke-virtual {v1}, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final hotspotXProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ImageCursor;->hotspotXPropertyImpl()Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method

.method public final hotspotYProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ImageCursor;->hotspotYPropertyImpl()Ljavafx/scene/ImageCursor$DoublePropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method

.method public final imageProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ImageCursor;->imagePropertyImpl()Ljavafx/scene/ImageCursor$ObjectPropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor;
    return-object v0
.end method
