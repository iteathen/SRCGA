.class public final Ljavafx/scene/media/Media;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/media/Media$InitLocator;,
        Ljavafx/scene/media/Media$_MetadataListener;
    }
.end annotation


# instance fields
.field private duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/media/MediaException;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private final jfxLocator:Lcom/sun/media/jfxmedia/locator/Locator;

.field private jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

.field private markers:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataBacking:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private metadataListener:Lcom/sun/media/jfxmedia/events/MetadataListener;

.field private onError:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/String;

.field private tracks:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/media/Track;",
            ">;"
        }
    .end annotation
.end field

.field private final tracksBacking:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/media/Track;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljavafx/beans/property/ReadOnlyIntegerWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "source":Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 182
    move-object v6, v0

    new-instance v7, Ljavafx/scene/media/Media$_MetadataListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/scene/media/Media$_MetadataListener;-><init>(Ljavafx/scene/media/Media;Ljavafx/scene/media/Media$1;)V

    iput-object v7, v6, Ljavafx/scene/media/Media;->metadataListener:Lcom/sun/media/jfxmedia/events/MetadataListener;

    .line 204
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/media/Media;->metadataBacking:Ljavafx/collections/ObservableMap;

    .line 314
    move-object v6, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/media/Media;->tracksBacking:Ljavafx/collections/ObservableList;

    .line 321
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/media/Media;->markers:Ljavafx/collections/ObservableMap;

    .line 376
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/media/Media;->source:Ljava/lang/String;

    .line 378
    const/4 v6, 0x0

    move-object v2, v6

    .line 381
    .local v2, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 384
    .line 386
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/media/Media;->metadataBacking:Ljavafx/collections/ObservableMap;

    invoke-static {v7}, Ljavafx/collections/FXCollections;->unmodifiableObservableMap(Ljavafx/collections/ObservableMap;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/media/Media;->metadata:Ljavafx/collections/ObservableMap;

    .line 387
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/media/Media;->tracksBacking:Ljavafx/collections/ObservableList;

    invoke-static {v7}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/media/Media;->tracks:Ljavafx/collections/ObservableList;

    .line 389
    const/4 v6, 0x0

    move-object v3, v6

    .line 391
    .local v3, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    :try_start_1
    new-instance v6, Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/media/jfxmedia/locator/Locator;-><init>(Ljava/net/URI;)V

    move-object v3, v6

    .line 392
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/media/Media;->jfxLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 393
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->canBlock()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 394
    new-instance v6, Ljavafx/scene/media/Media$InitLocator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/media/Media$InitLocator;-><init>(Ljavafx/scene/media/Media;Ljavafx/scene/media/Media$1;)V

    move-object v4, v6

    .line 395
    .local v4, "locatorInit":Ljavafx/scene/media/Media$InitLocator;
    new-instance v6, Ljava/lang/Thread;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v5, v6

    .line 396
    .local v5, "t":Ljava/lang/Thread;
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 397
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_1 .. :try_end_1} :catch_4

    .line 398
    .line 410
    .line 411
    .end local v4    # "locatorInit":Ljavafx/scene/media/Media$InitLocator;
    .end local v5    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 382
    .end local v3    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 383
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 399
    .local v3, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    :cond_0
    move-object v6, v3

    :try_start_2
    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->init()V

    .line 400
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/media/Media;->runMetadataParser()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 402
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 403
    .local v4, "use":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 404
    .end local v4    # "use":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v6

    move-object v4, v6

    .line 405
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v6, Ljavafx/scene/media/MediaException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    throw v6

    .line 406
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    move-object v4, v6

    .line 407
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljavafx/scene/media/MediaException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    throw v6

    .line 408
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v6

    move-object v4, v6

    .line 409
    .local v4, "me":Lcom/sun/media/jfxmedia/MediaException;
    new-instance v6, Ljavafx/scene/media/MediaException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/MediaException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    throw v6
.end method

