.class public Lcom/sun/javafx/sg/prism/NGDefaultCamera;
.super Lcom/sun/javafx/sg/prism/NGParallelCamera;
.source "NGDefaultCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGDefaultCamera;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGParallelCamera;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(II)V
    .locals 19

    .prologue
    .line 32
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGDefaultCamera;
    move/from16 v2, p1

    .local v2, "w":I
    move/from16 v3, p2

    .local v3, "h":I
    move v6, v2

    int-to-double v6, v6

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/NGDefaultCamera;->viewWidth:D

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move v6, v3

    int-to-double v6, v6

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/NGDefaultCamera;->viewHeight:D

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    .line 33
    :cond_0
    move-object v6, v1

    move v7, v2

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGDefaultCamera;->setViewWidth(D)V

    .line 34
    move-object v6, v1

    move v7, v3

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGDefaultCamera;->setViewHeight(D)V

    .line 36
    move v6, v2

    move v7, v3

    if-le v6, v7, :cond_2

    move v6, v2

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    :goto_0
    move-wide v4, v6

    .line 37
    .local v4, "halfDepth":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGDefaultCamera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    const-wide/16 v7, 0x0

    move v9, v2

    int-to-double v9, v9

    move v11, v3

    int-to-double v11, v11

    const-wide/16 v13, 0x0

    move-wide v15, v4

    neg-double v15, v15

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v18}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->ortho(DDDDDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v6

    .line 39
    .end local v4    # "halfDepth":D
    :cond_1
    return-void

    .line 36
    :cond_2
    move v6, v3

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    goto :goto_0
.end method
