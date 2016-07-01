.class Lcom/sun/javafx/font/DFontDecoder;
.super Lcom/sun/javafx/font/FontFileWriter;
.source "DFontDecoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/sun/javafx/font/DFontDecoder$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/DFontDecoder;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FontFileWriter;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/DFontDecoder;->lambda$static$236()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static native createCTFont(Ljava/lang/String;)J
.end method

.method private static native getCTFontFormat(J)I
.end method

.method private static native getCTFontTable(JI)[B
.end method

.method private static native getCTFontTags(J)[I
.end method

.method private static synthetic lambda$static$236()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 37
    const-string v0, "javafx_font"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native releaseCTFont(J)V
.end method


# virtual methods
.method public decode(Ljava/lang/String;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/font/DFontDecoder;
    move-object/from16 v3, p1

    .local v3, "fontName":Ljava/lang/String;
    move-object/from16 v16, v3

    if-nez v16, :cond_0

    .line 53
    new-instance v16, Ljava/io/IOException;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const-string v18, "Invalid font name"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 55
    :cond_0
    const-wide/16 v16, 0x0

    move-wide/from16 v4, v16

    .line 57
    .local v4, "fontRef":J
    move-object/from16 v16, v3

    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/font/DFontDecoder;->createCTFont(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v4, v16

    .line 58
    move-wide/from16 v16, v4

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_2

    .line 59
    new-instance v16, Ljava/io/IOException;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const-string v18, "Failure creating CTFont"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v16

    move-object/from16 v15, v16

    move-wide/from16 v16, v4

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    .line 99
    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->releaseCTFont(J)V

    :cond_1
    move-object/from16 v16, v15

    throw v16

    .line 61
    :cond_2
    move-wide/from16 v16, v4

    :try_start_1
    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->getCTFontFormat(J)I

    move-result v16

    move/from16 v6, v16

    .line 62
    .local v6, "format":I
    move/from16 v16, v6

    const v17, 0x74727565

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    move/from16 v16, v6

    const/high16 v17, 0x10000

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    move/from16 v16, v6

    const v17, 0x4f54544f    # 3.56229504E9f

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 63
    new-instance v16, Ljava/io/IOException;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const-string v18, "Unsupported Dfont"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 65
    :cond_3
    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->getCTFontTags(J)[I

    move-result-object v16

    move-object/from16 v7, v16

    .line 66
    .local v7, "tags":[I
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v8, v16

    .line 67
    .local v8, "numTables":S
    const/16 v16, 0xc

    const/16 v17, 0x10

    move/from16 v18, v8

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v9, v16

    .line 68
    .local v9, "size":I
    move/from16 v16, v8

    move/from16 v0, v16

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    move-object/from16 v10, v16

    .line 69
    .local v10, "tableData":[[B
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":I
    :goto_0
    move/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 70
    move-object/from16 v16, v7

    move/from16 v17, v11

    aget v16, v16, v17

    move/from16 v12, v16

    .line 71
    .local v12, "tag":I
    move-object/from16 v16, v10

    move/from16 v17, v11

    move-wide/from16 v18, v4

    move/from16 v20, v12

    invoke-static/range {v18 .. v20}, Lcom/sun/javafx/font/DFontDecoder;->getCTFontTable(JI)[B

    move-result-object v18

    aput-object v18, v16, v17

    .line 72
    move-object/from16 v16, v10

    move/from16 v17, v11

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v13, v16

    .line 73
    .local v13, "length":I
    move/from16 v16, v9

    move/from16 v17, v13

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    const/16 v18, -0x4

    and-int/lit8 v17, v17, -0x4

    add-int v16, v16, v17

    move/from16 v9, v16

    .line 69
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 75
    .end local v12    # "tag":I
    .end local v13    # "length":I
    :cond_4
    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->releaseCTFont(J)V

    .line 76
    const-wide/16 v16, 0x0

    move-wide/from16 v4, v16

    .line 79
    move-object/from16 v16, v2

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->setLength(I)V

    .line 80
    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/font/DFontDecoder;->writeHeader(IS)V

    .line 82
    const/16 v16, 0xc

    const/16 v17, 0x10

    move/from16 v18, v8

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v11, v16

    .line 83
    .local v11, "dataOffset":I
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "i":I
    :goto_1
    move/from16 v16, v12

    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 84
    move-object/from16 v16, v7

    move/from16 v17, v12

    aget v16, v16, v17

    move/from16 v13, v16

    .line 85
    .local v13, "tag":I
    move-object/from16 v16, v10

    move/from16 v17, v12

    aget-object v16, v16, v17

    move-object/from16 v14, v16

    .line 88
    .local v14, "data":[B
    move-object/from16 v16, v2

    move/from16 v17, v12

    move/from16 v18, v13

    const/16 v19, 0x0

    move/from16 v20, v11

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Lcom/sun/javafx/font/DFontDecoder;->writeDirectoryEntry(IIIII)V

    .line 91
    move-object/from16 v16, v2

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->seek(I)V

    .line 92
    move-object/from16 v16, v2

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->writeBytes([B)V

    .line 94
    move/from16 v16, v11

    move-object/from16 v17, v14

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    const/16 v18, -0x4

    and-int/lit8 v17, v17, -0x4

    add-int v16, v16, v17

    move/from16 v11, v16

    .line 83
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 98
    .end local v13    # "tag":I
    .end local v14    # "data":[B
    :cond_5
    move-wide/from16 v16, v4

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_6

    .line 99
    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/font/DFontDecoder;->releaseCTFont(J)V

    .line 102
    :cond_6
    return-void
.end method
