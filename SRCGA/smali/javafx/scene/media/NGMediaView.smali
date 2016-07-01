.class Ljavafx/scene/media/NGMediaView;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGMediaView.java"


# instance fields
.field private final dimension:Lcom/sun/javafx/geom/RectBounds;

.field private frameTracker:Lcom/sun/javafx/sg/prism/MediaFrameTracker;

.field private handler:Lcom/sun/javafx/media/PrismMediaFrameHandler;

.field private player:Ljavafx/scene/media/MediaPlayer;

.field private smooth:Z

.field private final viewport:Lcom/sun/javafx/geom/RectBounds;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 39
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/media/NGMediaView;->smooth:Z

    .line 40
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    .line 41
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    return-void
.end method


# virtual methods
.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/NGMediaView;
    return v0
.end method

.method public isSmooth()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/media/NGMediaView;->smooth:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/NGMediaView;
    return v0
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 22

    .prologue
    .line 151
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/NGMediaView;->handler:Lcom/sun/javafx/media/PrismMediaFrameHandler;

    if-eq v12, v13, :cond_0

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    if-ne v12, v13, :cond_1

    .line 152
    .line 191
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v12}, Ljavafx/scene/media/MediaPlayer;->impl_getLatestFrame()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v12

    move-object v2, v12

    .line 156
    .local v2, "frame":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    const/4 v12, 0x0

    move-object v13, v2

    if-ne v12, v13, :cond_2

    .line 157
    goto :goto_0

    .line 160
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->handler:Lcom/sun/javafx/media/PrismMediaFrameHandler;

    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->getTexture(Lcom/sun/prism/Graphics;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/prism/Texture;

    move-result-object v12

    move-object v3, v12

    .line 161
    .local v3, "texture":Lcom/sun/prism/Texture;
    move-object v12, v3

    if-eqz v12, :cond_5

    .line 162
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v12

    move v4, v12

    .line 163
    .local v4, "iw":F
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v12

    move v5, v12

    .line 164
    .local v5, "ih":F
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 165
    .local v6, "dimensionsSet":Z
    move v12, v6

    if-eqz v12, :cond_7

    move v12, v4

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    .line 166
    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v13

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v13

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_7

    :cond_3
    const/4 v12, 0x1

    :goto_2
    move v7, v12

    .line 168
    .local v7, "doScale":Z
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v13

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    invoke-interface {v12, v13, v14}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 170
    move v12, v7

    if-eqz v12, :cond_4

    move v12, v4

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_4

    move v12, v5

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_4

    .line 171
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v12

    move v13, v4

    div-float/2addr v12, v13

    move v8, v12

    .line 172
    .local v8, "scaleW":F
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v12

    move v13, v5

    div-float/2addr v12, v13

    move v9, v12

    .line 173
    .local v9, "scaleH":F
    move-object v12, v1

    move v13, v8

    move v14, v9

    invoke-interface {v12, v13, v14}, Lcom/sun/prism/Graphics;->scale(FF)V

    .line 176
    .end local v8    # "scaleW":F
    .end local v9    # "scaleH":F
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v12

    move v8, v12

    .line 177
    .local v8, "sx1":F
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v12

    move v9, v12

    .line 178
    .local v9, "sy1":F
    move v12, v8

    move v13, v4

    add-float/2addr v12, v13

    move v10, v12

    .line 179
    .local v10, "sx2":F
    move v12, v9

    move v13, v5

    add-float/2addr v12, v13

    move v11, v12

    .line 181
    .local v11, "sy2":F
    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-interface/range {v12 .. v21}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 184
    move-object v12, v3

    invoke-interface {v12}, Lcom/sun/prism/Texture;->unlock()V

    .line 186
    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/NGMediaView;->frameTracker:Lcom/sun/javafx/sg/prism/MediaFrameTracker;

    if-eq v12, v13, :cond_5

    .line 187
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/NGMediaView;->frameTracker:Lcom/sun/javafx/sg/prism/MediaFrameTracker;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/sun/javafx/sg/prism/MediaFrameTracker;->incrementRenderedFrameCount(I)V

    .line 190
    .end local v4    # "iw":F
    .end local v5    # "ih":F
    .end local v6    # "dimensionsSet":Z
    .end local v7    # "doScale":Z
    .end local v8    # "sx1":F
    .end local v9    # "sy1":F
    .end local v10    # "sx2":F
    .end local v11    # "sy2":F
    :cond_5
    move-object v12, v2

    invoke-interface {v12}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 191
    goto/16 :goto_0

    .line 164
    .restart local v4    # "iw":F
    .restart local v5    # "ih":F
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 166
    .restart local v6    # "dimensionsSet":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public renderNextFrame()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/NGMediaView;->visualsChanged()V

    .line 48
    return-void
.end method

.method public setFrameTracker(Lcom/sun/javafx/sg/prism/MediaFrameTracker;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move-object v1, p1

    .local v1, "t":Lcom/sun/javafx/sg/prism/MediaFrameTracker;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/NGMediaView;->frameTracker:Lcom/sun/javafx/sg/prism/MediaFrameTracker;

    .line 200
    return-void
.end method

.method public setMediaProvider(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 81
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    .line 82
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/media/NGMediaView;->handler:Lcom/sun/javafx/media/PrismMediaFrameHandler;

    .line 83
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/NGMediaView;->geometryChanged()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/media/MediaPlayer;

    iput-object v3, v2, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    .line 86
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Lcom/sun/javafx/media/PrismMediaFrameHandler;->getHandler(Ljava/lang/Object;)Lcom/sun/javafx/media/PrismMediaFrameHandler;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/media/NGMediaView;->handler:Lcom/sun/javafx/media/PrismMediaFrameHandler;

    .line 87
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/NGMediaView;->geometryChanged()V

    goto :goto_0
.end method

.method public setSmooth(Z)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move v1, p1

    .local v1, "smooth":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/media/NGMediaView;->smooth:Z

    if-eq v2, v3, :cond_0

    .line 56
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/media/NGMediaView;->smooth:Z

    .line 57
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/NGMediaView;->visualsChanged()V

    .line 59
    :cond_0
    return-void
.end method

.method public setViewport(FFFFFFZ)V
    .locals 20

    .prologue
    .line 95
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/media/NGMediaView;
    move/from16 v2, p1

    .local v2, "fitWidth":F
    move/from16 v3, p2

    .local v3, "fitHeight":F
    move/from16 v4, p3

    .local v4, "vx":F
    move/from16 v5, p4

    .local v5, "vy":F
    move/from16 v6, p5

    .local v6, "vw":F
    move/from16 v7, p6

    .local v7, "vh":F
    move/from16 v8, p7

    .local v8, "preserveRatio":Z
    const/4 v14, 0x0

    move v9, v14

    .line 96
    .local v9, "w":F
    const/4 v14, 0x0

    move v10, v14

    .line 97
    .local v10, "h":F
    move v14, v2

    move v11, v14

    .line 98
    .local v11, "newW":F
    move v14, v3

    move v12, v14

    .line 101
    .local v12, "newH":F
    const/4 v14, 0x0

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    if-eq v14, v15, :cond_0

    .line 102
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/media/NGMediaView;->player:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v14}, Ljavafx/scene/media/MediaPlayer;->getMedia()Ljavafx/scene/media/Media;

    move-result-object v14

    move-object v13, v14

    .line 103
    .local v13, "m":Ljavafx/scene/media/Media;
    move-object v14, v13

    invoke-virtual {v14}, Ljavafx/scene/media/Media;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move v9, v14

    .line 104
    move-object v14, v13

    invoke-virtual {v14}, Ljavafx/scene/media/Media;->getHeight()I

    move-result v14

    int-to-float v14, v14

    move v10, v14

    .line 107
    .end local v13    # "m":Ljavafx/scene/media/Media;
    :cond_0
    move v14, v6

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    move v14, v7

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 108
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v4

    move/from16 v18, v6

    add-float v17, v17, v18

    move/from16 v18, v5

    move/from16 v19, v7

    add-float v18, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 109
    move v14, v6

    move v9, v14

    .line 110
    move v14, v7

    move v10, v14

    .line 114
    :goto_0
    move v14, v2

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_5

    move v14, v3

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_5

    .line 115
    move v14, v9

    move v11, v14

    .line 116
    move v14, v10

    move v12, v14

    .line 138
    :cond_1
    :goto_1
    move v14, v12

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    .line 139
    const/high16 v14, 0x3f800000    # 1.0f

    move v12, v14

    .line 141
    :cond_2
    move v14, v11

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 142
    const/high16 v14, 0x3f800000    # 1.0f

    move v11, v14

    .line 144
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v15

    move/from16 v16, v11

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/RectBounds;->setMaxX(F)V

    .line 145
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v15

    move/from16 v16, v12

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/RectBounds;->setMaxY(F)V

    .line 146
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/media/NGMediaView;->geometryChanged()V

    .line 147
    return-void

    .line 112
    :cond_4
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/media/NGMediaView;->viewport:Lcom/sun/javafx/geom/RectBounds;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    goto :goto_0

    .line 117
    :cond_5
    move v14, v8

    if-eqz v14, :cond_c

    .line 120
    move v14, v2

    float-to-double v14, v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_7

    .line 121
    move v14, v10

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    move v14, v9

    move v15, v3

    move/from16 v16, v10

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    :goto_2
    move v11, v14

    .line 122
    move v14, v3

    move v12, v14

    goto :goto_1

    .line 121
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 123
    :cond_7
    move v14, v3

    float-to-double v14, v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_9

    .line 124
    move v14, v2

    move v11, v14

    .line 125
    move v14, v9

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    move v14, v10

    move v15, v2

    move/from16 v16, v9

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    :goto_3
    move v12, v14

    goto :goto_1

    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 127
    :cond_9
    move v14, v9

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_a

    move v14, v2

    move v9, v14

    .line 128
    :cond_a
    move v14, v10

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_b

    move v14, v3

    move v10, v14

    .line 129
    :cond_b
    move v14, v2

    move v15, v9

    div-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v10

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move v13, v14

    .line 130
    .local v13, "scale":F
    move v14, v9

    move v15, v13

    mul-float/2addr v14, v15

    move v11, v14

    .line 131
    move v14, v10

    move v15, v13

    mul-float/2addr v14, v15

    move v12, v14

    .line 132
    goto/16 :goto_1

    .line 133
    .end local v13    # "scale":F
    :cond_c
    move v14, v3

    float-to-double v14, v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_d

    .line 134
    move v14, v10

    move v12, v14

    goto/16 :goto_1

    .line 135
    :cond_d
    move v14, v2

    float-to-double v14, v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_1

    .line 136
    move v14, v9

    move v11, v14

    goto/16 :goto_1
.end method

.method public setX(F)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move v1, p1

    .local v1, "x":F
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 63
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v3

    move v2, v3

    .line 64
    .local v2, "width":F
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->setMinX(F)V

    .line 65
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    move v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->setMaxX(F)V

    .line 66
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/NGMediaView;->geometryChanged()V

    .line 68
    .end local v2    # "width":F
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/NGMediaView;
    move v1, p1

    .local v1, "y":F
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v3

    move v2, v3

    .line 73
    .local v2, "height":F
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->setMinY(F)V

    .line 74
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/NGMediaView;->dimension:Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    move v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->setMaxY(F)V

    .line 75
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/NGMediaView;->geometryChanged()V

    .line 77
    .end local v2    # "height":F
    :cond_0
    return-void
.end method
