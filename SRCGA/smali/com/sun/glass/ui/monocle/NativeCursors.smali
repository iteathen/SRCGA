.class Lcom/sun/glass/ui/monocle/NativeCursors;
.super Ljava/lang/Object;
.source "NativeCursors.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativeCursors;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static colorKeyCursor([BLjava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "source":[B
    move-object v1, p1

    .local v1, "dest":Ljava/nio/Buffer;
    move v2, p2

    .local v2, "targetDepth":I
    move v3, p3

    .local v3, "transparentPixel":I
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 58
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 50
    :sswitch_0
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/IntBuffer;

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/sun/glass/ui/monocle/NativeCursors;->colorKeyCursor32([BLjava/nio/IntBuffer;I)V

    .line 52
    .line 60
    :goto_0
    return-void

    .line 54
    :sswitch_1
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ShortBuffer;

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/sun/glass/ui/monocle/NativeCursors;->colorKeyCursor16([BLjava/nio/ShortBuffer;I)V

    .line 56
    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static colorKeyCursor16([BLjava/nio/ShortBuffer;I)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "source":[B
    move-object v1, p1

    .local v1, "destBuffer":Ljava/nio/ShortBuffer;
    move v2, p2

    .local v2, "transparentPixel":I
    move-object v6, v0

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    move-object v3, v6

    .line 117
    .local v3, "sourceBuffer":Ljava/nio/IntBuffer;
    :goto_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->position()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->limit()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 118
    move-object v6, v3

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    move v4, v6

    .line 119
    .local v4, "i":I
    move v6, v4

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_0

    .line 120
    move-object v6, v1

    move v7, v2

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v6

    .line 127
    :goto_1
    goto :goto_0

    .line 122
    :cond_0
    move v6, v4

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    const v7, 0xf800

    and-int/2addr v6, v7

    move v7, v4

    const/4 v8, 0x5

    shr-int/lit8 v7, v7, 0x5

    const/16 v8, 0x7e0

    and-int/lit16 v7, v7, 0x7e0

    or-int/2addr v6, v7

    move v7, v4

    const/4 v8, 0x3

    shr-int/lit8 v7, v7, 0x3

    const/16 v8, 0x1f

    and-int/lit8 v7, v7, 0x1f

    or-int/2addr v6, v7

    move v5, v6

    .line 125
    .local v5, "pixel":I
    move-object v6, v1

    move v7, v5

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v6

    goto :goto_1

    .line 128
    .end local v4    # "i":I
    .end local v5    # "pixel":I
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v6

    .line 129
    return-void
.end method

.method private static colorKeyCursor32([BLjava/nio/IntBuffer;I)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "source":[B
    move-object v1, p1

    .local v1, "destBuffer":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "transparentPixel":I
    move-object v5, v0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    move-object v3, v5

    .line 102
    .local v3, "sourceBuffer":Ljava/nio/IntBuffer;
    :goto_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->position()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->limit()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 103
    move-object v5, v3

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    move v4, v5

    .line 104
    .local v4, "i":I
    move v5, v4

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    .line 105
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .line 109
    :goto_1
    goto :goto_0

    .line 107
    :cond_0
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v5

    goto :goto_1

    .line 110
    .end local v4    # "i":I
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    .line 111
    return-void
.end method

.method static offsetCursor(Ljava/nio/Buffer;Ljava/nio/Buffer;IIIIII)V
    .locals 16

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "sourceBuffer":Ljava/nio/Buffer;
    move-object/from16 v1, p1

    .local v1, "destBuffer":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "offsetX":I
    move/from16 v3, p3

    .local v3, "offsetY":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "depth":I
    move/from16 v7, p7

    .local v7, "transparentPixel":I
    move v8, v6

    sparse-switch v8, :sswitch_data_0

    .line 95
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v8

    .line 81
    :sswitch_0
    move-object v8, v0

    check-cast v8, Ljava/nio/IntBuffer;

    move-object v9, v1

    check-cast v9, Ljava/nio/IntBuffer;

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v7

    invoke-static/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/NativeCursors;->offsetCursor32(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;IIIII)V

    .line 86
    .line 97
    :goto_0
    return-void

    .line 88
    :sswitch_1
    move-object v8, v0

    check-cast v8, Ljava/nio/ShortBuffer;

    move-object v9, v1

    check-cast v9, Ljava/nio/ShortBuffer;

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v7

    invoke-static/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/NativeCursors;->offsetCursor16(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;IIIII)V

    .line 93
    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static offsetCursor16(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;IIIII)V
    .locals 13

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "sourceBuffer":Ljava/nio/ShortBuffer;
    move-object v1, p1

    .local v1, "destBuffer":Ljava/nio/ShortBuffer;
    move v2, p2

    .local v2, "offsetX":I
    move/from16 v3, p3

    .local v3, "offsetY":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "transparentPixel":I
    move v10, v2

    if-nez v10, :cond_1

    move v10, v3

    if-nez v10, :cond_1

    .line 168
    move-object v10, v1

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 187
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 188
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 189
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 190
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 191
    return-void

    .line 171
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v3

    if-ge v10, v11, :cond_4

    .line 172
    const/4 v10, 0x0

    move v8, v10

    .local v8, "j":I
    :goto_1
    move v10, v8

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 173
    move-object v10, v1

    move v11, v6

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 171
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 181
    :cond_3
    move v10, v7

    move v11, v3

    sub-int/2addr v10, v11

    move v11, v4

    mul-int/2addr v10, v11

    move v9, v10

    .line 182
    .local v9, "srcPos":I
    move-object v10, v0

    move v11, v9

    move v12, v4

    add-int/2addr v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 183
    move-object v10, v0

    move v11, v9

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 184
    move-object v10, v1

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 176
    add-int/lit8 v7, v7, 0x1

    .end local v8    # "j":I
    .end local v9    # "srcPos":I
    :cond_4
    move v10, v7

    move v11, v5

    if-ge v10, v11, :cond_0

    .line 178
    const/4 v10, 0x0

    move v8, v10

    .restart local v8    # "j":I
    :goto_2
    move v10, v8

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 179
    move-object v10, v1

    move v11, v6

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private static offsetCursor32(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;IIIII)V
    .locals 13

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "sourceBuffer":Ljava/nio/IntBuffer;
    move-object v1, p1

    .local v1, "destBuffer":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offsetX":I
    move/from16 v3, p3

    .local v3, "offsetY":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "transparentPixel":I
    move v10, v2

    if-nez v10, :cond_1

    move v10, v3

    if-nez v10, :cond_1

    .line 137
    move-object v10, v1

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 156
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 157
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->capacity()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 158
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 159
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->capacity()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 160
    return-void

    .line 140
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v3

    if-ge v10, v11, :cond_4

    .line 141
    const/4 v10, 0x0

    move v8, v10

    .local v8, "j":I
    :goto_1
    move v10, v8

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 142
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 140
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    :cond_3
    move v10, v7

    move v11, v3

    sub-int/2addr v10, v11

    move v11, v4

    mul-int/2addr v10, v11

    move v9, v10

    .line 151
    .local v9, "srcPos":I
    move-object v10, v0

    move v11, v9

    move v12, v4

    add-int/2addr v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 152
    move-object v10, v0

    move v11, v9

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 153
    move-object v10, v1

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 145
    add-int/lit8 v7, v7, 0x1

    .end local v8    # "j":I
    .end local v9    # "srcPos":I
    :cond_4
    move v10, v7

    move v11, v5

    if-ge v10, v11, :cond_0

    .line 147
    const/4 v10, 0x0

    move v8, v10

    .restart local v8    # "j":I
    :goto_2
    move v10, v8

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 148
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method
