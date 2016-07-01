.class public abstract Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
.super Ljava/lang/Object;
.source "BaseIntToIntConverter.java"

# interfaces
.implements Lcom/sun/javafx/image/IntToIntPixelConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    }
.end annotation


# instance fields
.field protected final getter:Lcom/sun/javafx/image/IntPixelGetter;

.field protected final setter:Lcom/sun/javafx/image/IntPixelSetter;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    .line 42
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    .line 43
    return-void
.end method

.method static create(Lcom/sun/javafx/image/IntPixelAccessor;)Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "fmt":Lcom/sun/javafx/image/IntPixelAccessor;
    new-instance v1, Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;-><init>(Lcom/sun/javafx/image/IntPixelAccessor;)V

    move-object v0, v1

    .end local v0    # "fmt":Lcom/sun/javafx/image/IntPixelAccessor;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .locals 18

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/nio/IntBuffer;

    move v11, v2

    move v12, v3

    move-object v13, v4

    check-cast v13, Ljava/nio/IntBuffer;

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->convert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V

    return-void
.end method

.method public final convert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 18

    .prologue
    .line 85
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
    move-object/from16 v4, p4

    .local v4, "dstbuf":Ljava/nio/IntBuffer;
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanints":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v9, v7

    if-lez v9, :cond_0

    move v9, v8

    if-gtz v9, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    move v9, v3

    move v10, v7

    if-ne v9, v10, :cond_2

    move v9, v6

    move v10, v7

    if-ne v9, v10, :cond_2

    .line 89
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    move v7, v9

    .line 90
    const/4 v9, 0x1

    move v8, v9

    .line 92
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 93
    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 94
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v10

    add-int/2addr v9, v10

    move v5, v9

    .line 95
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    move v11, v2

    move v12, v3

    move-object v13, v4

    .line 96
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v13

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 95
    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert([III[IIIII)V

    .line 103
    :goto_1
    goto :goto_0

    .line 99
    :cond_3
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert(Ljava/nio/IntBuffer;II[IIIII)V
    .locals 19

    .prologue
    .line 110
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
    move-object/from16 v4, p4

    .local v4, "dstarr":[I
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanints":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v10, v7

    if-lez v10, :cond_0

    move v10, v8

    if-gtz v10, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    move v10, v3

    move v11, v7

    if-ne v10, v11, :cond_2

    move v10, v6

    move v11, v7

    if-ne v10, v11, :cond_2

    .line 114
    move v10, v7

    move v11, v8

    mul-int/2addr v10, v11

    move v7, v10

    .line 115
    const/4 v10, 0x1

    move v8, v10

    .line 117
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 118
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    move-object v9, v10

    .line 119
    .local v9, "srcarr":[I
    move v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v11

    add-int/2addr v10, v11

    move v2, v10

    .line 120
    move-object v10, v0

    move-object v11, v9

    move v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert([III[IIIII)V

    .line 123
    .line 129
    .end local v9    # "srcarr":[I
    :goto_1
    goto :goto_0

    .line 124
    :cond_3
    move-object v10, v4

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v10

    move-object v9, v10

    .line 125
    .local v9, "dstbuf":Ljava/nio/IntBuffer;
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-object v14, v9

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert([IIILjava/nio/IntBuffer;IIII)V
    .locals 19

    .prologue
    .line 136
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[I
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
    move-object/from16 v4, p4

    .local v4, "dstbuf":Ljava/nio/IntBuffer;
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanints":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v10, v7

    if-lez v10, :cond_0

    move v10, v8

    if-gtz v10, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    move v10, v3

    move v11, v7

    if-ne v10, v11, :cond_2

    move v10, v6

    move v11, v7

    if-ne v10, v11, :cond_2

    .line 140
    move v10, v7

    move v11, v8

    mul-int/2addr v10, v11

    move v7, v10

    .line 141
    const/4 v10, 0x1

    move v8, v10

    .line 143
    :cond_2
    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 144
    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    move-object v9, v10

    .line 145
    .local v9, "dstarr":[I
    move v10, v5

    move-object v11, v4

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 146
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-object v14, v9

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert([III[IIIII)V

    .line 149
    .line 155
    .end local v9    # "dstarr":[I
    :goto_1
    goto :goto_0

    .line 150
    :cond_3
    move-object v10, v1

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v10

    move-object v9, v10

    .line 151
    .local v9, "srcbuf":Ljava/nio/IntBuffer;
    move-object v10, v0

    move-object v11, v9

    move v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert([III[IIIII)V
    .locals 18

    .prologue
    .line 68
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[I
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
    move-object/from16 v4, p4

    .local v4, "dstarr":[I
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanints":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v9, v7

    if-lez v9, :cond_0

    move v9, v8

    if-gtz v9, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    move v9, v3

    move v10, v7

    if-ne v9, v10, :cond_2

    move v9, v6

    move v10, v7

    if-ne v9, v10, :cond_2

    .line 72
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    move v7, v9

    .line 73
    const/4 v9, 0x1

    move v8, v9

    .line 75
    :cond_2
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->doConvert([III[IIIII)V

    .line 78
    goto :goto_0
.end method

.method abstract doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V
.end method

.method abstract doConvert([III[IIIII)V
.end method

.method public final getGetter()Lcom/sun/javafx/image/IntPixelGetter;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    return-object v0
.end method

.method public bridge synthetic getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->getGetter()Lcom/sun/javafx/image/IntPixelGetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    return-object v0
.end method

.method public final getSetter()Lcom/sun/javafx/image/IntPixelSetter;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    return-object v0
.end method

.method public bridge synthetic getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->getSetter()Lcom/sun/javafx/image/IntPixelSetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
    return-object v0
.end method
