.class public final Lcom/sun/prism/paint/ImagePattern;
.super Lcom/sun/prism/paint/Paint;
.source "ImagePattern.java"


# instance fields
.field private final height:F

.field private final image:Lcom/sun/prism/Image;

.field private final width:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(Lcom/sun/prism/Image;FFFFZZ)V
    .locals 13

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "x":F
    move/from16 v3, p3

    .local v3, "y":F
    move/from16 v4, p4

    .local v4, "width":F
    move/from16 v5, p5

    .local v5, "height":F
    move/from16 v6, p6

    .local v6, "proportional":Z
    move/from16 v7, p7

    .local v7, "isMutable":Z
    move-object v8, v0

    sget-object v9, Lcom/sun/prism/paint/Paint$Type;->IMAGE_PATTERN:Lcom/sun/prism/paint/Paint$Type;

    move v10, v6

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/prism/paint/Paint;-><init>(Lcom/sun/prism/paint/Paint$Type;ZZ)V

    .line 43
    move-object v8, v1

    if-nez v8, :cond_0

    .line 44
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Image must be non-null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 46
    :cond_0
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/prism/paint/ImagePattern;->image:Lcom/sun/prism/Image;

    .line 47
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/prism/paint/ImagePattern;->x:F

    .line 48
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/prism/paint/ImagePattern;->y:F

    .line 49
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/prism/paint/ImagePattern;->width:F

    .line 50
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/prism/paint/ImagePattern;->height:F

    .line 51
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/ImagePattern;->height:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/ImagePattern;
    return v0
.end method

.method public getImage()Lcom/sun/prism/Image;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/ImagePattern;->image:Lcom/sun/prism/Image;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/ImagePattern;
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/ImagePattern;->width:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/ImagePattern;
    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/ImagePattern;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/ImagePattern;
    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/ImagePattern;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/ImagePattern;
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/ImagePattern;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/ImagePattern;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->isOpaque()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/ImagePattern;
    return v0
.end method
