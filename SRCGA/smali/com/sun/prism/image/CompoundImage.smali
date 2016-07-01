.class public abstract Lcom/sun/prism/image/CompoundImage;
.super Ljava/lang/Object;
.source "CompoundImage.java"


# static fields
.field public static final BORDER_SIZE_DEFAULT:I = 0x1


# instance fields
.field protected tiles:[Lcom/sun/prism/Image;

.field protected final u0:[I

.field protected final u1:[I

.field protected final uBorderSize:I

.field protected final uSections:I

.field protected final uSubdivision:[I

.field protected final v0:[I

.field protected final v1:[I

.field protected final vBorderSize:I

.field protected final vSections:I

.field protected final vSubdivision:[I


# direct methods
.method public constructor <init>(Lcom/sun/prism/Image;I)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "maxSize":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/prism/image/CompoundImage;-><init>(Lcom/sun/prism/Image;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sun/prism/Image;II)V
    .locals 17

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move/from16 v2, p2

    .local v2, "maxSize":I
    move/from16 v3, p3

    .local v3, "borderSize":I
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v8, 0x4

    move v9, v3

    mul-int/2addr v8, v9

    move v9, v2

    if-lt v8, v9, :cond_0

    move v8, v2

    const/4 v9, 0x4

    div-int/lit8 v8, v8, 0x4

    move v3, v8

    .line 62
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/prism/Image;->getWidth()I

    move-result v8

    move v4, v8

    .line 63
    .local v4, "imgW":I
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/prism/Image;->getHeight()I

    move-result v8

    move v5, v8

    .line 65
    .local v5, "imgH":I
    move-object v8, v0

    move v9, v4

    move v10, v2

    if-gt v9, v10, :cond_1

    const/4 v9, 0x0

    :goto_0
    iput v9, v8, Lcom/sun/prism/image/CompoundImage;->uBorderSize:I

    .line 66
    move-object v8, v0

    move v9, v5

    move v10, v2

    if-gt v9, v10, :cond_2

    const/4 v9, 0x0

    :goto_1
    iput v9, v8, Lcom/sun/prism/image/CompoundImage;->vBorderSize:I

    .line 68
    move-object v8, v0

    move v9, v4

    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/image/CompoundImage;->uBorderSize:I

    invoke-static {v9, v10, v11}, Lcom/sun/prism/image/CompoundImage;->subdivideUVs(III)[I

    move-result-object v9

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    .line 69
    move-object v8, v0

    move v9, v5

    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/image/CompoundImage;->vBorderSize:I

    invoke-static {v9, v10, v11}, Lcom/sun/prism/image/CompoundImage;->subdivideUVs(III)[I

    move-result-object v9

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    .line 71
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/prism/image/CompoundImage;->uSections:I

    .line 72
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/prism/image/CompoundImage;->vSections:I

    .line 74
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->uSections:I

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->u0:[I

    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->uSections:I

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->u1:[I

    .line 75
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->vSections:I

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->v0:[I

    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->vSections:I

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->v1:[I

    .line 78
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->uSections:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/image/CompoundImage;->vSections:I

    mul-int/2addr v9, v10

    new-array v9, v9, [Lcom/sun/prism/Image;

    iput-object v9, v8, Lcom/sun/prism/image/CompoundImage;->tiles:[Lcom/sun/prism/Image;

    .line 80
    const/4 v8, 0x0

    move v6, v8

    .local v6, "y":I
    :goto_2
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->vSections:I

    if-eq v8, v9, :cond_3

    .line 81
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/image/CompoundImage;->v0:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move v11, v6

    aget v10, v10, v11

    move-object v11, v0

    move v12, v6

    invoke-direct {v11, v12}, Lcom/sun/prism/image/CompoundImage;->uBorder(I)I

    move-result v11

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 82
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/image/CompoundImage;->v1:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move-object v11, v0

    move v12, v6

    invoke-direct {v11, v12}, Lcom/sun/prism/image/CompoundImage;->dBorder(I)I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 65
    .end local v6    # "y":I
    :cond_1
    move v9, v3

    goto/16 :goto_0

    .line 66
    :cond_2
    move v9, v3

    goto/16 :goto_1

    .line 85
    .restart local v6    # "y":I
    :cond_3
    const/4 v8, 0x0

    move v6, v8

    .local v6, "x":I
    :goto_3
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->uSections:I

    if-eq v8, v9, :cond_4

    .line 86
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/image/CompoundImage;->u0:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move v11, v6

    aget v10, v10, v11

    move-object v11, v0

    move v12, v6

    invoke-direct {v11, v12}, Lcom/sun/prism/image/CompoundImage;->lBorder(I)I

    move-result v11

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 87
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/image/CompoundImage;->u1:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move-object v11, v0

    move v12, v6

    invoke-direct {v11, v12}, Lcom/sun/prism/image/CompoundImage;->rBorder(I)I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 90
    :cond_4
    const/4 v8, 0x0

    move v6, v8

    .local v6, "y":I
    :goto_4
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->vSections:I

    if-eq v8, v9, :cond_6

    .line 91
    const/4 v8, 0x0

    move v7, v8

    .local v7, "x":I
    :goto_5
    move v8, v7

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/CompoundImage;->uSections:I

    if-eq v8, v9, :cond_5

    .line 93
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/image/CompoundImage;->tiles:[Lcom/sun/prism/Image;

    move v9, v6

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/image/CompoundImage;->uSections:I

    mul-int/2addr v9, v10

    move v10, v7

    add-int/2addr v9, v10

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/image/CompoundImage;->u0:[I

    move v12, v7

    aget v11, v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/image/CompoundImage;->v0:[I

    move v13, v6

    aget v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/image/CompoundImage;->u1:[I

    move v14, v7

    aget v13, v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/image/CompoundImage;->u0:[I

    move v15, v7

    aget v14, v14, v15

    sub-int/2addr v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/image/CompoundImage;->v1:[I

    move v15, v6

    aget v14, v14, v15

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/image/CompoundImage;->v0:[I

    move/from16 v16, v6

    aget v15, v15, v16

    sub-int/2addr v14, v15

    .line 94
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/prism/Image;->createSubImage(IIII)Lcom/sun/prism/Image;

    move-result-object v10

    aput-object v10, v8, v9

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 90
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 97
    .end local v7    # "x":I
    :cond_6
    return-void
.end method

.method private dBorder(I)I
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/CompoundImage;->vSections:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/image/CompoundImage;->vBorderSize:I

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private lBorder(I)I
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/image/CompoundImage;->uBorderSize:I

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private rBorder(I)I
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/CompoundImage;->uSections:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/image/CompoundImage;->uBorderSize:I

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static subdivideUVs(III)[I
    .locals 12

    .prologue
    .line 108
    move v0, p0

    .local v0, "size":I
    move v1, p1

    .local v1, "maxSize":I
    move v2, p2

    .local v2, "borderSize":I
    move v7, v1

    move v8, v2

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    move v3, v7

    .line 109
    .local v3, "contSize":I
    move v7, v0

    move v8, v2

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    move v8, v3

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v3

    div-int/2addr v7, v8

    move v4, v7

    .line 111
    .local v4, "nImages":I
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    move-object v5, v7

    .line 113
    .local v5, "data":[I
    move-object v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 114
    move-object v7, v5

    move v8, v4

    move v9, v0

    aput v9, v7, v8

    .line 116
    const/4 v7, 0x1

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 117
    move-object v7, v5

    move v8, v6

    move v9, v2

    move v10, v3

    move v11, v6

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    :cond_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "size":I
    return-object v0
.end method

.method private uBorder(I)I
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/image/CompoundImage;->vBorderSize:I

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/image/CompoundImage;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public drawLazy(Lcom/sun/prism/Graphics;Lcom/sun/prism/image/Coords;FF)V
    .locals 11

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundImage;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "crd":Lcom/sun/prism/image/Coords;
    move v3, p3

    .local v3, "x":F
    move v4, p4

    .local v4, "y":F
    new-instance v5, Lcom/sun/prism/image/CompoundCoords;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/image/CompoundCoords;-><init>(Lcom/sun/prism/image/CompoundImage;Lcom/sun/prism/image/Coords;)V

    move-object v6, v1

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/prism/image/CompoundCoords;->draw(Lcom/sun/prism/Graphics;Lcom/sun/prism/image/CompoundImage;FF)V

    .line 127
    return-void
.end method

.method protected abstract getTile(IILcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Texture;
.end method
