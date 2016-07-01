.class public Lcom/sun/javafx/sg/prism/NGSubScene;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGSubScene.java"


# static fields
.field static final THRESHOLD:D = 0.00390625


# instance fields
.field private camera:Lcom/sun/javafx/sg/prism/NGCamera;

.field private final depthBuffer:Z

.field private fillPaint:Lcom/sun/prism/paint/Paint;

.field private isOpaque:Z

.field private lastScaledH:D

.field private lastScaledW:D

.field private lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

.field private final msaa:Z

.field private renderSG:Z

.field private resolveRTT:Lcom/sun/prism/RTTexture;

.field private root:Lcom/sun/javafx/sg/prism/NGNode;

.field private rtt:Lcom/sun/prism/RTTexture;

.field private slHeight:F

.field private slWidth:F


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGSubScene;-><init>(ZZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move v1, p1

    .local v1, "depthBuffer":Z
    move v2, p2

    .local v2, "msaa":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 51
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    .line 52
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    .line 135
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->isOpaque:Z

    .line 58
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->depthBuffer:Z

    .line 59
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->msaa:Z

    .line 60
    return-void
.end method

.method private applyBackgroundFillPaint(Lcom/sun/prism/Graphics;)V
    .locals 8

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->isOpaque:Z

    .line 138
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v3, :cond_3

    .line 139
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    instance-of v3, v3, Lcom/sun/prism/paint/Color;

    if-eqz v3, :cond_1

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    check-cast v3, Lcom/sun/prism/paint/Color;

    move-object v2, v3

    .line 141
    .local v2, "fillColor":Lcom/sun/prism/paint/Color;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->isOpaque:Z

    .line 142
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/sun/prism/Graphics;->clear(Lcom/sun/prism/paint/Color;)V

    .line 143
    .line 156
    .end local v2    # "fillColor":Lcom/sun/prism/paint/Color;
    :goto_1
    return-void

    .line 141
    .restart local v2    # "fillColor":Lcom/sun/prism/paint/Color;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 144
    .end local v2    # "fillColor":Lcom/sun/prism/paint/Color;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v3}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/Graphics;->clear()V

    .line 146
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->isOpaque:Z

    .line 148
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGSubScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v3, v4}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 149
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v7}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    goto :goto_1

    .line 152
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGSubScene;->isOpaque:Z

    .line 154
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/Graphics;->clear()V

    goto :goto_1
.end method

.method private static hypot(DDD)D
    .locals 12

    .prologue
    .line 164
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "z":D
    move-wide v6, v0

    move-wide v8, v0

    mul-double/2addr v6, v8

    move-wide v8, v2

    move-wide v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "x":D
    return-wide v0
.end method

.method private invalidateRTT()V
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 124
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 125
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    .line 127
    :cond_0
    return-void
.end method

.method private static isDirectBlitTransform(Lcom/sun/javafx/geom/transform/BaseTransform;DD)Z
    .locals 11

    .prologue
    .line 285
    move-object v1, p0

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-wide v2, p1

    .local v2, "sx":D
    move-wide v4, p3

    .local v4, "sy":D
    move-wide v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v6

    move v1, v6

    .line 290
    .end local v1    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return v1

    .line 286
    .restart local v1    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 287
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    move-wide v8, v2

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    move-object v6, v1

    .line 288
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    move-object v6, v1

    .line 289
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    move-object v6, v1

    .line 290
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v1, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected geometryChanged()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    .line 117
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGNode;->geometryChanged()V

    .line 118
    return-void
.end method

.method public getCamera()Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    return-object v0
.end method

.method public getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    return-object v0
.end method

.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    return v0
.end method

