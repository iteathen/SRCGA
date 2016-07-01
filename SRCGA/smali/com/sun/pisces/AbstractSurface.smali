.class public abstract Lcom/sun/pisces/AbstractSurface;
.super Ljava/lang/Object;
.source "AbstractSurface.java"

# interfaces
.implements Lcom/sun/pisces/Surface;


# instance fields
.field private height:I

.field private nativePtr:J

.field private width:I


# direct methods
.method constructor <init>(II)V
    .locals 9

    .prologue
    .line 34
    move-object v1, p0

    .local v1, "this":Lcom/sun/pisces/AbstractSurface;
    move v2, p1

    .local v2, "width":I
    move v3, p2

    .local v3, "height":I
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/pisces/AbstractSurface;->nativePtr:J

    .line 35
    move v5, v2

    if-gez v5, :cond_0

    .line 36
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "WIDTH must be positive"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 38
    :cond_0
    move v5, v3

    if-gez v5, :cond_1

    .line 39
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "HEIGHT must be positive"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_1
    const/16 v5, 0x20

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    rsub-int/lit8 v5, v6, 0x20

    const/16 v6, 0x20

    add-int/lit8 v5, v5, 0x20

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 42
    .local v4, "nbits":I
    move v5, v4

    const/16 v6, 0x1f

    if-le v5, v6, :cond_2

    .line 43
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "WIDTH * HEIGHT is too large"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_2
    move-object v5, v1

    move v6, v2

    iput v6, v5, Lcom/sun/pisces/AbstractSurface;->width:I

    .line 46
    move-object v5, v1

    move v6, v3

    iput v6, v5, Lcom/sun/pisces/AbstractSurface;->height:I

    .line 47
    return-void
.end method

.method private native getRGBImpl([IIIIIII)V
.end method

.method private native nativeFinalize()V
.end method

.method private rgbCheck(IIIIIII)V
    .locals 14

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/AbstractSurface;
    move v1, p1

    .local v1, "arr_length":I
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "scanLength":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move v9, v4

    if-ltz v9, :cond_0

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/sun/pisces/AbstractSurface;->width:I

    if-lt v9, v10, :cond_1

    .line 65
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "X is out of surface"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 67
    :cond_1
    move v9, v5

    if-ltz v9, :cond_2

    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/sun/pisces/AbstractSurface;->height:I

    if-lt v9, v10, :cond_3

    .line 68
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Y is out of surface"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 70
    :cond_3
    move v9, v6

    if-gez v9, :cond_4

    .line 71
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "WIDTH must be positive"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 73
    :cond_4
    move v9, v7

    if-gez v9, :cond_5

    .line 74
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "HEIGHT must be positive"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 76
    :cond_5
    move v9, v4

    move v10, v6

    add-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/pisces/AbstractSurface;->width:I

    if-le v9, v10, :cond_6

    .line 77
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "X+WIDTH is out of surface"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 79
    :cond_6
    move v9, v5

    move v10, v7

    add-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/pisces/AbstractSurface;->height:I

    if-le v9, v10, :cond_7

    .line 80
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Y+HEIGHT is out of surface"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 82
    :cond_7
    move v9, v2

    if-gez v9, :cond_8

    .line 83
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "OFFSET must be positive"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    :cond_8
    move v9, v3

    if-gez v9, :cond_9

    .line 86
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "SCAN-LENGTH must be positive"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 88
    :cond_9
    move v9, v3

    move v10, v6

    if-ge v9, v10, :cond_a

    .line 89
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "SCAN-LENGTH must be >= WIDTH"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 91
    :cond_a
    const/16 v9, 0x20

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v10

    rsub-int/lit8 v9, v10, 0x20

    const/16 v10, 0x20

    add-int/lit8 v9, v9, 0x20

    move v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    .line 92
    .local v8, "nbits":I
    move v9, v8

    const/16 v10, 0x1f

    if-le v9, v10, :cond_b

    .line 93
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "SCAN-LENGTH * HEIGHT is too large"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 95
    :cond_b
    move v9, v2

    move v10, v3

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    move v10, v6

    add-int/2addr v9, v10

    move v10, v1

    if-le v9, v10, :cond_c

    .line 96
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "STRIDE * HEIGHT exceeds length of data"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :cond_c
    return-void
.end method

.method private native setRGBImpl([IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/AbstractSurface;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/pisces/AbstractSurface;->nativeFinalize()V

    .line 102
    return-void
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/AbstractSurface;
    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/AbstractSurface;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/pisces/AbstractSurface;
    return v0
.end method

.method public final getRGB([IIIIIII)V
    .locals 16

    .prologue
    .line 50
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/AbstractSurface;
    move-object/from16 v1, p1

    .local v1, "argb":[I
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "scanLength":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move-object v8, v0

    move-object v9, v1

    array-length v9, v9

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/pisces/AbstractSurface;->rgbCheck(IIIIIII)V

    .line 51
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/pisces/AbstractSurface;->getRGBImpl([IIIIIII)V

    .line 52
    return-void
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/AbstractSurface;
    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/AbstractSurface;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/pisces/AbstractSurface;
    return v0
.end method

.method public final setRGB([IIIIIII)V
    .locals 16

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/AbstractSurface;
    move-object/from16 v1, p1

    .local v1, "argb":[I
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "scanLength":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move-object v8, v0

    move-object v9, v1

    array-length v9, v9

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/pisces/AbstractSurface;->rgbCheck(IIIIIII)V

    .line 58
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/pisces/AbstractSurface;->setRGBImpl([IIIIIII)V

    .line 59
    return-void
.end method
