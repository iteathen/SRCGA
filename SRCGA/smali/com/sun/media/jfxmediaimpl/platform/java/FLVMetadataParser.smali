.class final Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
.super Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
.source "FLVMetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    }
.end annotation


# static fields
.field private static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private dataSize:I


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 35
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    .line 40
    return-void
.end method

.method private convertTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-string v2, "duration"

    move-object v0, v2

    .line 290
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    :goto_0
    return-object v0

    .line 276
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    :cond_0
    move-object v2, v1

    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const-string v2, "width"

    move-object v0, v2

    goto :goto_0

    .line 278
    :cond_1
    move-object v2, v1

    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    const-string v2, "height"

    move-object v0, v2

    goto :goto_0

    .line 280
    :cond_2
    move-object v2, v1

    const-string v3, "framerate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const-string v2, "framerate"

    move-object v0, v2

    goto :goto_0

    .line 282
    :cond_3
    move-object v2, v1

    const-string v3, "videocodecid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    const-string v2, "video codec"

    move-object v0, v2

    goto :goto_0

    .line 284
    :cond_4
    move-object v2, v1

    const-string v3, "audiocodecid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    const-string v2, "audio codec"

    move-object v0, v2

    goto :goto_0

    .line 286
    :cond_5
    move-object v2, v1

    const-string v3, "creationdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    const-string v2, "creationdate"

    move-object v0, v2

    goto :goto_0

    .line 290
    :cond_6
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private parseDataTag()Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move-object v15, v2

    iget v15, v15, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 81
    const/4 v15, 0x0

    move v2, v15

    .line 189
    .end local v2    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    .local v3, "header":[B
    :goto_0
    return v2

    .line 85
    .end local v3    # "header":[B
    .restart local v2    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    :cond_0
    const/16 v15, 0xe

    new-array v15, v15, [B

    move-object v3, v15

    .line 86
    .restart local v3    # "header":[B
    const/4 v15, 0x0

    move v4, v15

    .local v4, "ii":I
    :goto_1
    move v15, v4

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 87
    move-object v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v17

    aput-byte v17, v15, v16

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_1
    move-object v15, v3

    const/16 v16, 0x0

    aget-byte v15, v15, v16

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 91
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 94
    :cond_2
    move-object v15, v3

    const/16 v16, 0x1

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v16, v3

    const/16 v17, 0x2

    aget-byte v16, v16, v17

    const/16 v17, 0xff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    move v4, v15

    .line 95
    .local v4, "nameSize":I
    move v15, v4

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 96
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 98
    :cond_3
    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 99
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 101
    :cond_4
    new-instance v15, Ljava/lang/String;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v3

    const/16 v18, 0x3

    move/from16 v19, v4

    const-string v20, "UTF-8"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-direct/range {v16 .. v20}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v5, v15

    .line 102
    .local v5, "methodName":Ljava/lang/String;
    move-object v15, v5

    const-string v16, "onMetaData"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 103
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 107
    :cond_5
    move-object v15, v3

    const/16 v16, 0xd

    aget-byte v15, v15, v16

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 108
    const/4 v15, 0x3

    invoke-static {v15}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 109
    const/4 v15, 0x3

    const-string v16, "FLV metadata must be in an ECMA array"

    invoke-static/range {v15 .. v16}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 111
    :cond_6
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 116
    :cond_7
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->startRawMetadata(I)V

    .line 117
    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 118
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 119
    const/4 v15, 0x1

    const-string v16, "Unable to allocate buffer for FLV metadata"

    invoke-static/range {v15 .. v16}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 121
    :cond_8
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 125
    :cond_9
    move-object v15, v2

    move-object/from16 v16, v3

    const/16 v17, 0x0

    const/16 v18, 0xe

    invoke-virtual/range {v15 .. v18}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->stuffRawMetadata([BII)V

    .line 126
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    move/from16 v16, v0

    const/16 v17, 0xe

    add-int/lit8 v16, v16, -0xe

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->readRawMetadata(I)V

    .line 129
    move-object v15, v2

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->setParseRawMetadata(Z)V

    .line 130
    move-object v15, v2

    const/16 v16, 0xe

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 135
    move-object v15, v2

    :try_start_0
    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getInteger()I

    move-result v15

    move v7, v15

    .line 136
    .local v7, "arrayCount":I
    const/4 v15, 0x0

    move v8, v15

    .line 137
    .local v8, "parseCount":I
    const/4 v15, 0x0

    move v9, v15

    .line 138
    .local v9, "done":Z
    const/4 v15, 0x0

    move v10, v15

    .line 141
    .local v10, "warnMalformed":Z
    :cond_a
    move-object v15, v2

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getShort()S

    move-result v16

    const-string v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 142
    .local v11, "attribute":Ljava/lang/String;
    move-object v15, v2

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->readDataValue(Z)Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;

    move-result-object v15

    move-object v6, v15

    .line 143
    .local v6, "flvValue":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    add-int/lit8 v8, v8, 0x1

    .line 144
    move-object v15, v2

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->convertTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 145
    .local v12, "tag":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object v15, v11

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 146
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" -> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v18, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    const-string v17, "(unsupported)"

    :goto_2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 149
    :cond_b
    move-object v15, v12

    if-eqz v15, :cond_c

    .line 150
    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->convertValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v13, v15

    .line 151
    .local v13, "value":Ljava/lang/Object;
    move-object v15, v13

    if-eqz v15, :cond_c

    .line 152
    move-object v15, v2

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    invoke-virtual/range {v15 .. v17}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .end local v13    # "value":Ljava/lang/Object;
    :cond_c
    move v15, v8

    move/from16 v16, v7

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    .line 165
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getStreamPosition()I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_10

    .line 166
    move v15, v10

    if-nez v15, :cond_d

    const/4 v15, 0x3

    invoke-static {v15}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 167
    const/4 v15, 0x3

    const-string v16, "FLV Source has malformed metadata, invalid ECMA element count"

    invoke-static/range {v15 .. v16}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const/4 v15, 0x1

    move v10, v15

    .line 174
    :cond_d
    :goto_3
    move v15, v9

    if-eqz v15, :cond_a

    .line 181
    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 182
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->setParseRawMetadata(Z)V

    .line 183
    move-object v15, v2

    const-string v16, "FLV"

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->addRawMetadata(Ljava/lang/String;)V

    .line 184
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->disposeRawMetadata()V

    .line 186
    :cond_e
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->done()V

    .line 187
    .line 189
    .end local v6    # "flvValue":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    .end local v7    # "arrayCount":I
    .end local v8    # "parseCount":I
    .end local v9    # "done":Z
    .end local v10    # "warnMalformed":Z
    .end local v11    # "attribute":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :goto_4
    const/4 v15, 0x1

    move v2, v15

    goto/16 :goto_0

    .line 146
    .restart local v6    # "flvValue":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    .restart local v7    # "arrayCount":I
    .restart local v8    # "parseCount":I
    .restart local v9    # "done":Z
    .restart local v10    # "warnMalformed":Z
    .restart local v11    # "attribute":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_f
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    goto/16 :goto_2

    .line 171
    :cond_10
    const/4 v15, 0x1

    move v9, v15

    goto :goto_3

    .line 175
    .end local v6    # "flvValue":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    .end local v7    # "arrayCount":I
    .end local v8    # "parseCount":I
    .end local v9    # "done":Z
    .end local v10    # "warnMalformed":Z
    .end local v11    # "attribute":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 177
    .local v6, "e":Ljava/lang/Exception;
    const/4 v15, 0x3

    :try_start_2
    invoke-static {v15}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 178
    const/4 v15, 0x3

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception while processing FLV metadata: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :cond_11
    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 182
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->setParseRawMetadata(Z)V

    .line 183
    move-object v15, v2

    const-string v16, "FLV"

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->addRawMetadata(Ljava/lang/String;)V

    .line 184
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->disposeRawMetadata()V

    .line 186
    :cond_12
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->done()V

    .line 187
    goto :goto_4

    .line 181
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    move-object v14, v15

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_13

    .line 182
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->setParseRawMetadata(Z)V

    .line 183
    move-object v15, v2

    const-string v16, "FLV"

    invoke-virtual/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->addRawMetadata(Ljava/lang/String;)V

    .line 184
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->disposeRawMetadata()V

    .line 186
    :cond_13
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->done()V

    move-object v15, v14

    throw v15
.end method

.method private readDataValue(Z)Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move v2, p1

    .local v2, "hasName":Z
    new-instance v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;-><init>(Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$1;)V

    move-object v3, v5

    .line 195
    .local v3, "sdv":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    move v5, v2

    if-eqz v5, :cond_0

    .line 196
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getShort()S

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 199
    :cond_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v6

    iput-byte v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->type:B

    .line 200
    move-object v5, v3

    iget-byte v5, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->type:B

    packed-switch v5, :pswitch_data_0

    .line 244
    :goto_0
    move-object v5, v3

    move-object v1, v5

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    return-object v1

    .line 202
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    :pswitch_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->obj:Ljava/lang/Object;

    .line 203
    goto :goto_0

    .line 205
    :pswitch_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 206
    .local v4, "b":Z
    move-object v5, v3

    move v6, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->obj:Ljava/lang/Object;

    .line 207
    goto :goto_0

    .line 205
    .end local v4    # "b":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 209
    :pswitch_2
    move-object v5, v3

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getShort()S

    move-result v7

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->obj:Ljava/lang/Object;

    .line 210
    goto :goto_0

    .line 212
    :pswitch_3
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipObject()V

    .line 213
    goto :goto_0

    .line 215
    :pswitch_4
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getShort()S

    move-result v6

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 216
    goto :goto_0

    .line 218
    :pswitch_5
    goto :goto_0

    .line 220
    :pswitch_6
    goto :goto_0

    .line 222
    :pswitch_7
    move-object v5, v1

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 223
    goto :goto_0

    .line 225
    :pswitch_8
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipArray()V

    .line 226
    goto :goto_0

    .line 228
    :pswitch_9
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->scriptDataObjectEnd:Z

    .line 229
    goto :goto_0

    .line 231
    :pswitch_a
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipStrictArray()V

    .line 232
    goto :goto_0

    .line 234
    :pswitch_b
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->obj:Ljava/lang/Object;

    .line 235
    move-object v5, v1

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 236
    goto :goto_0

    .line 238
    :pswitch_c
    move-object v5, v3

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getInteger()I

    move-result v7

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->obj:Ljava/lang/Object;

    .line 239
    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private skipArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getInteger()I

    move-result v3

    move v1, v3

    .line 259
    .local v1, "arrayCount":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "parseCount":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 260
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->readDataValue(Z)Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;

    move-result-object v3

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private skipObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->readDataValue(Z)Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;

    move-result-object v2

    move-object v1, v2

    .line 252
    .local v1, "value":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->scriptDataObjectEnd:Z

    if-eqz v2, :cond_0

    .line 253
    return-void
.end method

.method private skipStrictArray()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getInteger()I

    move-result v4

    int-to-long v4, v4

    move-wide v1, v4

    .line 268
    .local v1, "arrayLen":J
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    int-to-long v4, v4

    move-wide v6, v1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 269
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->readDataValue(Z)Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;

    move-result-object v4

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method protected parse()V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v5

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v5

    const/16 v6, 0x56

    if-ne v5, v6, :cond_0

    .line 46
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 47
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getInteger()I

    move-result v5

    move v1, v5

    .line 48
    .local v1, "dataOffset":I
    move-object v5, v0

    move v6, v1

    const/16 v7, 0x9

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 50
    const/4 v5, 0x0

    move v2, v5

    .line 51
    .local v2, "tagCount":I
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 52
    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 54
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getNextByte()B

    move-result v5

    move v3, v5

    .line 55
    .local v3, "tagType":B
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getU24()I

    move-result v6

    iput v6, v5, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    .line 56
    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 58
    move v5, v3

    const/16 v6, 0x12

    if-ne v5, v6, :cond_3

    .line 59
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getStreamPosition()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    add-int/2addr v5, v6

    move v4, v5

    .line 61
    .local v4, "expectedEndPosition":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->parseDataTag()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    .line 75
    .line 76
    .end local v1    # "dataOffset":I
    .end local v2    # "tagCount":I
    .end local v3    # "tagType":B
    .end local v4    # "expectedEndPosition":I
    :cond_0
    :goto_1
    return-void

    .line 66
    .restart local v1    # "dataOffset":I
    .restart local v2    # "tagCount":I
    .restart local v3    # "tagType":B
    .restart local v4    # "expectedEndPosition":I
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getStreamPosition()I

    move-result v5

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 67
    move-object v5, v0

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->getStreamPosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V

    .line 69
    .line 51
    .end local v4    # "expectedEndPosition":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_3
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->dataSize:I

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;->skipBytes(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 74
    .end local v1    # "dataOffset":I
    .end local v2    # "tagCount":I
    .end local v3    # "tagType":B
    :catch_0
    move-exception v5

    move-object v1, v5

    goto :goto_1
.end method