.method static synthetic access$200(Ljavafx/scene/media/Media;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "x1":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/Media;->updateMetadata(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/events/MetadataListener;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->metadataListener:Lcom/sun/media/jfxmedia/events/MetadataListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method static synthetic access$402(Ljavafx/scene/media/Media;Lcom/sun/media/jfxmedia/MetadataParser;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/MetadataParser;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/media/Media;->jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/locator/Locator;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->jfxLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/media/Media;)V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/Media;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/Media;->runMetadataParser()V

    return-void
.end method

.method private durationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 293
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "duration"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/Media;->duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 295
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method private errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/media/MediaException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 107
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/Media$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/Media$1;-><init>(Ljavafx/scene/media/Media;)V

    iput-object v2, v1, Ljavafx/scene/media/Media;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 127
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method private getTrackWithID(J)Ljavafx/scene/media/Track;
    .locals 11

    .prologue
    .line 447
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/Media;
    move-wide v2, p1

    .local v2, "trackID":J
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/Media;->tracksBacking:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/media/Track;

    move-object v5, v6

    .line 448
    .local v5, "track":Ljavafx/scene/media/Track;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/media/Track;->getTrackID()J

    move-result-wide v6

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 449
    move-object v6, v5

    move-object v1, v6

    .line 452
    .end local v1    # "this":Ljavafx/scene/media/Media;
    .end local v5    # "track":Ljavafx/scene/media/Track;
    :goto_1
    return-object v1

    .line 451
    .restart local v1    # "this":Ljavafx/scene/media/Media;
    .restart local v5    # "track":Ljavafx/scene/media/Track;
    :cond_0
    goto :goto_0

    .line 452
    .end local v5    # "track":Ljavafx/scene/media/Track;
    :cond_1
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_1
.end method

.method private heightPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    .locals 7

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->height:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    .line 265
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "height"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/Media;->height:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 267
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->height:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method private runMetadataParser()V
    .locals 4

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/Media;->jfxLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/MediaManager;->getMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/media/Media;->jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

    .line 416
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media;->jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/Media;->metadataListener:Lcom/sun/media/jfxmedia/events/MetadataListener;

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/MetadataParser;->addListener(Lcom/sun/media/jfxmedia/events/MetadataListener;)V

    .line 417
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media;->jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

    invoke-interface {v2}, Lcom/sun/media/jfxmedia/MetadataParser;->startParser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/media/Media;->jfxParser:Lcom/sun/media/jfxmedia/MetadataParser;

    goto :goto_0
.end method

.method private setError(Ljavafx/scene/media/MediaException;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/media/MediaException;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/Media;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method private declared-synchronized updateMetadata(Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object/from16 v1, p1

    .local v1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v13, p0

    monitor-enter v13

    move-object v8, v1

    if-eqz v8, :cond_4

    .line 516
    move-object v8, v1

    :try_start_0
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v3, v8

    .line 517
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 518
    .local v4, "key":Ljava/lang/String;
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 519
    .local v5, "value":Ljava/lang/Object;
    move-object v8, v4

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    instance-of v8, v8, [B

    if-eqz v8, :cond_1

    .line 520
    move-object v8, v5

    check-cast v8, [B

    check-cast v8, [B

    move-object v6, v8

    .line 521
    .local v6, "imageData":[B
    new-instance v8, Ljavafx/scene/image/Image;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Ljavafx/scene/image/Image;-><init>(Ljava/io/InputStream;)V

    move-object v7, v8

    .line 522
    .local v7, "image":Ljavafx/scene/image/Image;
    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/scene/image/Image;->isError()Z

    move-result v8

    if-nez v8, :cond_0

    .line 523
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/media/Media;->metadataBacking:Ljavafx/collections/ObservableMap;

    const-string v9, "image"

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 525
    .line 533
    .end local v6    # "imageData":[B
    .end local v7    # "image":Ljavafx/scene/image/Image;
    :cond_0
    :goto_1
    goto :goto_0

    .line 525
    :cond_1
    move-object v8, v4

    const-string v9, "duration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_3

    .line 526
    new-instance v8, Ljavafx/util/Duration;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-direct {v9, v10, v11}, Ljavafx/util/Duration;-><init>(D)V

    move-object v6, v8

    .line 527
    .local v6, "d":Ljavafx/util/Duration;
    move-object v8, v6

    if-eqz v8, :cond_2

    .line 528
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/media/Media;->metadataBacking:Ljavafx/collections/ObservableMap;

    const-string v9, "duration"

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 530
    :cond_2
    goto :goto_1

    .line 531
    .end local v6    # "d":Ljavafx/util/Duration;
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/media/Media;->metadataBacking:Ljavafx/collections/ObservableMap;

    move-object v9, v4

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 535
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    monitor-exit v13

    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "this":Ljavafx/scene/media/Media;
    throw v0
.end method

.method private widthPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->width:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    .line 233
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "width"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/Media;->width:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 235
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->width:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method


# virtual methods
.method _setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/media/MediaException$Type;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Ljavafx/scene/media/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljavafx/scene/media/Media;->setError(Ljavafx/scene/media/MediaException;)V

    .line 512
    return-void
.end method

.method _updateMedia(Lcom/sun/media/jfxmedia/Media;)V
    .locals 18

    .prologue
    .line 459
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object/from16 v1, p1

    .local v1, "_media":Lcom/sun/media/jfxmedia/Media;
    move-object v12, v1

    :try_start_0
    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/Media;->getTracks()Ljava/util/List;

    move-result-object v12

    move-object v2, v12

    .line 461
    .local v2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/track/Track;>;"
    move-object v12, v2

    if-eqz v12, :cond_6

    .line 462
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v3, v12

    :goto_0
    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/media/jfxmedia/track/Track;

    move-object v4, v12

    .line 463
    .local v4, "trackElement":Lcom/sun/media/jfxmedia/track/Track;
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/track/Track;->getTrackID()J

    move-result-wide v12

    move-wide v5, v12

    .line 464
    .local v5, "trackID":J
    move-object v12, v0

    move-wide v13, v5

    invoke-direct {v12, v13, v14}, Ljavafx/scene/media/Media;->getTrackWithID(J)Ljavafx/scene/media/Track;

    move-result-object v12

    if-nez v12, :cond_3

    .line 465
    const/4 v12, 0x0

    move-object v7, v12

    .line 466
    .local v7, "newTrack":Ljavafx/scene/media/Track;
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v8, v12

    .line 467
    .local v8, "trackMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/media/jfxmedia/track/Track;->getName()Ljava/lang/String;

    move-result-object v13

    if-eq v12, v13, :cond_0

    .line 469
    move-object v12, v8

    const-string v13, "name"

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 471
    :cond_0
    const/4 v12, 0x0

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/media/jfxmedia/track/Track;->getLocale()Ljava/util/Locale;

    move-result-object v13

    if-eq v12, v13, :cond_1

    .line 472
    move-object v12, v8

    const-string v13, "locale"

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 474
    :cond_1
    move-object v12, v8

    const-string v13, "encoding"

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track;->getEncodingType()Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track$Encoding;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 475
    move-object v12, v8

    const-string v13, "enabled"

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track;->isEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 477
    move-object v12, v4

    instance-of v12, v12, Lcom/sun/media/jfxmedia/track/VideoTrack;

    if-eqz v12, :cond_4

    .line 478
    move-object v12, v4

    check-cast v12, Lcom/sun/media/jfxmedia/track/VideoTrack;

    move-object v9, v12

    .line 481
    .local v9, "vt":Lcom/sun/media/jfxmedia/track/VideoTrack;
    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/track/VideoTrack;->getFrameSize()Lcom/sun/media/jfxmedia/track/VideoResolution;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/track/VideoResolution;->getWidth()I

    move-result v12

    move v10, v12

    .line 482
    .local v10, "videoWidth":I
    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/track/VideoTrack;->getFrameSize()Lcom/sun/media/jfxmedia/track/VideoResolution;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/track/VideoResolution;->getHeight()I

    move-result v12

    move v11, v12

    .line 485
    .local v11, "videoHeight":I
    move-object v12, v0

    move v13, v10

    invoke-virtual {v12, v13}, Ljavafx/scene/media/Media;->setWidth(I)V

    .line 486
    move-object v12, v0

    move v13, v11

    invoke-virtual {v12, v13}, Ljavafx/scene/media/Media;->setHeight(I)V

    .line 488
    move-object v12, v8

    const-string v13, "video width"

    move v14, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 489
    move-object v12, v8

    const-string v13, "video height"

    move v14, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 491
    new-instance v12, Ljavafx/scene/media/VideoTrack;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track;->getTrackID()J

    move-result-wide v14

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v16}, Ljavafx/scene/media/VideoTrack;-><init>(JLjava/util/Map;)V

    move-object v7, v12

    .line 498
    .end local v9    # "vt":Lcom/sun/media/jfxmedia/track/VideoTrack;
    .end local v10    # "videoWidth":I
    .end local v11    # "videoHeight":I
    :cond_2
    :goto_1
    const/4 v12, 0x0

    move-object v13, v7

    if-eq v12, v13, :cond_3

    .line 499
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/Media;->tracksBacking:Ljavafx/collections/ObservableList;

    move-object v13, v7

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 502
    .end local v7    # "newTrack":Ljavafx/scene/media/Track;
    .end local v8    # "trackMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    goto/16 :goto_0

    .line 492
    .restart local v7    # "newTrack":Ljavafx/scene/media/Track;
    .restart local v8    # "trackMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    move-object v12, v4

    instance-of v12, v12, Lcom/sun/media/jfxmedia/track/AudioTrack;

    if-eqz v12, :cond_5

    .line 493
    new-instance v12, Ljavafx/scene/media/AudioTrack;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/track/Track;->getTrackID()J

    move-result-wide v14

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v16}, Ljavafx/scene/media/AudioTrack;-><init>(JLjava/util/Map;)V

    move-object v7, v12

    goto :goto_1

    .line 494
    :cond_5
    move-object v12, v4

    instance-of v12, v12, Lcom/sun/media/jfxmedia/track/SubtitleTrack;

    if-eqz v12, :cond_2

    .line 495
    new-instance v12, Ljavafx/scene/media/SubtitleTrack;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-wide v14, v5

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v16}, Ljavafx/scene/media/SubtitleTrack;-><init>(JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v12

    goto :goto_1

    .line 507
    .line 508
    .end local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/track/Track;>;"
    .end local v4    # "trackElement":Lcom/sun/media/jfxmedia/track/Track;
    .end local v5    # "trackID":J
    .end local v7    # "newTrack":Ljavafx/scene/media/Track;
    .end local v8    # "trackMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :goto_2
    return-void

    .line 504
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 506
    .local v2, "e":Ljava/lang/Exception;
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    sget-object v15, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/Throwable;)V

    invoke-direct {v12, v13}, Ljavafx/scene/media/Media;->setError(Ljavafx/scene/media/MediaException;)V

    goto :goto_2
.end method

.method public durationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/Media;->durationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public errorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/media/MediaException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/Media;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/Media;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->duration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getError()Ljavafx/scene/media/MediaException;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/Media;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/MediaException;

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->height:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/Media;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->height:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getMarkers()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->markers:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public final getMetadata()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->metadata:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public final getOnError()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->onError:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/Media;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->onError:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->source:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public final getTracks()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/media/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->tracks:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->width:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/Media;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->width:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    goto :goto_0
.end method

.method public heightProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/Media;->heightPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method public onErrorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->onError:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 154
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/Media$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/Media$2;-><init>(Ljavafx/scene/media/Media;)V

    iput-object v2, v1, Ljavafx/scene/media/Media;->onError:Ljavafx/beans/property/ObjectProperty;

    .line 179
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->onError:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method retrieveJfxLocator()Lcom/sun/media/jfxmedia/locator/Locator;
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media;->jfxLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method

.method final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/Media;->durationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method final setHeight(I)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/Media;->heightPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 249
    return-void
.end method

.method public final setOnError(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/Media;->onErrorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method final setWidth(I)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/Media;->widthPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 217
    return-void
.end method

.method public widthProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/Media;->widthPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media;
    return-object v0
.end method
