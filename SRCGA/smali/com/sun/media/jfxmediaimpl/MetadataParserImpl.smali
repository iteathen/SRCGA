.class public abstract Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
.super Ljava/lang/Thread;
.source "MetadataParserImpl.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/MetadataParser;


# instance fields
.field private FLV_VIDEO_CODEC_NAME:[Ljava/lang/String;

.field private buffer:Ljava/nio/ByteBuffer;

.field private connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

.field private index:I

.field private length:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/MetadataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private locator:Lcom/sun/media/jfxmedia/locator/Locator;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private parsingRawMetadata:Z

.field protected rawMetaBlob:Ljava/nio/ByteBuffer;

.field private rawMetaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private streamPosition:I


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 45
    move-object v2, v0

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string v6, "JPEG Video (Unsupported)"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string v6, "Sorenson H.263 Video"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string v6, "Flash Screen Video"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string v6, "On2 VP6 Video"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    const-string v6, "On2 VP6-Alpha Video"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x6

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string v6, "H.264 Video"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x8

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x9

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xa

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xb

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xc

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xd

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xe

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xf

    const-string v6, "Unsupported"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->FLV_VIDEO_CODEC_NAME:[Ljava/lang/String;

    .line 52
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->metadata:Ljava/util/Map;

    .line 54
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->locator:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->buffer:Ljava/nio/ByteBuffer;

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaMap:Ljava/util/Map;

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->length:I

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->index:I

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->streamPosition:I

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->locator:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 66
    return-void
.end method

.method private adjustRawMetadataSize(I)V
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "addSize":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 143
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    move v2, v5

    .line 144
    .local v2, "pos":I
    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    move v3, v5

    .line 145
    .local v3, "newSize":I
    move v5, v3

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v4, v5

    .line 146
    .local v4, "newBuffer":Ljava/nio/ByteBuffer;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 147
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 148
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    .line 150
    .end local v2    # "pos":I
    .end local v3    # "newSize":I
    .end local v4    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sun/media/jfxmedia/events/MetadataListener;)V
    .locals 9

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MetadataListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 70
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 71
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 73
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method protected addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->metadata:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    return-void
.end method

.method protected addRawMetadata(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    if-ne v2, v3, :cond_0

    .line 190
    .line 199
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaMap:Ljava/util/Map;

    if-ne v2, v3, :cond_1

    .line 194
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaMap:Ljava/util/Map;

    .line 196
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->metadata:Ljava/util/Map;

    const-string v3, "raw metadata"

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaMap:Ljava/util/Map;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    goto :goto_0
.end method

.method protected convertValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_0

    .line 339
    move-object v4, v2

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v3, v4

    .line 340
    .local v3, "v":Ljava/lang/Double;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, v4

    .line 391
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    .end local v3    # "v":Ljava/lang/Double;
    :goto_0
    return-object v0

    .line 341
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    move-object v4, v1

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 342
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 343
    .local v3, "v":Ljava/lang/String;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 344
    .end local v3    # "v":Ljava/lang/String;
    :cond_1
    move-object v4, v1

    const-string v5, "width"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    const-string v5, "height"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Double;

    move-object v3, v4

    .line 346
    .local v3, "v":Ljava/lang/Double;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 347
    .end local v3    # "v":Ljava/lang/Double;
    :cond_3
    move-object v4, v1

    const-string v5, "framerate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 349
    :cond_4
    move-object v4, v1

    const-string v5, "videocodecid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    move-object v4, v2

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    move v3, v4

    .line 352
    .local v3, "codecid":I
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->FLV_VIDEO_CODEC_NAME:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 353
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->FLV_VIDEO_CODEC_NAME:[Ljava/lang/String;

    move v5, v3

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0

    .line 355
    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 357
    .end local v3    # "codecid":I
    :cond_6
    move-object v4, v1

    const-string v5, "audiocodecid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 359
    const-string v4, "MPEG 1 Audio"

    move-object v0, v4

    goto :goto_0

    .line 360
    :cond_7
    move-object v4, v1

    const-string v5, "creationdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 361
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 362
    :cond_8
    move-object v4, v1

    const-string v5, "track number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object v4, v1

    const-string v5, "disc number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 363
    :cond_9
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 364
    .local v3, "v":[Ljava/lang/String;
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 365
    move-object v4, v3

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 367
    .line 391
    .end local v3    # "v":[Ljava/lang/String;
    :cond_a
    :goto_1
    const/4 v4, 0x0

    move-object v0, v4

    goto/16 :goto_0

    .line 367
    :cond_b
    move-object v4, v1

    const-string v5, "track count"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object v4, v1

    const-string v5, "disc count"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 368
    :cond_c
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 369
    .local v3, "tc":[Ljava/lang/String;
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 370
    move-object v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 372
    :cond_d
    goto :goto_1

    .end local v3    # "tc":[Ljava/lang/String;
    :cond_e
    move-object v4, v1

    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 373
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 374
    :cond_f
    move-object v4, v1

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 375
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 376
    :cond_10
    move-object v4, v1

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 377
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 378
    :cond_11
    move-object v4, v1

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 379
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 380
    :cond_12
    move-object v4, v1

    const-string v5, "album artist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 381
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 382
    :cond_13
    move-object v4, v1

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 383
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 384
    :cond_14
    move-object v4, v1

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 385
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 386
    :cond_15
    move-object v4, v1

    const-string v5, "year"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 387
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 388
    .local v3, "v":Ljava/lang/String;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0
.end method

.method protected disposeRawMetadata()V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    .line 171
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    .line 172
    return-void
.end method

.method protected done()V
    .locals 8

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 116
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->metadata:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move-object v2, v5

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MetadataListener;>;>;"
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmedia/events/MetadataListener;

    move-object v3, v5

    .line 119
    .local v3, "l":Lcom/sun/media/jfxmedia/events/MetadataListener;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 120
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->metadata:Ljava/util/Map;

    invoke-interface {v5, v6}, Lcom/sun/media/jfxmedia/events/MetadataListener;->onMetadata(Ljava/util/Map;)V

    .line 124
    :goto_1
    goto :goto_0

    .line 122
    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 126
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MetadataListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MetadataListener;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    :cond_1
    move-object v5, v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    return-void
.end method

.method protected getBytes(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "size":I
    move v4, v1

    new-array v4, v4, [B

    move-object v2, v4

    .line 240
    .local v2, "bytes":[B
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v4, :cond_0

    .line 241
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 242
    move-object v4, v2

    move-object v0, v4

    .line 249
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :goto_0
    return-object v0

    .line 245
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 246
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    aput-byte v6, v4, v5

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 249
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method protected getDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v4, :cond_0

    .line 312
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    move-wide v1, v4

    .line 316
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    .local v2, "bits":J
    :goto_0
    return-wide v1

    .line 315
    .end local v2    # "bits":J
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getLong()J

    move-result-wide v4

    move-wide v2, v4

    .line 316
    .restart local v2    # "bits":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method protected getInteger()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v2, :cond_0

    .line 280
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move v0, v2

    .line 293
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    .local v1, "value":I
    :goto_0
    return v0

    .line 283
    .end local v1    # "value":I
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 285
    .restart local v1    # "value":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 286
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 287
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 288
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 289
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 290
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 291
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 293
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method protected getLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 253
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v4, :cond_0

    .line 254
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    move-wide v1, v4

    .line 275
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    .local v2, "value":J
    :goto_0
    return-wide v1

    .line 257
    .end local v2    # "value":J
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 259
    .restart local v2    # "value":J
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 260
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 261
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 262
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 263
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 264
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 265
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 266
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 267
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 268
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 269
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 270
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 271
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 272
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 273
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 275
    move-wide v4, v2

    move-wide v1, v4

    goto/16 :goto_0
.end method

.method protected getNextByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v2, :cond_0

    .line 215
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    move v0, v2

    .line 234
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    .local v1, "b":B
    :goto_0
    return v0

    .line 218
    .end local v1    # "b":B
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->buffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 219
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->buffer:Ljava/nio/ByteBuffer;

    .line 220
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->readNextBlock()I

    move-result v3

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->length:I

    .line 223
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->index:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->length:I

    if-lt v2, v3, :cond_3

    .line 224
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->readNextBlock()I

    move-result v3

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->length:I

    .line 225
    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->length:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 226
    new-instance v2, Ljava/io/EOFException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 228
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->index:I

    .line 231
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->index:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    move v1, v2

    .line 232
    .restart local v1    # "b":B
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->index:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->index:I

    .line 233
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->streamPosition:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->streamPosition:I

    .line 234
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method protected getShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v2, :cond_0

    .line 298
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    move v0, v2

    .line 307
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    .local v1, "value":S
    :goto_0
    return v0

    .line 301
    .end local v1    # "value":S
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 303
    .restart local v1    # "value":S
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    move v1, v2

    .line 304
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    move v1, v2

    .line 305
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    move v1, v2

    .line 307
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method protected getStreamPosition()I
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v1, :cond_0

    .line 131
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    move v0, v1

    .line 133
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->streamPosition:I

    move v0, v1

    goto :goto_0
.end method

.method protected getString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "length":I
    move-object v2, p2

    .local v2, "charset":Ljava/nio/charset/Charset;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getBytes(I)[B

    move-result-object v4

    move-object v3, v4

    .line 321
    .local v3, "bytes":[B
    new-instance v4, Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    return-object v0
.end method

.method protected getU24()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    const/4 v2, 0x0

    move v1, v2

    .line 327
    .local v1, "value":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 328
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 329
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 330
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 331
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 333
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    return v0
.end method

.method protected abstract parse()V
.end method

.method protected readRawMetadata(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getBytes(I)[B

    move-result-object v3

    move-object v2, v3

    .line 155
    .local v2, "data":[B
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->adjustRawMetadataSize(I)V

    .line 156
    const/4 v3, 0x0

    move-object v4, v2

    if-eq v3, v4, :cond_0

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 159
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sun/media/jfxmedia/events/MetadataListener;)V
    .locals 9

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MetadataListener;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 78
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 79
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->listeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    move-object v3, v6

    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MetadataListener;>;>;"
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmedia/events/MetadataListener;

    move-object v4, v6

    .line 81
    .local v4, "l":Lcom/sun/media/jfxmedia/events/MetadataListener;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 82
    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 84
    :cond_1
    goto :goto_0

    .line 86
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MetadataListener;>;>;"
    .end local v4    # "l":Lcom/sun/media/jfxmedia/events/MetadataListener;
    :cond_2
    move-object v6, v2

    monitor-exit v6

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public run()V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->locator:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/Locator;->createConnectionHolder()Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    .line 103
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method protected setParseRawMetadata(Z)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "state":Z
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    if-ne v2, v3, :cond_0

    .line 177
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    .line 178
    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 182
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 184
    :cond_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    .line 185
    goto :goto_0
.end method

.method protected skipBytes(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "num":I
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->parsingRawMetadata:Z

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    .line 204
    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 208
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->getNextByte()B

    move-result v3

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_1
    goto :goto_0
.end method

.method public startParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->start()V

    .line 91
    return-void
.end method

.method protected startRawMetadata(I)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move v1, p1

    .local v1, "sizeHint":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    .line 138
    return-void
.end method

.method public stopParser()V
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    if-eqz v1, :cond_0

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->connectionHolder:Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->closeConnection()V

    .line 97
    :cond_0
    return-void
.end method

.method protected stuffRawMetadata([BII)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
    move-object v1, p1

    .local v1, "data":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "size":I
    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    if-eq v4, v5, :cond_0

    .line 164
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->adjustRawMetadataSize(I)V

    .line 165
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 167
    :cond_0
    return-void
.end method
