.class public abstract Lcom/sun/prism/impl/BaseTexture;
.super Ljava/lang/Object;
.source "BaseTexture.java"

# interfaces
.implements Lcom/sun/prism/Texture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sun/prism/impl/ManagedResource;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/prism/Texture;"
    }
.end annotation


# instance fields
.field protected contentHeight:I

.field protected contentWidth:I

.field private final contentX:I

.field private final contentY:I

.field private final format:Lcom/sun/prism/PixelFormat;

.field private lastImageSerial:I

.field private linearFiltering:Z

.field private final maxContentHeight:I

.field private final maxContentWidth:I

.field private final physicalHeight:I

.field private final physicalWidth:I

.field protected final resource:Lcom/sun/prism/impl/ManagedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final useMipmap:Z

.field private final wrapMode:Lcom/sun/prism/Texture$WrapMode;


# direct methods
.method protected constructor <init>(Lcom/sun/prism/impl/BaseTexture;Lcom/sun/prism/Texture$WrapMode;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/BaseTexture",
            "<TT;>;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, p1

    .local v1, "sharedTex":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v2, p2

    .local v2, "newMode":Lcom/sun/prism/Texture$WrapMode;
    move v3, p3

    .local v3, "useMipmap":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/prism/impl/BaseTexture;->linearFiltering:Z

    .line 58
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    iput-object v5, v4, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    .line 59
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    iput-object v5, v4, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    .line 60
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 61
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->physicalWidth:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->physicalWidth:I

    .line 62
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->physicalHeight:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->physicalHeight:I

    .line 63
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->contentX:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->contentX:I

    .line 64
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->contentY:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->contentY:I

    .line 65
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    .line 66
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    .line 67
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->maxContentWidth:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->maxContentWidth:I

    .line 68
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/BaseTexture;->maxContentHeight:I

    iput v5, v4, Lcom/sun/prism/impl/BaseTexture;->maxContentHeight:I

    .line 69
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/prism/impl/BaseTexture;->useMipmap:Z

    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sun/prism/PixelFormat;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 76
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "resource":Lcom/sun/prism/impl/ManagedResource;, "TT;"
    move-object/from16 v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v4

    move v15, v5

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v16}, Lcom/sun/prism/impl/BaseTexture;-><init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIIIZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sun/prism/PixelFormat;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "IIIIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "resource":Lcom/sun/prism/impl/ManagedResource;, "TT;"
    move-object/from16 v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "physicalWidth":I
    move/from16 v5, p5

    .local v5, "physicalHeight":I
    move/from16 v6, p6

    .local v6, "contentX":I
    move/from16 v7, p7

    .local v7, "contentY":I
    move/from16 v8, p8

    .local v8, "contentWidth":I
    move/from16 v9, p9

    .local v9, "contentHeight":I
    move/from16 v10, p10

    .local v10, "maxContentWidth":I
    move/from16 v11, p11

    .local v11, "maxContentHeight":I
    move/from16 v12, p12

    .local v12, "useMipmap":Z
    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/sun/prism/impl/BaseTexture;->linearFiltering:Z

    .line 106
    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    .line 107
    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    .line 108
    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 109
    move-object v13, v0

    move v14, v4

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->physicalWidth:I

    .line 110
    move-object v13, v0

    move v14, v5

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->physicalHeight:I

    .line 111
    move-object v13, v0

    move v14, v6

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->contentX:I

    .line 112
    move-object v13, v0

    move v14, v7

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->contentY:I

    .line 113
    move-object v13, v0

    move v14, v8

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    .line 114
    move-object v13, v0

    move v14, v9

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    .line 115
    move-object v13, v0

    move v14, v10

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->maxContentWidth:I

    .line 116
    move-object v13, v0

    move v14, v11

    iput v14, v13, Lcom/sun/prism/impl/BaseTexture;->maxContentHeight:I

    .line 117
    move-object v13, v0

    move v14, v12

    iput-boolean v14, v13, Lcom/sun/prism/impl/BaseTexture;->useMipmap:Z

    .line 118
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sun/prism/PixelFormat;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "IIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, p1

    .local v1, "resource":Lcom/sun/prism/impl/ManagedResource;, "TT;"
    move-object v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "physicalWidth":I
    move/from16 v5, p5

    .local v5, "physicalHeight":I
    move/from16 v6, p6

    .local v6, "contentX":I
    move/from16 v7, p7

    .local v7, "contentY":I
    move/from16 v8, p8

    .local v8, "contentWidth":I
    move/from16 v9, p9

    .local v9, "contentHeight":I
    move/from16 v10, p10

    .local v10, "useMipmap":Z
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/sun/prism/impl/BaseTexture;->linearFiltering:Z

    .line 85
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    .line 86
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    .line 87
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 88
    move-object v11, v0

    move v12, v4

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->physicalWidth:I

    .line 89
    move-object v11, v0

    move v12, v5

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->physicalHeight:I

    .line 90
    move-object v11, v0

    move v12, v6

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->contentX:I

    .line 91
    move-object v11, v0

    move v12, v7

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->contentY:I

    .line 92
    move-object v11, v0

    move v12, v8

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    .line 93
    move-object v11, v0

    move v12, v9

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    .line 94
    move-object v11, v0

    move v12, v4

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->maxContentWidth:I

    .line 95
    move-object v11, v0

    move v12, v5

    iput v12, v11, Lcom/sun/prism/impl/BaseTexture;->maxContentHeight:I

    .line 96
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lcom/sun/prism/impl/BaseTexture;->useMipmap:Z

    .line 97
    return-void
