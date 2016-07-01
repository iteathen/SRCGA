.class public Lcom/sun/prism/image/Coords;
.super Ljava/lang/Object;
.source "Coords.java"


# instance fields
.field u0:F

.field u1:F

.field v0:F

.field v1:F

.field x0:F

.field x1:F

.field y0:F

.field y1:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/Coords;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(FFLcom/sun/prism/image/ViewPort;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/Coords;
    move v1, p1

    .local v1, "w":F
    move v2, p2

    .local v2, "h":F
    move-object v3, p3

    .local v3, "v":Lcom/sun/prism/image/ViewPort;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/prism/image/Coords;->x0:F

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/prism/image/Coords;->x1:F

    .line 37
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/prism/image/Coords;->y0:F

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/prism/image/Coords;->y1:F

    .line 38
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/image/ViewPort;->u0:F

    iput v5, v4, Lcom/sun/prism/image/Coords;->u0:F

    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/image/ViewPort;->u1:F

    iput v5, v4, Lcom/sun/prism/image/Coords;->u1:F

    .line 39
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/image/ViewPort;->v0:F

    iput v5, v4, Lcom/sun/prism/image/Coords;->v0:F

    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/image/ViewPort;->v1:F

    iput v5, v4, Lcom/sun/prism/image/Coords;->v1:F

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Lcom/sun/prism/Texture;Lcom/sun/prism/Graphics;FF)V
    .locals 15

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/Coords;
    move-object/from16 v1, p1

    .local v1, "t":Lcom/sun/prism/Texture;
    move-object/from16 v2, p2

    .local v2, "g":Lcom/sun/prism/Graphics;
    move/from16 v3, p3

    .local v3, "x":F
    move/from16 v4, p4

    .local v4, "y":F
    move-object v5, v2

    move-object v6, v1

    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/image/Coords;->x0:F

    add-float/2addr v7, v8

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/image/Coords;->y0:F

    add-float/2addr v8, v9

    move v9, v3

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/image/Coords;->x1:F

    add-float/2addr v9, v10

    move v10, v4

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/image/Coords;->y1:F

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/image/Coords;->u0:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/image/Coords;->v0:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/image/Coords;->u1:F

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/image/Coords;->v1:F

    invoke-interface/range {v5 .. v14}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 49
    return-void
.end method

.method public getX(F)F
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/Coords;
    move v1, p1

    .local v1, "u":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/image/Coords;->x0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/Coords;->u1:F

    move v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/Coords;->x1:F

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/image/Coords;->u0:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/Coords;->u1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/image/Coords;->u0:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/Coords;
    return v0
.end method

.method public getY(F)F
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/Coords;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/image/Coords;->y0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/Coords;->v1:F

    move v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/Coords;->y1:F

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/image/Coords;->v0:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/Coords;->v1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/image/Coords;->v0:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/Coords;
    return v0
.end method
