.class public final Ljavafx/scene/media/AudioEqualizer;
.super Ljava/lang/Object;
.source "AudioEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/media/AudioEqualizer$Bands;
    }
.end annotation


# static fields
.field public static final MAX_NUM_BANDS:I = 0x40


# instance fields
.field private final bands:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/media/EqualizerBand;",
            ">;"
        }
    .end annotation
.end field

.field private final disposeLock:Ljava/lang/Object;

.field private enabled:Ljavafx/beans/property/BooleanProperty;

.field private jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;


# direct methods
.method constructor <init>()V
    .locals 15

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioEqualizer;
    move-object v2, v1

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    .line 58
    move-object v2, v1

    new-instance v3, Ljava/lang/Object;

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Ljavafx/scene/media/AudioEqualizer;->disposeLock:Ljava/lang/Object;

    .line 102
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/AudioEqualizer$Bands;

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/media/AudioEqualizer$Bands;-><init>(Ljavafx/scene/media/AudioEqualizer;)V

    iput-object v3, v2, Ljavafx/scene/media/AudioEqualizer;->bands:Ljavafx/collections/ObservableList;

    .line 105
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/AudioEqualizer;->bands:Ljavafx/collections/ObservableList;

    const/16 v3, 0xa

    new-array v3, v3, [Ljavafx/scene/media/EqualizerBand;

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x0

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    const-wide/high16 v10, 0x4033000000000000L    # 19.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x1

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    const-wide v10, 0x4043800000000000L    # 39.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x2

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x405f400000000000L    # 125.0

    const-wide v10, 0x4053800000000000L    # 78.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x3

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x406f400000000000L    # 250.0

    const-wide v10, 0x4063800000000000L    # 156.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x4

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x407f400000000000L    # 500.0

    const-wide v10, 0x4073800000000000L    # 312.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x5

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide v10, 0x4083880000000000L    # 625.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x6

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x409f400000000000L    # 2000.0

    const-wide v10, 0x4093880000000000L    # 1250.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x7

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x40af400000000000L    # 4000.0

    const-wide v10, 0x40a3880000000000L    # 2500.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/16 v5, 0x8

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x40bf400000000000L    # 8000.0

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/16 v5, 0x9

    new-instance v6, Ljavafx/scene/media/EqualizerBand;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide v8, 0x40cf400000000000L    # 16000.0

    const-wide v10, 0x40c3880000000000L    # 10000.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/media/EqualizerBand;-><init>(DDD)V

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 115
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/media/AudioEqualizer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioEqualizer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->disposeLock:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioEqualizer;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/media/AudioEqualizer;)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioEqualizer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioEqualizer;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/media/AudioEqualizer;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/AudioEqualizer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->enabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/AudioEqualizer;
    return-object v0
.end method


# virtual methods
.method public enabledProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->enabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/AudioEqualizer$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/AudioEqualizer$1;-><init>(Ljavafx/scene/media/AudioEqualizer;)V

    iput-object v2, v1, Ljavafx/scene/media/AudioEqualizer;->enabled:Ljavafx/beans/property/BooleanProperty;

    .line 207
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->enabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioEqualizer;
    return-object v0
.end method

.method public final getBands()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/media/EqualizerBand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->bands:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioEqualizer;
    return-object v0
.end method

.method public final isEnabled()Z
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->enabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioEqualizer;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/AudioEqualizer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer;->enabled:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method setAudioEqualizer(Lcom/sun/media/jfxmedia/effects/AudioEqualizer;)V
    .locals 16

    .prologue
    .line 123
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioEqualizer;
    move-object/from16 v2, p1

    .local v2, "jfxEqualizer":Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer;->disposeLock:Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v3, v9

    monitor-enter v8

    .line 124
    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-object v9, v2

    if-ne v8, v9, :cond_0

    .line 125
    move-object v8, v3

    monitor-exit v8

    .line 157
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    if-eqz v8, :cond_2

    move-object v8, v2

    if-nez v8, :cond_2

    .line 129
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/sun/media/jfxmedia/effects/AudioEqualizer;->setEnabled(Z)V

    .line 130
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer;->bands:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/media/EqualizerBand;

    move-object v5, v8

    .line 131
    .local v5, "band":Ljavafx/scene/media/EqualizerBand;
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/media/EqualizerBand;->setJfxBand(Lcom/sun/media/jfxmedia/effects/EqualizerBand;)V

    .line 132
    goto :goto_1

    .line 133
    .end local v5    # "band":Ljavafx/scene/media/EqualizerBand;
    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    .line 134
    move-object v8, v3

    monitor-exit v8

    goto :goto_0

    .line 137
    :cond_2
    move-object v8, v1

    move-object v9, v2

    iput-object v9, v8, Ljavafx/scene/media/AudioEqualizer;->jfxEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    .line 140
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/media/AudioEqualizer;->isEnabled()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/sun/media/jfxmedia/effects/AudioEqualizer;->setEnabled(Z)V

    .line 142
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer;->bands:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_2
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/media/EqualizerBand;

    move-object v5, v8

    .line 143
    .restart local v5    # "band":Ljavafx/scene/media/EqualizerBand;
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/media/EqualizerBand;->getBandwidth()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 144
    move-object v8, v2

    move-object v9, v5

    .line 145
    invoke-virtual {v9}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v9

    move-object v11, v5

    .line 146
    invoke-virtual {v11}, Ljavafx/scene/media/EqualizerBand;->getBandwidth()D

    move-result-wide v11

    move-object v13, v5

    .line 147
    invoke-virtual {v13}, Ljavafx/scene/media/EqualizerBand;->getGain()D

    move-result-wide v13

    .line 145
    invoke-interface/range {v8 .. v14}, Lcom/sun/media/jfxmedia/effects/AudioEqualizer;->addBand(DDD)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v8

    move-object v6, v8

    .line 150
    .local v6, "jfxBand":Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljavafx/scene/media/EqualizerBand;->setJfxBand(Lcom/sun/media/jfxmedia/effects/EqualizerBand;)V

    .line 151
    .line 155
    .end local v6    # "jfxBand":Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    :goto_3
    goto :goto_2

    .line 152
    :cond_3
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Center frequency ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] and bandwidth ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    .line 153
    invoke-virtual {v10}, Ljavafx/scene/media/EqualizerBand;->getBandwidth()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] must be greater than 0."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-static {v8, v9}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    goto :goto_3

    .line 156
    .end local v5    # "band":Ljavafx/scene/media/EqualizerBand;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8

    :cond_4
    move-object v8, v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    goto/16 :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/AudioEqualizer;->enabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 173
    return-void
.end method