.end method


# virtual methods
.method public final assertLocked()V
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->assertLocked()V

    .line 268
    return-void
.end method

.method protected checkUpdateParams(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIII)V
    .locals 20

    .prologue
    .line 334
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object/from16 v2, p1

    .local v2, "buf":Ljava/nio/Buffer;
    move-object/from16 v3, p2

    .local v3, "fmt":Lcom/sun/prism/PixelFormat;
    move/from16 v4, p3

    .local v4, "dstx":I
    move/from16 v5, p4

    .local v5, "dsty":I
    move/from16 v6, p5

    .local v6, "srcx":I
    move/from16 v7, p6

    .local v7, "srcy":I
    move/from16 v8, p7

    .local v8, "srcw":I
    move/from16 v9, p8

    .local v9, "srch":I
    move/from16 v10, p9

    .local v10, "srcscan":I
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    sget-object v15, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    if-ne v14, v15, :cond_0

    .line 335
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string v16, "MULTI_YCbCr_420 requires multitexturing"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 337
    :cond_0
    move-object v14, v2

    if-nez v14, :cond_1

    .line 338
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string v16, "Pixel buffer must be non-null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 340
    :cond_1
    move-object v14, v3

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    if-eq v14, v15, :cond_2

    .line 341
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Image format ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "must match texture format ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 345
    :cond_2
    move v14, v4

    if-ltz v14, :cond_3

    move v14, v5

    if-gez v14, :cond_4

    .line 346
    :cond_3
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "dstx ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") and dsty ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") must be >= 0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 349
    :cond_4
    move v14, v6

    if-ltz v14, :cond_5

    move v14, v7

    if-gez v14, :cond_6

    .line 350
    :cond_5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "srcx ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") and srcy ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") must be >= 0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 353
    :cond_6
    move v14, v8

    if-lez v14, :cond_7

    move v14, v9

    if-gtz v14, :cond_8

    .line 354
    :cond_7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "srcw ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") and srch ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") must be > 0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 357
    :cond_8
    move-object v14, v3

    invoke-virtual {v14}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v14

    move v11, v14

    .line 358
    .local v11, "bytesPerPixel":I
    move v14, v10

    move v15, v11

    rem-int/2addr v14, v15

    if-eqz v14, :cond_9

    .line 359
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "srcscan ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "must be a multiple of the pixel stride ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 363
    :cond_9
    move v14, v8

    move v15, v10

    move/from16 v16, v11

    div-int v15, v15, v16

    if-le v14, v15, :cond_a

    .line 364
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "srcw ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "must be <= srcscan/bytesPerPixel ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v10

    move/from16 v18, v11

    div-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 369
    :cond_a
    move v14, v4

    move v15, v8

    add-int/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    if-gt v14, v15, :cond_b

    move v14, v5

    move v15, v9

    add-int/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    if-le v14, v15, :cond_c

    .line 370
    :cond_b
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Destination region (x="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", y="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", w="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", h="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "must fit within texture content bounds "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "(contentWidth="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", contentHeight="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 378
    :cond_c
    move v14, v6

    move v15, v11

    mul-int/2addr v14, v15

    move v15, v7

    move/from16 v16, v10

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v15, v9

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v10

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v15, v8

    move/from16 v16, v11

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v12, v14

    .line 381
    .local v12, "bytesNeeded":I
    move v14, v12

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v15}, Lcom/sun/prism/PixelFormat;->getDataType()Lcom/sun/prism/PixelFormat$DataType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/prism/PixelFormat$DataType;->getSizeInBytes()I

    move-result v15

    div-int/2addr v14, v15

    move v13, v14

    .line 382
    .local v13, "elemsNeeded":I
    move v14, v13

    move-object v15, v2

    invoke-virtual {v15}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    if-le v14, v15, :cond_d

    .line 383
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Upload requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " elements, but only "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    .line 385
    invoke-virtual/range {v17 .. v17}, Ljava/nio/Buffer;->remaining()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " elements remain in the buffer"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 387
    :cond_d
    return-void
.end method

.method public final contentsNotUseful()V
    .locals 2

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->contentsNotUseful()V

    .line 288
    return-void
.end method

.method public final contentsUseful()V
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->contentsUseful()V

    .line 283
    return-void
.end method

.method protected abstract createSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->dispose()V

    .line 298
    return-void
.end method

.method public final getContentHeight()I
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getContentWidth()I
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getContentX()I
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->contentX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getContentY()I
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->contentY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getLastImageSerial()I
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->lastImageSerial:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getLinearFiltering()Z
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseTexture;->linearFiltering:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getLockCount()I
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getLockCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->maxContentHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public getMaxContentWidth()I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->maxContentWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getPhysicalHeight()I
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->physicalHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getPhysicalWidth()I
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseTexture;->physicalWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getPixelFormat()Lcom/sun/prism/PixelFormat;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return-object v0
.end method

.method public getSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, p1

    .local v1, "altMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/BaseTexture;->assertLocked()V

    .line 196
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 197
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/BaseTexture;->lock()V

    .line 198
    move-object v3, v0

    move-object v0, v3

    .line 216
    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    :goto_0
    return-object v0

    .line 200
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    :cond_0
    sget-object v3, Lcom/sun/prism/impl/BaseTexture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 212
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 202
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    if-eq v3, v4, :cond_1

    .line 203
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 207
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    if-eq v3, v4, :cond_1

    .line 208
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 214
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/prism/impl/BaseTexture;->createSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v3

    move-object v2, v3

    .line 215
    .local v2, "altTex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->lock()V

    .line 216
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUseMipmap()Z
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseTexture;->useMipmap:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final getWrapMode()Lcom/sun/prism/Texture$WrapMode;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return-object v0
.end method

.method public final isLocked()Z
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->isLocked()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0
.end method

.method public final isSurfaceLost()Z
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final lock()V
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->lock()Ljava/lang/Object;

    move-result-object v1

    .line 253
    return-void
.end method

.method public final makePermanent()V
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->makePermanent()V

    .line 278
    return-void
.end method

.method public setContentHeight(I)V
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move v1, p1

    .local v1, "contentH":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/BaseTexture;->maxContentHeight:I

    if-le v2, v3, :cond_0

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "ContentWidth must be less than or equal to maxContentHeight"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    .line 181
    return-void
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move v1, p1

    .local v1, "contentW":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/BaseTexture;->maxContentWidth:I

    if-le v2, v3, :cond_0

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "ContentWidth must be less than or equal to maxContentWidth"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    .line 172
    return-void
.end method

.method public final setLastImageSerial(I)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move v1, p1

    .local v1, "serial":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/impl/BaseTexture;->lastImageSerial:I

    .line 248
    return-void
.end method

.method public setLinearFiltering(Z)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move v1, p1

    .local v1, "linear":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseTexture;->linearFiltering:Z

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseTexture;->format:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " physicalWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/BaseTexture;->physicalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " physicalHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/BaseTexture;->physicalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/BaseTexture;->contentX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/BaseTexture;->contentY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/BaseTexture;->contentWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/BaseTexture;->contentHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrapMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " linearFiltering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/prism/impl/BaseTexture;->linearFiltering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    return-object v0
.end method

.method public final unlock()V
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->unlock()V

    .line 273
    return-void
.end method

.method public update(Lcom/sun/prism/Image;)V
    .locals 6

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/prism/impl/BaseTexture;->update(Lcom/sun/prism/Image;II)V

    .line 303
    return-void
.end method

.method public update(Lcom/sun/prism/Image;II)V
    .locals 10

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/prism/Image;->getWidth()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getHeight()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/sun/prism/impl/BaseTexture;->update(Lcom/sun/prism/Image;IIII)V

    .line 308
    return-void
.end method

.method public update(Lcom/sun/prism/Image;IIII)V
    .locals 13

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move/from16 v3, p3

    .local v3, "dsty":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/sun/prism/impl/BaseTexture;->update(Lcom/sun/prism/Image;IIIIZ)V

    .line 313
    return-void
.end method

.method public update(Lcom/sun/prism/Image;IIIIZ)V
    .locals 20

    .prologue
    .line 319
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseTexture;, "Lcom/sun/prism/impl/BaseTexture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move/from16 v2, p2

    .local v2, "dstx":I
    move/from16 v3, p3

    .local v3, "dsty":I
    move/from16 v4, p4

    .local v4, "srcw":I
    move/from16 v5, p5

    .local v5, "srch":I
    move/from16 v6, p6

    .local v6, "skipFlush":Z
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v9

    move-object v7, v9

    .line 320
    .local v7, "pbuffer":Ljava/nio/Buffer;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/nio/Buffer;->position()I

    move-result v9

    move v8, v9

    .line 321
    .local v8, "pos":I
    move-object v9, v0

    move-object v10, v7

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v11

    move v12, v2

    move v13, v3

    move-object v14, v1

    .line 322
    invoke-virtual {v14}, Lcom/sun/prism/Image;->getMinX()I

    move-result v14

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/prism/Image;->getMinY()I

    move-result v15

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v1

    .line 323
    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v18

    move/from16 v19, v6

    .line 321
    invoke-virtual/range {v9 .. v19}, Lcom/sun/prism/impl/BaseTexture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 325
    move-object v9, v7

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    .line 326
    return-void
.end method