.method public markContentDirty()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGSubScene;->visualsChanged()V

    .line 106
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 44

    .prologue
    .line 174
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object/from16 v5, p1

    .local v5, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->slWidth:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-lez v32, :cond_0

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->slHeight:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gtz v32, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    move-object/from16 v32, v5

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v32

    move-object/from16 v6, v32

    .line 176
    .local v6, "txform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v32

    move-object/from16 v34, v6

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v34

    move-object/from16 v36, v6

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v36

    invoke-static/range {v32 .. v37}, Lcom/sun/javafx/sg/prism/NGSubScene;->hypot(DDD)D

    move-result-wide v32

    move-wide/from16 v7, v32

    .line 177
    .local v7, "scaleX":D
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v32

    move-object/from16 v34, v6

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v34

    move-object/from16 v36, v6

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v36

    invoke-static/range {v32 .. v37}, Lcom/sun/javafx/sg/prism/NGSubScene;->hypot(DDD)D

    move-result-wide v32

    move-wide/from16 v9, v32

    .line 178
    .local v9, "scaleY":D
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->slWidth:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v7

    mul-double v32, v32, v34

    move-wide/from16 v11, v32

    .line 179
    .local v11, "scaledW":D
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->slHeight:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v9

    mul-double v32, v32, v34

    move-wide/from16 v13, v32

    .line 180
    .local v13, "scaledH":D
    move-wide/from16 v32, v11

    const-wide/high16 v34, 0x3f70000000000000L    # 0.00390625

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v15, v32

    .line 181
    .local v15, "rtWidth":I
    move-wide/from16 v32, v13

    const-wide/high16 v34, 0x3f70000000000000L    # 0.00390625

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v16, v32

    .line 182
    .local v16, "rtHeight":I
    move-wide/from16 v32, v11

    move-object/from16 v34, v4

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->lastScaledW:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    move-wide/from16 v34, v13

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->lastScaledH:D

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    const-wide/high16 v34, 0x3f70000000000000L    # 0.00390625

    cmpl-double v32, v32, v34

    if-lez v32, :cond_4

    .line 183
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    move/from16 v32, v15

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v33, v0

    .line 184
    invoke-interface/range {v33 .. v33}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    move/from16 v32, v16

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v33, v0

    .line 185
    invoke-interface/range {v33 .. v33}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 187
    :cond_2
    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v32}, Lcom/sun/javafx/sg/prism/NGSubScene;->invalidateRTT()V

    .line 189
    :cond_3
    move-object/from16 v32, v4

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    .line 190
    move-object/from16 v32, v4

    move-wide/from16 v33, v11

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->lastScaledW:D

    .line 191
    move-object/from16 v32, v4

    move-wide/from16 v33, v13

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->lastScaledH:D

    .line 193
    :cond_4
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    .line 194
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->lock()V

    .line 195
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 196
    move-object/from16 v32, v4

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    .line 197
    move-object/from16 v32, v4

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    .line 201
    :cond_5
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/sg/prism/NGNode;->isClean()Z

    move-result v32

    if-nez v32, :cond_9

    .line 202
    :cond_6
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    if-nez v32, :cond_7

    .line 203
    move-object/from16 v32, v5

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v32

    move-object/from16 v17, v32

    .line 204
    .local v17, "factory":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v32, v4

    move-object/from16 v33, v17

    move/from16 v34, v15

    move/from16 v35, v16

    sget-object v36, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->msaa:Z

    move/from16 v37, v0

    invoke-interface/range {v33 .. v37}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    .line 208
    .end local v17    # "factory":Lcom/sun/prism/ResourceFactory;
    :cond_7
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v32

    move-object/from16 v17, v32

    .line 209
    .local v17, "rttGraphics":Lcom/sun/prism/Graphics;
    move-object/from16 v32, v17

    move-wide/from16 v33, v7

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    move-wide/from16 v34, v9

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-interface/range {v32 .. v34}, Lcom/sun/prism/Graphics;->scale(FF)V

    .line 210
    move-object/from16 v32, v17

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Lcom/sun/prism/Graphics;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    .line 212
    move-object/from16 v32, v17

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->depthBuffer:Z

    move/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Lcom/sun/prism/Graphics;->setDepthBuffer(Z)V

    .line 213
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 214
    move-object/from16 v32, v17

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Lcom/sun/prism/Graphics;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 216
    :cond_8
    move-object/from16 v32, v4

    move-object/from16 v33, v17

    invoke-direct/range {v32 .. v33}, Lcom/sun/javafx/sg/prism/NGSubScene;->applyBackgroundFillPaint(Lcom/sun/prism/Graphics;)V

    .line 218
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v32, v0

    move-object/from16 v33, v17

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 219
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 220
    move-object/from16 v32, v4

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    .line 222
    .end local v17    # "rttGraphics":Lcom/sun/prism/Graphics;
    :cond_9
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->msaa:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 223
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->getContentX()I

    move-result v32

    move/from16 v17, v32

    .line 224
    .local v17, "x0":I
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->getContentY()I

    move-result v32

    move/from16 v18, v32

    .line 225
    .local v18, "y0":I
    move/from16 v32, v17

    move/from16 v33, v15

    add-int v32, v32, v33

    move/from16 v19, v32

    .line 226
    .local v19, "x1":I
    move/from16 v32, v18

    move/from16 v33, v16

    add-int v32, v32, v33

    move/from16 v20, v32

    .line 227
    .local v20, "y1":I
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->isOpaque:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    move-object/from16 v32, v5

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Graphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v32

    sget-object v33, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_d

    :cond_a
    move-object/from16 v32, v6

    move-wide/from16 v33, v7

    move-wide/from16 v35, v9

    .line 228
    invoke-static/range {v32 .. v36}, Lcom/sun/javafx/sg/prism/NGSubScene;->isDirectBlitTransform(Lcom/sun/javafx/geom/transform/BaseTransform;DD)Z

    move-result v32

    if-eqz v32, :cond_d

    move-object/from16 v32, v5

    .line 229
    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Graphics;->isDepthTest()Z

    move-result v32

    if-nez v32, :cond_d

    .line 232
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v32

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v21, v32

    .line 233
    .local v21, "tx":I
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v32

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v22, v32

    .line 239
    .local v22, "ty":I
    move-object/from16 v32, v5

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v32

    move-object/from16 v23, v32

    .line 240
    .local v23, "target":Lcom/sun/prism/RenderTarget;
    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RenderTarget;->getContentX()I

    move-result v32

    move/from16 v33, v21

    add-int v32, v32, v33

    move/from16 v24, v32

    .line 241
    .local v24, "dstX0":I
    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RenderTarget;->getContentY()I

    move-result v32

    move/from16 v33, v22

    add-int v32, v32, v33

    move/from16 v25, v32

    .line 242
    .local v25, "dstY0":I
    move/from16 v32, v24

    move/from16 v33, v15

    add-int v32, v32, v33

    move/from16 v26, v32

    .line 243
    .local v26, "dstX1":I
    move/from16 v32, v25

    move/from16 v33, v16

    add-int v32, v32, v33

    move/from16 v27, v32

    .line 244
    .local v27, "dstY1":I
    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RenderTarget;->getContentWidth()I

    move-result v32

    move/from16 v28, v32

    .line 245
    .local v28, "dstW":I
    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RenderTarget;->getContentHeight()I

    move-result v32

    move/from16 v29, v32

    .line 246
    .local v29, "dstH":I
    move/from16 v32, v26

    move/from16 v33, v28

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_b

    move/from16 v32, v28

    move/from16 v33, v26

    sub-int v32, v32, v33

    :goto_1
    move/from16 v30, v32

    .line 247
    .local v30, "dX":I
    move/from16 v32, v27

    move/from16 v33, v29

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_c

    move/from16 v32, v29

    move/from16 v33, v27

    sub-int v32, v32, v33

    :goto_2
    move/from16 v31, v32

    .line 248
    .local v31, "dY":I
    move-object/from16 v32, v5

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v30

    add-int v37, v37, v38

    move/from16 v38, v20

    move/from16 v39, v31

    add-int v38, v38, v39

    move/from16 v39, v24

    move/from16 v40, v25

    move/from16 v41, v26

    move/from16 v42, v30

    add-int v41, v41, v42

    move/from16 v42, v27

    move/from16 v43, v31

    add-int v42, v42, v43

    invoke-interface/range {v32 .. v42}, Lcom/sun/prism/Graphics;->blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V

    .line 250
    .line 277
    .line 281
    .end local v17    # "x0":I
    .end local v18    # "y0":I
    .end local v19    # "x1":I
    .end local v20    # "y1":I
    .end local v21    # "tx":I
    .end local v22    # "ty":I
    .end local v23    # "target":Lcom/sun/prism/RenderTarget;
    .end local v24    # "dstX0":I
    .end local v25    # "dstY0":I
    .end local v26    # "dstX1":I
    .end local v27    # "dstY1":I
    .end local v28    # "dstW":I
    .end local v29    # "dstH":I
    .end local v30    # "dX":I
    .end local v31    # "dY":I
    :goto_3
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 282
    goto/16 :goto_0

    .line 246
    .restart local v17    # "x0":I
    .restart local v18    # "y0":I
    .restart local v19    # "x1":I
    .restart local v20    # "y1":I
    .restart local v21    # "tx":I
    .restart local v22    # "ty":I
    .restart local v23    # "target":Lcom/sun/prism/RenderTarget;
    .restart local v24    # "dstX0":I
    .restart local v25    # "dstY0":I
    .restart local v26    # "dstX1":I
    .restart local v27    # "dstY1":I
    .restart local v28    # "dstW":I
    .restart local v29    # "dstH":I
    :cond_b
    const/16 v32, 0x0

    goto :goto_1

    .line 247
    .restart local v30    # "dX":I
    :cond_c
    const/16 v32, 0x0

    goto :goto_2

    .line 251
    .end local v21    # "tx":I
    .end local v22    # "ty":I
    .end local v23    # "target":Lcom/sun/prism/RenderTarget;
    .end local v24    # "dstX0":I
    .end local v25    # "dstY0":I
    .end local v26    # "dstX1":I
    .end local v27    # "dstY1":I
    .end local v28    # "dstW":I
    .end local v29    # "dstH":I
    .end local v30    # "dX":I
    :cond_d
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    .line 252
    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v32

    move/from16 v33, v15

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_e

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    .line 253
    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v32

    move/from16 v33, v16

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 256
    :cond_e
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 257
    move-object/from16 v32, v4

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 259
    :cond_f
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    .line 260
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->lock()V

    .line 261
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 262
    move-object/from16 v32, v4

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 265
    :cond_10
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    if-nez v32, :cond_11

    .line 266
    move-object/from16 v32, v4

    move-object/from16 v33, v5

    invoke-interface/range {v33 .. v33}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v33

    move/from16 v34, v15

    move/from16 v35, v16

    sget-object v36, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    const/16 v37, 0x0

    invoke-interface/range {v33 .. v37}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 271
    :cond_11
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v32

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v33, v0

    move-object/from16 v34, v4

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v34, v0

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v17

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v42, v20

    invoke-interface/range {v32 .. v42}, Lcom/sun/prism/Graphics;->blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V

    .line 273
    move-object/from16 v32, v5

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v36, v15

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v38, v7

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v16

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v37, v0

    move-wide/from16 v39, v9

    div-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v15

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v41, v16

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-interface/range {v32 .. v41}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 275
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/RTTexture;->unlock()V

    goto/16 :goto_3

    .line 278
    .end local v17    # "x0":I
    .end local v18    # "y0":I
    .end local v19    # "x1":I
    .end local v20    # "y1":I
    :cond_12
    move-object/from16 v32, v5

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGSubScene;->rtt:Lcom/sun/prism/RTTexture;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v36, v15

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v38, v7

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v16

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v37, v0

    move-wide/from16 v39, v9

    div-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v15

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v41, v16

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-interface/range {v32 .. v41}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    goto/16 :goto_3
.end method

