.class public Lcom/sun/xml/stream/Entity$ScannedEntity;
.super Lcom/sun/xml/stream/Entity;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScannedEntity"
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40


# instance fields
.field public ch:[C

.field public columnNumber:I

.field public count:I

.field public encoding:Ljava/lang/String;

.field public entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

.field public fBufferSize:I

.field public fLastCount:I

.field public fTotalCountTillLastLoad:I

.field public isExternal:Z

.field public lineNumber:I

.field public literal:Z

.field public mayReadChunks:Z

.field public position:I

.field public reader:Ljava/io/Reader;

.field public stream:Ljava/io/InputStream;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;ZZZ)V
    .locals 14

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "entityLocation":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object/from16 v3, p3

    .local v3, "stream":Ljava/io/InputStream;
    move-object/from16 v4, p4

    .local v4, "reader":Ljava/io/Reader;
    move-object/from16 v5, p5

    .local v5, "encoding":Ljava/lang/String;
    move/from16 v6, p6

    .local v6, "literal":Z
    move/from16 v7, p7

    .local v7, "mayReadChunks":Z
    move/from16 v8, p8

    .local v8, "isExternal":Z
    move-object v11, v0

    invoke-direct {v11}, Lcom/sun/xml/stream/Entity;-><init>()V

    .line 297
    move-object v11, v0

    const/16 v12, 0x2000

    iput v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 343
    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 351
    move-object v11, v0

    const/4 v12, 0x1

    iput v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 352
    move-object v11, v0

    const/4 v12, 0x1

    iput v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 418
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    .line 419
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 420
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    .line 421
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    .line 422
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    .line 423
    move-object v11, v0

    move v12, v6

    iput-boolean v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->literal:Z

    .line 424
    move-object v11, v0

    move v12, v7

    iput-boolean v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 425
    move-object v11, v0

    move v12, v8

    iput-boolean v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal:Z

    .line 426
    move v11, v8

    if-eqz v11, :cond_1

    move-object v11, v0

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    :goto_0
    move v9, v11

    .line 427
    .local v9, "size":I
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v11

    move-object v10, v11

    .line 428
    .local v10, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v11, v0

    move-object v12, v10

    move v13, v9

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/util/BufferAllocator;->getCharBuffer(I)[C

    move-result-object v12

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 429
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    if-nez v11, :cond_0

    .line 430
    move-object v11, v0

    move v12, v9

    new-array v12, v12, [C

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 432
    :cond_0
    return-void

    .line 426
    .end local v9    # "size":I
    .end local v10    # "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    :cond_1
    const/16 v11, 0x400

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v2

    move-object v1, v2

    .line 439
    .local v1, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/util/BufferAllocator;->returnCharBuffer([C)V

    .line 440
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 441
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 442
    return-void
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return-object v0
.end method

.method public getEntityInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return-object v0
.end method

.method public getEntityReader()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return-object v0
.end method

.method public getEntityVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return-object v0
.end method

.method public final isExternal()Z
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return v0
.end method

.method public final isUnparsed()Z
    .locals 2

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return v0
.end method

.method public setEntityVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 466
    .local v1, "str":Ljava/lang/StringBuffer;
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 467
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",ch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 468
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 469
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 470
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ScannedEntity;
    return-object v0
.end method
