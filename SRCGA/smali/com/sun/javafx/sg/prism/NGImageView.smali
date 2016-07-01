.class public Lcom/sun/javafx/sg/prism/NGImageView;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGImageView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final MAX_SIZE_OVERRIDE:I


# instance fields
.field private compoundCoords:Lcom/sun/prism/image/CompoundCoords;

.field private compoundImage:Lcom/sun/prism/image/CachingCompoundImage;

.field private coords:Lcom/sun/prism/image/Coords;

.field private coordsOK:Z

.field private h:F

.field private image:Lcom/sun/prism/Image;

.field private imgviewport:Lcom/sun/prism/image/ViewPort;

.field private renderable:Z

.field private reqviewport:Lcom/sun/prism/image/ViewPort;

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sun/javafx/sg/prism/NGImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/sg/prism/NGImageView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGImageView;->renderable:Z

    .line 55
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGImageView;->coordsOK:Z

    return-void
.end method

.method private calculatePositionAndClipping()V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGImageView;->renderable:Z

    .line 81
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGImageView;->coordsOK:Z

    .line 83
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGImageView;->reqviewport:Lcom/sun/prism/image/ViewPort;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    if-nez v3, :cond_2

    .line 84
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGImageView;->renderable:Z

    .line 85
    .line 95
    :goto_1
    return-void

    .line 84
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 88
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v3}, Lcom/sun/prism/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move v1, v3

    .line 89
    .local v1, "iw":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v3}, Lcom/sun/prism/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v2, v3

    .line 90
    .local v2, "ih":F
    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    :cond_3
    goto :goto_1

    .line 91
    :cond_4
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->reqviewport:Lcom/sun/prism/image/ViewPort;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v5}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/prism/image/ViewPort;->getScaledVersion(F)Lcom/sun/prism/image/ViewPort;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGImageView;->imgviewport:Lcom/sun/prism/image/ViewPort;

    .line 93
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->imgviewport:Lcom/sun/prism/image/ViewPort;

    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGImageView;->w:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->h:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/image/ViewPort;->getClippedCoords(FFFF)Lcom/sun/prism/image/Coords;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    .line 94
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGImageView;->renderable:Z

    .line 95
    goto :goto_1

    .line 94
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private invalidate()V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGImageView;->coordsOK:Z

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGImageView;->compoundCoords:Lcom/sun/prism/image/CompoundCoords;

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGImageView;->imgviewport:Lcom/sun/prism/image/ViewPort;

    .line 62
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGImageView;->geometryChanged()V

    .line 63
    return-void
.end method

.method private maxSizeWrapper(Lcom/sun/prism/ResourceFactory;)I
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v1, p1

    .local v1, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/ResourceFactory;->getMaximumTextureSize()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGImageView;
    return v0
.end method


# virtual methods
.method protected computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 9

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v1, p1

    .local v1, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGImageView;->w:F

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->h:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGImageView;
    return-object v0
.end method

