.class Lcom/sun/javafx/font/WoffDecoder;
.super Lcom/sun/javafx/font/FontFileWriter;
.source "WoffDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;,
        Lcom/sun/javafx/font/WoffDecoder$WoffHeader;
    }
.end annotation


# instance fields
.field woffHeader:Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

.field woffTableDirectory:[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/WoffDecoder;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FontFileWriter;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/font/WoffDecoder;->lambda$decode$242(Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static synthetic lambda$decode$242(Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;)I
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "o1":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    move-object v1, p1

    .local v1, "o2":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->offset:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->offset:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "o1":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    return v0
.end method


# virtual methods
.method public decode(Lcom/sun/javafx/font/FontFileReader;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/font/WoffDecoder;
    move-object/from16 v2, p1

    .local v2, "input":Lcom/sun/javafx/font/FontFileReader;
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/font/FontFileReader;->reset()V

    .line 43
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/javafx/font/WoffDecoder;->initWoffTables(Lcom/sun/javafx/font/FontFileReader;)V

    .line 44
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/font/WoffDecoder;->woffHeader:Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

    if-eqz v13, :cond_0

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/font/WoffDecoder;->woffTableDirectory:[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    if-nez v13, :cond_1

    .line 45
    :cond_0
    new-instance v13, Ljava/lang/Exception;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "WoffDecoder: failure reading header"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 47
    :cond_1
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/font/WoffDecoder;->woffHeader:Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

    iget v13, v13, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->flavor:I

    move v3, v13

    .line 48
    .local v3, "format":I
    move v13, v3

    const/high16 v14, 0x10000

    if-eq v13, v14, :cond_2

    move v13, v3

    const v14, 0x74727565

    if-eq v13, v14, :cond_2

    move v13, v3

    const v14, 0x4f54544f    # 3.56229504E9f

    if-eq v13, v14, :cond_2

    .line 49
    new-instance v13, Ljava/lang/Exception;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "WoffDecoder: invalid flavor"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 53
    :cond_2
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/font/WoffDecoder;->woffHeader:Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

    iget-short v13, v13, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->numTables:S

    move v4, v13

    .line 54
    .local v4, "numTables":S
    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/font/WoffDecoder;->woffHeader:Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

    iget v14, v14, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->totalSfntSize:I

    invoke-virtual {v13, v14}, Lcom/sun/javafx/font/WoffDecoder;->setLength(I)V

    .line 55
    move-object v13, v1

    move v14, v3

    move v15, v4

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/font/WoffDecoder;->writeHeader(IS)V

    .line 58
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/font/WoffDecoder;->woffTableDirectory:[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    invoke-static {}, Lcom/sun/javafx/font/WoffDecoder$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 60
    new-instance v13, Ljava/util/zip/Inflater;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/util/zip/Inflater;-><init>()V

    move-object v5, v13

    .line 61
    .local v5, "decompressor":Ljava/util/zip/Inflater;
    const/16 v13, 0xc

    move v14, v4

    const/16 v15, 0x10

    mul-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    move v6, v13

    .line 62
    .local v6, "offset":I
    const/4 v13, 0x0

    move v7, v13

    .local v7, "i":I
    :goto_0
    move v13, v7

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/font/WoffDecoder;->woffTableDirectory:[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    array-length v14, v14

    if-ge v13, v14, :cond_5

    .line 63
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/font/WoffDecoder;->woffTableDirectory:[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    .line 68
    .local v8, "table":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    move-object v13, v1

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->index:I

    move-object v15, v8

    iget v15, v15, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->tag:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origChecksum:I

    move/from16 v16, v0

    move/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    move/from16 v18, v0

    invoke-virtual/range {v13 .. v18}, Lcom/sun/javafx/font/WoffDecoder;->writeDirectoryEntry(IIIII)V

    .line 72
    move-object v13, v2

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->offset:I

    move-object v15, v8

    iget v15, v15, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v13

    move-object v9, v13

    .line 73
    .local v9, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    new-array v13, v13, [B

    move-object v10, v13

    .line 74
    .local v10, "bytes":[B
    move-object v13, v9

    const/4 v14, 0x0

    move-object v15, v10

    const/16 v16, 0x0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 75
    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    if-eq v13, v14, :cond_4

    .line 76
    move-object v13, v5

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 77
    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    new-array v13, v13, [B

    move-object v11, v13

    .line 78
    .local v11, "output":[B
    move-object v13, v5

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v13

    move v12, v13

    .line 79
    .local v12, "length":I
    move v13, v12

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    if-eq v13, v14, :cond_3

    .line 80
    new-instance v13, Ljava/lang/Exception;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "WoffDecoder: failure expanding table"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 82
    :cond_3
    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->reset()V

    .line 83
    move-object v13, v11

    move-object v10, v13

    .line 85
    .end local v11    # "output":[B
    .end local v12    # "length":I
    :cond_4
    move-object v13, v1

    move v14, v6

    invoke-virtual {v13, v14}, Lcom/sun/javafx/font/WoffDecoder;->seek(I)V

    .line 86
    move-object v13, v1

    move-object v14, v10

    invoke-virtual {v13, v14}, Lcom/sun/javafx/font/WoffDecoder;->writeBytes([B)V

    .line 88
    move v13, v6

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    const/4 v15, -0x4

    and-int/lit8 v14, v14, -0x4

    add-int/2addr v13, v14

    move v6, v13

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 90
    .end local v8    # "table":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    .end local v9    # "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v10    # "bytes":[B
    :cond_5
    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    .line 91
    return-void
.end method

.method initWoffTables(Lcom/sun/javafx/font/FontFileReader;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/font/WoffDecoder;
    move-object/from16 v4, p1

    .local v4, "input":Lcom/sun/javafx/font/FontFileReader;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader;->getLength()J

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 95
    .local v5, "filesize":J
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x2c

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    .line 96
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid filesize"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 98
    :cond_0
    move-object/from16 v18, v4

    const/16 v19, 0x0

    const/16 v20, 0x2c

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v18

    move-object/from16 v7, v18

    .line 99
    .local v7, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    new-instance v18, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;)V

    move-object/from16 v8, v18

    .line 100
    .local v8, "header":Lcom/sun/javafx/font/WoffDecoder$WoffHeader;
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->numTables:S

    move/from16 v18, v0

    move/from16 v9, v18

    .line 101
    .local v9, "numTables":S
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->signature:I

    move/from16 v18, v0

    const v19, 0x774f4646

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 102
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid signature"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 104
    :cond_1
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->reserved:S

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 105
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid reserved != 0"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 107
    :cond_2
    move-wide/from16 v18, v5

    const/16 v20, 0x2c

    move/from16 v21, v9

    const/16 v22, 0x14

    mul-int/lit8 v21, v21, 0x14

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_3

    .line 108
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid filesize"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 111
    :cond_3
    move/from16 v18, v9

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    move-object/from16 v18, v0

    move-object/from16 v11, v18

    .line 112
    .local v11, "tableDirectory":[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    const/16 v18, 0x2c

    move/from16 v19, v9

    const/16 v20, 0x14

    mul-int/lit8 v19, v19, 0x14

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 113
    .local v12, "headerOffset":I
    const/16 v18, 0xc

    move/from16 v19, v9

    const/16 v20, 0x10

    mul-int/lit8 v19, v19, 0x10

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 114
    .local v13, "size":I
    move-object/from16 v18, v4

    const/16 v19, 0x2c

    move/from16 v20, v9

    const/16 v21, 0x14

    mul-int/lit8 v20, v20, 0x14

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v18

    move-object/from16 v7, v18

    .line 115
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 116
    .local v14, "prevTag":I
    const/16 v18, 0x0

    move/from16 v15, v18

    .local v15, "i":I
    :goto_0
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 117
    move-object/from16 v18, v11

    move/from16 v19, v15

    new-instance v20, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v7

    move/from16 v23, v15

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v10, v21

    .local v10, "table":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    aput-object v20, v18, v19

    .line 118
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->tag:I

    move/from16 v18, v0

    move/from16 v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 119
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: table directory not ordered by tag"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 122
    :cond_4
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->offset:I

    move/from16 v18, v0

    move/from16 v16, v18

    .line 123
    .local v16, "startOffset":I
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->offset:I

    move/from16 v18, v0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v17, v18

    .line 124
    .local v17, "endOffset":I
    move/from16 v18, v12

    move/from16 v19, v16

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    move/from16 v18, v16

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    .line 125
    :cond_5
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid table offset"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 127
    :cond_6
    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    move/from16 v18, v17

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    cmp-long v18, v18, v20

    if-lez v18, :cond_8

    .line 128
    :cond_7
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid table offset"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 130
    :cond_8
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    move/from16 v18, v0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 131
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid compressed length"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 133
    :cond_9
    move/from16 v18, v13

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    move/from16 v19, v0

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    const/16 v20, -0x4

    and-int/lit8 v19, v19, -0x4

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 134
    move/from16 v18, v13

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->totalSfntSize:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 135
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid totalSfntSize"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 116
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 138
    .end local v10    # "table":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    .end local v16    # "startOffset":I
    .end local v17    # "endOffset":I
    :cond_b
    move/from16 v18, v13

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->totalSfntSize:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 139
    new-instance v18, Ljava/lang/Exception;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "WoffDecoder: invalid totalSfntSize"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 141
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/font/WoffDecoder;->woffHeader:Lcom/sun/javafx/font/WoffDecoder$WoffHeader;

    .line 142
    move-object/from16 v18, v3

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/font/WoffDecoder;->woffTableDirectory:[Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;

    .line 143
    return-void
.end method
