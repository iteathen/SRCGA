.class Lcom/sun/javafx/font/freetype/FTFontFile;
.super Lcom/sun/javafx/font/PrismFontFile;
.source "FTFontFile.java"


# instance fields
.field private disposer:Lcom/sun/javafx/font/freetype/FTDisposer;

.field private face:J

.field private library:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "filename":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "fIndex":I
    move/from16 v4, p4

    .local v4, "register":Z
    move/from16 v5, p5

    .local v5, "embedded":Z
    move/from16 v6, p6

    .local v6, "copy":Z
    move/from16 v7, p7

    .local v7, "tracked":Z
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/font/PrismFontFile;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    .line 58
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/font/freetype/FTFontFile;->init()V

    .line 59
    return-void
.end method

.method private declared-synchronized init()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    move-object/from16 v14, p0

    monitor-enter v14

    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [J

    move-object v2, v7

    .line 63
    .local v2, "ptr":[J
    move-object v7, v2

    invoke-static {v7}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Init_FreeType([J)I

    move-result v7

    move v3, v7

    .line 64
    .local v3, "error":I
    move v7, v3

    if-eqz v7, :cond_0

    .line 65
    new-instance v7, Ljava/lang/Exception;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FT_Init_FreeType Failed error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v2    # "ptr":[J
    .end local v3    # "error":I
    :catchall_0
    move-exception v1

    monitor-exit v14

    .end local v1    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    throw v1

    .line 67
    .restart local v1    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    .restart local v2    # "ptr":[J
    .restart local v3    # "error":I
    :cond_0
    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    :try_start_1
    aget-wide v8, v8, v9

    iput-wide v8, v7, Lcom/sun/javafx/font/freetype/FTFontFile;->library:J

    .line 68
    sget-boolean v7, Lcom/sun/javafx/font/freetype/FTFactory;->LCD_SUPPORT:Z

    if-eqz v7, :cond_1

    .line 69
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/font/freetype/FTFontFile;->library:J

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Library_SetLcdFilter(JI)I

    move-result v7

    .line 72
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/freetype/FTFontFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 73
    .local v4, "file":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/freetype/FTFontFile;->getFontIndex()I

    move-result v7

    move v5, v7

    .line 75
    .local v5, "fontIndex":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u0000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v6, v7

    .line 76
    .local v6, "buffer":[B
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/font/freetype/FTFontFile;->library:J

    move-object v9, v6

    move v10, v5

    int-to-long v10, v10

    move-object v12, v2

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_New_Face(J[BJ[J)I

    move-result v7

    move v3, v7

    .line 77
    move v7, v3

    if-eqz v7, :cond_2

    .line 78
    new-instance v7, Ljava/lang/Exception;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FT_New_Face Failed error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Font File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Font Index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    :cond_2
    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    iput-wide v8, v7, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    .line 84
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/freetype/FTFontFile;->isRegistered()Z

    move-result v7

    if-nez v7, :cond_3

    .line 85
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/font/freetype/FTDisposer;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/font/freetype/FTFontFile;->library:J

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/font/freetype/FTDisposer;-><init>(JJ)V

    iput-object v8, v7, Lcom/sun/javafx/font/freetype/FTFontFile;->disposer:Lcom/sun/javafx/font/freetype/FTDisposer;

    .line 86
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/font/freetype/FTFontFile;->disposer:Lcom/sun/javafx/font/freetype/FTDisposer;

    invoke-static {v7, v8}, Lcom/sun/javafx/font/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 88
    :cond_3
    monitor-exit v14

    return-void
.end method


# virtual methods
.method protected declared-synchronized createGlyphBoundingBox(I)[I
    .locals 13

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    move v1, p1

    .local v1, "gc":I
    move-object v12, p0

    monitor-enter v12

    const/4 v6, 0x1

    move v2, v6

    .line 99
    .local v2, "flags":I
    move-object v6, v0

    :try_start_0
    iget-wide v6, v6, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move v8, v1

    move v9, v2

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Load_Glyph(JII)I

    move-result v6

    .line 100
    const/4 v6, 0x4

    new-array v6, v6, [I

    move-object v3, v6

    .line 101
    .local v3, "bbox":[I
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    invoke-static {v6, v7}, Lcom/sun/javafx/font/freetype/OSFreetype;->getGlyphSlot(J)Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;

    move-result-object v6

    move-object v4, v6

    .line 102
    .local v4, "glyphRec":Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->metrics:Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;

    if-eqz v6, :cond_0

    .line 103
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->metrics:Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;

    move-object v5, v6

    .line 104
    .local v5, "gm":Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v5

    iget-wide v8, v8, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;->horiBearingX:J

    long-to-int v8, v8

    aput v8, v6, v7

    .line 105
    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v5

    iget-wide v8, v8, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;->horiBearingY:J

    move-object v10, v5

    iget-wide v10, v10, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;->height:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v6, v7

    .line 106
    move-object v6, v3

    const/4 v7, 0x2

    move-object v8, v5

    iget-wide v8, v8, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;->horiBearingX:J

    move-object v10, v5

    iget-wide v10, v10, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;->width:J

    add-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v6, v7

    .line 107
    move-object v6, v3

    const/4 v7, 0x3

    move-object v8, v5

    iget-wide v8, v8, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;->horiBearingY:J

    long-to-int v8, v8

    aput v8, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v5    # "gm":Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;
    :cond_0
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    monitor-exit v12

    return-object v0

    .line 98
    .end local v3    # "bbox":[I
    .end local v4    # "glyphRec":Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
    .restart local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    throw v0
.end method

.method declared-synchronized createGlyphOutline(IF)Lcom/sun/javafx/geom/Path2D;
    .locals 15

    .prologue
    .line 113
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    move/from16 v2, p1

    .local v2, "gc":I
    move/from16 v3, p2

    .local v3, "size":F
    move-object v14, p0

    monitor-enter v14

    move v6, v3

    const/high16 v7, 0x42800000    # 64.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    .line 114
    .local v4, "size26dot6":I
    move-object v6, v1

    :try_start_0
    iget-wide v6, v6, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    const-wide/16 v8, 0x0

    move v10, v4

    int-to-long v10, v10

    const/16 v12, 0x48

    const/16 v13, 0x48

    invoke-static/range {v6 .. v13}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Set_Char_Size(JJJII)I

    move-result v6

    .line 115
    const/16 v6, 0x80a

    move v5, v6

    .line 116
    .local v5, "flags":I
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move v8, v2

    move v9, v5

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Load_Glyph(JII)I

    move-result v6

    .line 117
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    invoke-static {v6, v7}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Outline_Decompose(J)Lcom/sun/javafx/geom/Path2D;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    monitor-exit v14

    return-object v1

    .line 113
    .end local v5    # "flags":I
    .restart local v1    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    :catchall_0
    move-exception v1

    monitor-exit v14

    .end local v1    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    throw v1
.end method

.method protected createStrike(FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)Lcom/sun/javafx/font/PrismFontStrike;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "I",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            ")",
            "Lcom/sun/javafx/font/PrismFontStrike",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    move v1, p1

    .local v1, "size":F
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v3, p3

    .local v3, "aaMode":I
    move-object/from16 v4, p4

    .local v4, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    new-instance v5, Lcom/sun/javafx/font/freetype/FTFontStrike;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/font/freetype/FTFontStrike;-><init>(Lcom/sun/javafx/font/freetype/FTFontFile;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    return-object v0
.end method

.method declared-synchronized initGlyph(Lcom/sun/javafx/font/freetype/FTGlyph;Lcom/sun/javafx/font/freetype/FTFontStrike;)V
    .locals 34

    .prologue
    .line 121
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    move-object/from16 v3, p1

    .local v3, "glyph":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object/from16 v4, p2

    .local v4, "strike":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move-object/from16 v32, p0

    monitor-enter v32

    move-object/from16 v24, v4

    :try_start_0
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getSize()F

    move-result v24

    move/from16 v5, v24

    .line 122
    .local v5, "size":F
    move/from16 v24, v5

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_0

    .line 123
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->buffer:[B

    .line 124
    move-object/from16 v24, v3

    new-instance v25, Lcom/sun/javafx/font/freetype/FT_Bitmap;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/font/freetype/FT_Bitmap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 208
    :goto_0
    monitor-exit v32

    return-void

    .line 127
    :cond_0
    move/from16 v24, v5

    const/high16 v25, 0x42800000    # 64.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v6, v24

    .line 128
    .local v6, "size26dot6":I
    move-object/from16 v24, v2

    :try_start_1
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    move/from16 v28, v6

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x48

    const/16 v31, 0x48

    invoke-static/range {v24 .. v31}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Set_Char_Size(JJJII)I

    move-result v24

    .line 130
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getAAMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    sget-boolean v24, Lcom/sun/javafx/font/freetype/FTFactory;->LCD_SUPPORT:Z

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    :goto_1
    move/from16 v7, v24

    .line 133
    .local v7, "lcd":Z
    const/16 v24, 0xe

    move/from16 v8, v24

    .line 134
    .local v8, "flags":I
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/font/freetype/FTFontStrike;->matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;

    move-object/from16 v24, v0

    move-object/from16 v9, v24

    .line 135
    .local v9, "matrix":Lcom/sun/javafx/font/freetype/FT_Matrix;
    move-object/from16 v24, v9

    if-eqz v24, :cond_3

    .line 136
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move-wide/from16 v24, v0

    move-object/from16 v26, v9

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    invoke-static/range {v24 .. v30}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Set_Transform(JLcom/sun/javafx/font/freetype/FT_Matrix;JJ)V

    .line 140
    :goto_2
    move/from16 v24, v7

    if-eqz v24, :cond_4

    .line 141
    move/from16 v24, v8

    const/high16 v25, 0x30000

    or-int v24, v24, v25

    move/from16 v8, v24

    .line 146
    :goto_3
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/font/freetype/FTGlyph;->getGlyphCode()I

    move-result v24

    move/from16 v10, v24

    .line 147
    .local v10, "glyphCode":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move-wide/from16 v24, v0

    move/from16 v26, v10

    move/from16 v27, v8

    invoke-static/range {v24 .. v27}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Load_Glyph(JII)I

    move-result v24

    move/from16 v11, v24

    .line 148
    .local v11, "error":I
    move/from16 v24, v11

    if-eqz v24, :cond_5

    .line 149
    sget-boolean v24, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v24, :cond_1

    .line 150
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FT_Load_Glyph failed "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " glyph code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v10

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " load falgs "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :cond_1
    goto/16 :goto_0

    .line 130
    .end local v7    # "lcd":Z
    .end local v8    # "flags":I
    .end local v9    # "matrix":Lcom/sun/javafx/font/freetype/FT_Matrix;
    .end local v10    # "glyphCode":I
    .end local v11    # "error":I
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 138
    .restart local v7    # "lcd":Z
    .restart local v8    # "flags":I
    .restart local v9    # "matrix":Lcom/sun/javafx/font/freetype/FT_Matrix;
    :cond_3
    move/from16 v24, v8

    const/16 v25, 0x800

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    move/from16 v8, v24

    goto :goto_2

    .line 143
    :cond_4
    move/from16 v24, v8

    const/16 v25, 0x0

    or-int/lit8 v24, v24, 0x0

    move/from16 v8, v24

    goto :goto_3

    .line 157
    .restart local v10    # "glyphCode":I
    .restart local v11    # "error":I
    :cond_5
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/sun/javafx/font/freetype/OSFreetype;->getGlyphSlot(J)Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;

    move-result-object v24

    move-object/from16 v12, v24

    .line 158
    .local v12, "glyphRec":Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
    move-object/from16 v24, v12

    if-nez v24, :cond_6

    goto/16 :goto_0

    .line 159
    :cond_6
    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v13, v24

    .line 160
    .local v13, "bitmap":Lcom/sun/javafx/font/freetype/FT_Bitmap;
    move-object/from16 v24, v13

    if-nez v24, :cond_7

    goto/16 :goto_0

    .line 161
    :cond_7
    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget-byte v0, v0, Lcom/sun/javafx/font/freetype/FT_Bitmap;->pixel_mode:B

    move/from16 v24, v0

    move/from16 v14, v24

    .line 162
    .local v14, "pixelMode":I
    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/font/freetype/FT_Bitmap;->width:I

    move/from16 v24, v0

    move/from16 v15, v24

    .line 163
    .local v15, "width":I
    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/font/freetype/FT_Bitmap;->rows:I

    move/from16 v24, v0

    move/from16 v16, v24

    .line 164
    .local v16, "height":I
    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/font/freetype/FT_Bitmap;->pitch:I

    move/from16 v24, v0

    move/from16 v17, v24

    .line 165
    .local v17, "pitch":I
    move/from16 v24, v14

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    move/from16 v24, v14

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 172
    sget-boolean v24, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v24, :cond_8

    .line 173
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unexpected pixel mode: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " glyph code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v10

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " load falgs "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    :cond_8
    goto/16 :goto_0

    .line 180
    :cond_9
    move/from16 v24, v15

    if-eqz v24, :cond_d

    move/from16 v24, v16

    if-eqz v24, :cond_d

    .line 181
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FTFontFile;->face:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/sun/javafx/font/freetype/OSFreetype;->getBitmapData(J)[B

    move-result-object v24

    move-object/from16 v18, v24

    .line 182
    .local v18, "buffer":[B
    move-object/from16 v24, v18

    if-eqz v24, :cond_c

    move/from16 v24, v17

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 184
    move/from16 v24, v15

    move/from16 v25, v16

    mul-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v19, v24

    .line 185
    .local v19, "newBuffer":[B
    const/16 v24, 0x0

    move/from16 v20, v24

    .local v20, "src":I
    const/16 v24, 0x0

    move/from16 v21, v24

    .line 186
    .local v21, "dst":I
    const/16 v24, 0x0

    move/from16 v22, v24

    .local v22, "y":I
    :goto_4
    move/from16 v24, v22

    move/from16 v25, v16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 187
    const/16 v24, 0x0

    move/from16 v23, v24

    .local v23, "x":I
    :goto_5
    move/from16 v24, v23

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 188
    move-object/from16 v24, v19

    move/from16 v25, v21

    move/from16 v26, v23

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move/from16 v27, v20

    move/from16 v28, v23

    add-int v27, v27, v28

    aget-byte v26, v26, v27

    aput-byte v26, v24, v25

    .line 187
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 190
    :cond_a
    move/from16 v24, v21

    move/from16 v25, v15

    add-int v24, v24, v25

    move/from16 v21, v24

    .line 191
    move/from16 v24, v20

    move/from16 v25, v17

    add-int v24, v24, v25

    move/from16 v20, v24

    .line 186
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 193
    .end local v23    # "x":I
    :cond_b
    move-object/from16 v24, v19

    move-object/from16 v18, v24

    .line 200
    .end local v19    # "newBuffer":[B
    .end local v20    # "src":I
    .end local v21    # "dst":I
    .end local v22    # "y":I
    :cond_c
    :goto_6
    move-object/from16 v24, v3

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->buffer:[B

    .line 201
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    .line 202
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->bitmap_left:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap_left:I

    .line 203
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->bitmap_top:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap_top:I

    .line 204
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->advance_x:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42800000    # 64.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->advanceX:F

    .line 205
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->advance_y:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42800000    # 64.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->advanceY:F

    .line 206
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->linearHoriAdvance:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x47800000    # 65536.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->userAdvance:F

    .line 207
    move-object/from16 v24, v3

    move/from16 v25, v7

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->lcd:Z

    .line 208
    goto/16 :goto_0

    .line 197
    .end local v18    # "buffer":[B
    :cond_d
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v24

    .restart local v18    # "buffer":[B
    goto/16 :goto_6

    .line 121
    .end local v5    # "size":F
    .end local v6    # "size26dot6":I
    .end local v7    # "lcd":Z
    .end local v8    # "flags":I
    .end local v9    # "matrix":Lcom/sun/javafx/font/freetype/FT_Matrix;
    .end local v10    # "glyphCode":I
    .end local v11    # "error":I
    .end local v12    # "glyphRec":Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
    .end local v13    # "bitmap":Lcom/sun/javafx/font/freetype/FT_Bitmap;
    .end local v14    # "pixelMode":I
    .end local v15    # "width":I
    .end local v16    # "height":I
    .end local v17    # "pitch":I
    .end local v18    # "buffer":[B
    :catchall_0
    move-exception v2

    monitor-exit v32

    .end local v2    # "this":Lcom/sun/javafx/font/freetype/FTFontFile;
    throw v2
.end method