.method protected doRender(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/sg/prism/NGImageView;->coordsOK:Z

    if-nez v2, :cond_0

    .line 100
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGImageView;->calculatePositionAndClipping()V

    .line 102
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/sg/prism/NGImageView;->renderable:Z

    if-eqz v2, :cond_1

    .line 103
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->doRender(Lcom/sun/prism/Graphics;)V

    .line 105
    :cond_1
    return-void
.end method

.method protected hasOpaqueRegion()Z
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    sget-boolean v1, Lcom/sun/javafx/sg/prism/NGImageView;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 185
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGNode;->hasOpaqueRegion()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->w:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGImageView;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGImageView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGImageView;
    return v0
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 20

    .prologue
    .line 115
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object/from16 v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v8}, Lcom/sun/prism/Image;->getWidth()I

    move-result v8

    move v3, v8

    .line 116
    .local v3, "imgW":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    invoke-virtual {v8}, Lcom/sun/prism/Image;->getHeight()I

    move-result v8

    move v4, v8

    .line 118
    .local v4, "imgH":I
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v8

    move-object v5, v8

    .line 119
    .local v5, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v8, v1

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/NGImageView;->maxSizeWrapper(Lcom/sun/prism/ResourceFactory;)I

    move-result v8

    move v6, v8

    .line 120
    .local v6, "maxSize":I
    move v8, v3

    move v9, v6

    if-gt v8, v9, :cond_1

    move v8, v4

    move v9, v6

    if-gt v8, v9, :cond_1

    .line 121
    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    sget-object v10, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v8, v9, v10}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v8

    move-object v7, v8

    .line 122
    .local v7, "texture":Lcom/sun/prism/Texture;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    if-nez v8, :cond_0

    .line 123
    move-object v8, v2

    move-object v9, v7

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGImageView;->w:F

    add-float/2addr v12, v13

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/sg/prism/NGImageView;->h:F

    add-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-interface/range {v8 .. v17}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 127
    :goto_0
    move-object v8, v7

    invoke-interface {v8}, Lcom/sun/prism/Texture;->unlock()V

    .line 128
    .line 136
    .end local v7    # "texture":Lcom/sun/prism/Texture;
    :goto_1
    return-void

    .line 125
    .restart local v7    # "texture":Lcom/sun/prism/Texture;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    move-object v9, v7

    move-object v10, v2

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/prism/image/Coords;->draw(Lcom/sun/prism/Texture;Lcom/sun/prism/Graphics;FF)V

    goto :goto_0

    .line 129
    .end local v7    # "texture":Lcom/sun/prism/Texture;
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->compoundImage:Lcom/sun/prism/image/CachingCompoundImage;

    if-nez v8, :cond_2

    move-object v8, v1

    new-instance v9, Lcom/sun/prism/image/CachingCompoundImage;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    move v12, v6

    invoke-direct {v10, v11, v12}, Lcom/sun/prism/image/CachingCompoundImage;-><init>(Lcom/sun/prism/Image;I)V

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NGImageView;->compoundImage:Lcom/sun/prism/image/CachingCompoundImage;

    .line 132
    :cond_2
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    if-nez v8, :cond_3

    move-object v8, v1

    new-instance v9, Lcom/sun/prism/image/Coords;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGImageView;->w:F

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGImageView;->h:F

    new-instance v13, Lcom/sun/prism/image/ViewPort;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v4

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lcom/sun/prism/image/ViewPort;-><init>(FFFF)V

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/prism/image/Coords;-><init>(FFLcom/sun/prism/image/ViewPort;)V

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    .line 133
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->compoundCoords:Lcom/sun/prism/image/CompoundCoords;

    if-nez v8, :cond_4

    move-object v8, v1

    new-instance v9, Lcom/sun/prism/image/CompoundCoords;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGImageView;->compoundImage:Lcom/sun/prism/image/CachingCompoundImage;

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGImageView;->coords:Lcom/sun/prism/image/Coords;

    invoke-direct {v10, v11, v12}, Lcom/sun/prism/image/CompoundCoords;-><init>(Lcom/sun/prism/image/CompoundImage;Lcom/sun/prism/image/Coords;)V

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NGImageView;->compoundCoords:Lcom/sun/prism/image/CompoundCoords;

    .line 134
    :cond_4
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGImageView;->compoundCoords:Lcom/sun/prism/image/CompoundCoords;

    move-object v9, v2

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGImageView;->compoundImage:Lcom/sun/prism/image/CachingCompoundImage;

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/prism/image/CompoundCoords;->draw(Lcom/sun/prism/Graphics;Lcom/sun/prism/image/CompoundImage;FF)V

    goto/16 :goto_1
.end method

.method public setImage(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v1, p1

    .local v1, "img":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lcom/sun/prism/Image;

    move-object v2, v4

    .line 146
    .local v2, "newImage":Lcom/sun/prism/Image;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 157
    :goto_0
    return-void

    .line 148
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    .line 149
    invoke-virtual {v4}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    .line 150
    invoke-virtual {v4}, Lcom/sun/prism/Image;->getHeight()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/Image;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    .line 151
    invoke-virtual {v4}, Lcom/sun/prism/Image;->getWidth()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/Image;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 153
    .local v3, "needsInvalidate":Z
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGImageView;->image:Lcom/sun/prism/Image;

    .line 154
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGImageView;->compoundImage:Lcom/sun/prism/image/CachingCompoundImage;

    .line 156
    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/sg/prism/NGImageView;->invalidate()V

    .line 157
    :cond_2
    goto :goto_0

    .line 151
    .end local v3    # "needsInvalidate":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setSmooth(Z)V
    .locals 0
    .param p1, "s"    # Z

    .prologue
    .line 174
    return-void
.end method

.method public setViewport(FFFFFF)V
    .locals 15

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move/from16 v1, p1

    .local v1, "vx":F
    move/from16 v2, p2

    .local v2, "vy":F
    move/from16 v3, p3

    .local v3, "vw":F
    move/from16 v4, p4

    .local v4, "vh":F
    move/from16 v5, p5

    .local v5, "cw":F
    move/from16 v6, p6

    .local v6, "ch":F
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 68
    move-object v7, v0

    new-instance v8, Lcom/sun/prism/image/ViewPort;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/prism/image/ViewPort;-><init>(FFFF)V

    iput-object v8, v7, Lcom/sun/javafx/sg/prism/NGImageView;->reqviewport:Lcom/sun/prism/image/ViewPort;

    .line 73
    :goto_0
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/sg/prism/NGImageView;->w:F

    .line 74
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/sg/prism/NGImageView;->h:F

    .line 76
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/sg/prism/NGImageView;->invalidate()V

    .line 77
    return-void

    .line 70
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/sg/prism/NGImageView;->reqviewport:Lcom/sun/prism/image/ViewPort;

    goto :goto_0
.end method

.method public setX(F)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move v1, p1

    .local v1, "x":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 161
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGImageView;->x:F

    .line 162
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGImageView;->geometryChanged()V

    .line 164
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    move v1, p1

    .local v1, "y":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGImageView;->y:F

    .line 169
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGImageView;->geometryChanged()V

    .line 171
    :cond_0
    return-void
.end method

.method protected supportsOpaqueRegions()Z
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGImageView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGImageView;
    return v0
.end method
