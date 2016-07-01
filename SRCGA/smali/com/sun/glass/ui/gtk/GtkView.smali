.class final Lcom/sun/glass/ui/gtk/GtkView;
.super Lcom/sun/glass/ui/View;
.source "GtkView.java"


# instance fields
.field private attributes:Ljava/nio/ByteBuffer;

.field private imEnabled:Z

.field private isInPreeditMode:Z

.field private lastCaret:I

.field private final preedit:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;-><init>()V

    .line 37
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/gtk/GtkView;->imEnabled:Z

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/gtk/GtkView;->isInPreeditMode:Z

    .line 39
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    return-void
.end method

.method private native _uploadPixelsByteArray(J[BIII)V
.end method

.method private native _uploadPixelsDirect(JLjava/nio/Buffer;II)V
.end method

.method private native _uploadPixelsIntArray(J[IIII)V
.end method

.method private native enableInputMethodEventsImpl(JZ)V
.end method

.method private notifyPreeditMode(Z)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/gtk/GtkView;->isInPreeditMode:Z

    .line 125
    return-void
.end method


# virtual methods
.method protected _begin(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 81
    return-void
.end method

.method protected native _close(J)Z
.end method

.method protected native _create(Ljava/util/Map;)J
.end method

.method protected _enableInputMethodEvents(JZ)V
    .locals 9

    .prologue
    .line 47
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "enable":Z
    move-object v5, v1

    move-wide v6, v2

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkView;->enableInputMethodEventsImpl(JZ)V

    .line 48
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/glass/ui/gtk/GtkView;->imEnabled:Z

    if-eqz v5, :cond_0

    .line 49
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    :cond_0
    move-object v5, v1

    move v6, v4

    iput-boolean v6, v5, Lcom/sun/glass/ui/gtk/GtkView;->imEnabled:Z

    .line 52
    return-void
.end method

.method protected _end(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 84
    return-void
.end method

.method protected native _enterFullscreen(JZZZ)Z
.end method

.method protected native _exitFullscreen(JZ)V
.end method

.method protected _finishInputMethodComposition(J)V
    .locals 13

    .prologue
    .line 116
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/glass/ui/gtk/GtkView;->imEnabled:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/glass/ui/gtk/GtkView;->isInPreeditMode:Z

    if-eqz v4, :cond_0

    .line 118
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 119
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/sun/glass/ui/gtk/GtkView;->notifyInputMethod(Ljava/lang/String;[I[I[BIII)V

    .line 121
    :cond_0
    return-void
.end method

.method protected _getNativeFrameBuffer(J)I
    .locals 5

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkView;
    return v1
.end method

.method protected native _getNativeView(J)J
.end method

.method protected native _getX(J)I
.end method

.method protected native _getY(J)I
.end method

.method protected native _scheduleRepaint(J)V
.end method

.method protected native _setParent(JJ)V
.end method

.method protected _uploadPixels(JLcom/sun/glass/ui/Pixels;)V
    .locals 15

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move-wide/from16 v2, p1

    .local v2, "ptr":J
    move-object/from16 v4, p3

    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v7

    move-object v5, v7

    .line 89
    .local v5, "data":Ljava/nio/Buffer;
    move-object v7, v5

    invoke-virtual {v7}, Ljava/nio/Buffer;->isDirect()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 90
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v12

    invoke-direct/range {v7 .. v12}, Lcom/sun/glass/ui/gtk/GtkView;->_uploadPixelsDirect(JLjava/nio/Buffer;II)V

    .line 103
    :goto_0
    return-void

    .line 91
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Ljava/nio/Buffer;->hasArray()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 92
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 93
    move-object v7, v5

    check-cast v7, Ljava/nio/ByteBuffer;

    move-object v6, v7

    .line 94
    .local v6, "bytes":Ljava/nio/ByteBuffer;
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v12

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/gtk/GtkView;->_uploadPixelsByteArray(J[BIII)V

    .line 95
    goto :goto_0

    .line 96
    .end local v6    # "bytes":Ljava/nio/ByteBuffer;
    :cond_1
    move-object v7, v5

    check-cast v7, Ljava/nio/IntBuffer;

    move-object v6, v7

    .line 97
    .local v6, "ints":Ljava/nio/IntBuffer;
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v6

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v12

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/gtk/GtkView;->_uploadPixelsIntArray(J[IIII)V

    .line 98
    goto :goto_0

    .line 101
    .end local v6    # "ints":Ljava/nio/IntBuffer;
    :cond_2
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v12

    invoke-direct/range {v7 .. v12}, Lcom/sun/glass/ui/gtk/GtkView;->_uploadPixelsDirect(JLjava/nio/Buffer;II)V

    goto :goto_0
.end method

.method protected notifyInputMethodCaret(III)V
    .locals 13

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "direction":I
    move/from16 v3, p3

    .local v3, "style":I
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 216
    :goto_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/sun/glass/ui/gtk/GtkView;->notifyInputMethod(Ljava/lang/String;[I[I[BIII)V

    .line 217
    return-void

    .line 203
    :sswitch_0
    move-object v4, v0

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    iget v5, v5, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    move v6, v1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    .line 204
    goto :goto_0

    .line 206
    :sswitch_1
    move-object v4, v0

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    iget v5, v5, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    move v6, v1

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    .line 207
    goto :goto_0

    .line 209
    :sswitch_2
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    .line 210
    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected notifyInputMethodDraw(Ljava/lang/String;III[B)V
    .locals 25

    .prologue
    .line 129
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/gtk/GtkView;
    move-object/from16 v3, p1

    .local v3, "text":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "first":I
    move/from16 v5, p3

    .local v5, "length":I
    move/from16 v6, p4

    .local v6, "caret":I
    move-object/from16 v7, p5

    .local v7, "attr":[B
    const/16 v16, 0x0

    move-object/from16 v8, v16

    .line 130
    .local v8, "boundary":[I
    const/16 v16, 0x0

    move-object/from16 v9, v16

    .line 132
    .local v9, "values":[B
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 133
    move-object/from16 v16, v2

    const/16 v17, 0x20

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    .line 136
    :cond_0
    move/from16 v16, v5

    if-lez v16, :cond_1

    .line 137
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v4

    move/from16 v19, v5

    add-int v18, v18, v19

    const-string v19, ""

    invoke-virtual/range {v16 .. v19}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 140
    :cond_1
    move-object/from16 v16, v3

    if-eqz v16, :cond_6

    .line 141
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v3

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 148
    :cond_2
    :goto_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 149
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v10, v16

    .line 150
    .local v10, "tmp":Ljava/nio/ByteBuffer;
    move-object/from16 v16, v10

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 151
    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    .line 154
    .end local v10    # "tmp":Ljava/nio/ByteBuffer;
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v16

    .line 156
    move-object/from16 v16, v7

    if-eqz v16, :cond_4

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v16

    move/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 157
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v16

    .line 158
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 161
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v16

    if-lez v16, :cond_9

    .line 162
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, v16

    .line 163
    .local v10, "boundaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v16

    .line 164
    .local v11, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v16

    .line 165
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v16

    move/from16 v12, v16

    .line 167
    .local v12, "lastAttribute":B
    move-object/from16 v16, v10

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 168
    move-object/from16 v16, v11

    move/from16 v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 170
    const/16 v16, 0x1

    move/from16 v13, v16

    .line 171
    .local v13, "i":I
    :goto_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 172
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->get()B

    move-result v16

    move/from16 v14, v16

    .line 173
    .local v14, "a":B
    move/from16 v16, v12

    move/from16 v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 174
    move-object/from16 v16, v10

    move/from16 v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 175
    move-object/from16 v16, v11

    move/from16 v17, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 177
    :cond_5
    move/from16 v16, v14

    move/from16 v12, v16

    .line 178
    add-int/lit8 v13, v13, 0x1

    .line 179
    goto :goto_1

    .line 143
    .end local v10    # "boundaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v12    # "lastAttribute":B
    .end local v13    # "i":I
    .end local v14    # "a":B
    :cond_6
    move-object/from16 v16, v7

    if-nez v16, :cond_2

    .line 144
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 181
    .restart local v10    # "boundaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v12    # "lastAttribute":B
    .restart local v13    # "i":I
    :cond_7
    move-object/from16 v16, v10

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->attributes:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 183
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 184
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 185
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v14, v16

    :goto_2
    move-object/from16 v16, v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v16, v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v15, v16

    .line 186
    .local v15, "e":Ljava/lang/Integer;
    move-object/from16 v16, v8

    move/from16 v17, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v16, v17

    .line 187
    goto :goto_2

    .line 189
    .end local v15    # "e":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 190
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 191
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v14, v16

    :goto_3
    move-object/from16 v16, v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v16, v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Byte;

    move-object/from16 v15, v16

    .line 192
    .local v15, "e":Ljava/lang/Byte;
    move-object/from16 v16, v9

    move/from16 v17, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Byte;->byteValue()B

    move-result v18

    aput-byte v18, v16, v17

    .line 193
    goto :goto_3

    .line 196
    .end local v10    # "boundaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v12    # "lastAttribute":B
    .end local v13    # "i":I
    .end local v15    # "e":Ljava/lang/Byte;
    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/gtk/GtkView;->preedit:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v8

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    const/16 v21, 0x0

    move/from16 v22, v6

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/sun/glass/ui/gtk/GtkView;->notifyInputMethod(Ljava/lang/String;[I[I[BIII)V

    .line 197
    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/glass/ui/gtk/GtkView;->lastCaret:I

    .line 198
    return-void
.end method
