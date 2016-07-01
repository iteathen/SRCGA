.class public final Ljavafx/scene/media/AudioClip;
.super Ljava/lang/Object;
.source "AudioClip.java"


# static fields
.field public static final INDEFINITE:I = -0x1


# instance fields
.field private audioClip:Lcom/sun/media/jfxmedia/AudioClip;

.field private balance:Ljavafx/beans/property/DoubleProperty;

.field private cycleCount:Ljavafx/beans/property/IntegerProperty;

.field private pan:Ljavafx/beans/property/DoubleProperty;

.field private priority:Ljavafx/beans/property/IntegerProperty;

.field private rate:Ljavafx/beans/property/DoubleProperty;

.field private sourceURL:Ljava/lang/String;

.field private volume:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-object v1, p1

    .local v1, "source":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v4, v1

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    move-object v2, v4

    .line 81
    .local v2, "srcURI":Ljava/net/URI;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/media/AudioClip;->sourceURL:Ljava/lang/String;

    .line 83
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Lcom/sun/media/jfxmedia/AudioClip;->load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    .line 93
    return-void

    .line 84
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 85
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 86
    .end local v3    # "use":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 87
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v4, Ljavafx/scene/media/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    throw v4

    .line 88
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 89
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljavafx/scene/media/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    throw v4

    .line 90
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 91
    .local v3, "me":Lcom/sun/media/jfxmedia/MediaException;
    new-instance v4, Ljavafx/scene/media/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->volume:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->balance:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->rate:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->pan:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->priority:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method


# virtual methods
.method public balanceProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 182
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->balance:Ljavafx/beans/property/DoubleProperty;

    if-ne v2, v3, :cond_0

    .line 183
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/AudioClip$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/AudioClip$2;-><init>(Ljavafx/scene/media/AudioClip;D)V

    iput-object v3, v2, Ljavafx/scene/media/AudioClip;->balance:Ljavafx/beans/property/DoubleProperty;

    .line 202
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->balance:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-object v1
.end method

.method public cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-ne v1, v2, :cond_0

    .line 399
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/AudioClip$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/AudioClip$6;-><init>(Ljavafx/scene/media/AudioClip;I)V

    iput-object v2, v1, Ljavafx/scene/media/AudioClip;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    .line 424
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method public getBalance()D
    .locals 4

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->balance:Ljavafx/beans/property/DoubleProperty;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->balance:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCycleCount()I
    .locals 3

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPan()D
    .locals 4

    .prologue
    .line 282
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->pan:Ljavafx/beans/property/DoubleProperty;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->pan:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPriority()I
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->priority:Ljavafx/beans/property/IntegerProperty;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->priority:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRate()D
    .locals 4

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->rate:Ljavafx/beans/property/DoubleProperty;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->rate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->sourceURL:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method public final getVolume()D
    .locals 4

    .prologue
    .line 128
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->volume:Ljavafx/beans/property/DoubleProperty;

    if-ne v2, v3, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->volume:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/AudioClip;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/AudioClip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public panProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 285
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->pan:Ljavafx/beans/property/DoubleProperty;

    if-ne v2, v3, :cond_0

    .line 286
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/AudioClip$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/AudioClip$4;-><init>(Ljavafx/scene/media/AudioClip;D)V

    iput-object v3, v2, Ljavafx/scene/media/AudioClip;->pan:Ljavafx/beans/property/DoubleProperty;

    .line 305
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->pan:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-object v1
.end method

.method public play()V
    .locals 3

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    if-eq v1, v2, :cond_0

    .line 431
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/AudioClip;->play()V

    .line 433
    :cond_0
    return-void
.end method

.method public play(D)V
    .locals 7

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-wide v1, p1

    .local v1, "volume":D
    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    if-eq v3, v4, :cond_0

    .line 442
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/media/jfxmedia/AudioClip;->play(D)V

    .line 444
    :cond_0
    return-void
.end method

.method public play(DDDDI)V
    .locals 23

    .prologue
    .line 464
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    move-wide/from16 v2, p1

    .local v2, "volume":D
    move-wide/from16 v4, p3

    .local v4, "balance":D
    move-wide/from16 v6, p5

    .local v6, "rate":D
    move-wide/from16 v8, p7

    .local v8, "pan":D
    move/from16 v10, p9

    .local v10, "priority":I
    const/4 v11, 0x0

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    if-eq v11, v12, :cond_0

    .line 465
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/media/jfxmedia/AudioClip;->loopCount()I

    move-result v20

    move/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Lcom/sun/media/jfxmedia/AudioClip;->play(DDDDII)V

    .line 467
    :cond_0
    return-void
.end method

.method public priorityProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->priority:Ljavafx/beans/property/IntegerProperty;

    if-ne v1, v2, :cond_0

    .line 339
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/AudioClip$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/AudioClip$5;-><init>(Ljavafx/scene/media/AudioClip;I)V

    iput-object v2, v1, Ljavafx/scene/media/AudioClip;->priority:Ljavafx/beans/property/IntegerProperty;

    .line 358
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->priority:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip;
    return-object v0
.end method

.method public rateProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 232
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/AudioClip;->rate:Ljavafx/beans/property/DoubleProperty;

    if-ne v2, v3, :cond_0

    .line 233
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/AudioClip$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/AudioClip$3;-><init>(Ljavafx/scene/media/AudioClip;D)V

    iput-object v3, v2, Ljavafx/scene/media/AudioClip;->rate:Ljavafx/beans/property/DoubleProperty;

    .line 252
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->rate:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-object v1
.end method

.method public setBalance(D)V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-wide v1, p1

    .local v1, "balance":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/AudioClip;->balanceProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 171
    return-void
.end method

.method public setCycleCount(I)V
    .locals 4

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/AudioClip;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 387
    return-void
.end method

.method public setPan(D)V
    .locals 7

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-wide v1, p1

    .local v1, "pan":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/AudioClip;->panProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 274
    return-void
.end method

.method public setPriority(I)V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move v1, p1

    .local v1, "priority":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/AudioClip;->priorityProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 327
    return-void
.end method

.method public setRate(D)V
    .locals 7

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-wide v1, p1

    .local v1, "rate":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/AudioClip;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 221
    return-void
.end method

.method public final setVolume(D)V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/AudioClip;->volumeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    if-eq v1, v2, :cond_0

    .line 483
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip;->audioClip:Lcom/sun/media/jfxmedia/AudioClip;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/AudioClip;->stop()V

    .line 485
    :cond_0
    return-void
.end method

.method public volumeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 131
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioClip;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->volume:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 132
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/AudioClip$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/AudioClip$1;-><init>(Ljavafx/scene/media/AudioClip;D)V

    iput-object v3, v2, Ljavafx/scene/media/AudioClip;->volume:Ljavafx/beans/property/DoubleProperty;

    .line 151
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioClip;->volume:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/AudioClip;
    return-object v1
.end method