.method public renderForcedContent(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, p1

    .local v1, "gOptional":Lcom/sun/prism/Graphics;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->renderForcedContent(Lcom/sun/prism/Graphics;)V

    .line 161
    return-void
.end method

.method public setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, p1

    .local v1, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Lcom/sun/javafx/sg/prism/NGCamera;->INSTANCE:Lcom/sun/javafx/sg/prism/NGCamera;

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 78
    return-void

    .line 77
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public setFillPaint(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, p1

    .local v1, "paint":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Paint;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 73
    return-void
.end method

.method public setHeight(F)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move v1, p1

    .local v1, "height":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->slHeight:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->slHeight:F

    .line 91
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGSubScene;->geometryChanged()V

    .line 92
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGSubScene;->invalidateRTT()V

    .line 94
    :cond_0
    return-void
.end method

.method public setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, p1

    .local v1, "lights":[Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    .line 102
    return-void
.end method

.method public setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    .line 68
    return-void
.end method

.method public setWidth(F)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move v1, p1

    .local v1, "width":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->slWidth:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGSubScene;->slWidth:F

    .line 83
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGSubScene;->geometryChanged()V

    .line 84
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGSubScene;->invalidateRTT()V

    .line 86
    :cond_0
    return-void
.end method

.method protected visualsChanged()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGSubScene;->renderSG:Z

    .line 111
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    .line 112
    return-void
.end method
