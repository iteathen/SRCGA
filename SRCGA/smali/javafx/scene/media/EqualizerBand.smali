.class public final Ljavafx/scene/media/EqualizerBand;
.super Ljava/lang/Object;
.source "EqualizerBand.java"


# static fields
.field public static final MAX_GAIN:D = 12.0

.field public static final MIN_GAIN:D = -24.0


# instance fields
.field private bandwidth:Ljavafx/beans/property/DoubleProperty;

.field private centerFrequency:Ljavafx/beans/property/DoubleProperty;

.field private final disposeLock:Ljava/lang/Object;

.field private gain:Ljavafx/beans/property/DoubleProperty;

.field private jfxBand:Lcom/sun/media/jfxmedia/effects/EqualizerBand;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ljavafx/scene/media/EqualizerBand;->disposeLock:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-wide v1, p1

    .local v1, "centerFrequency":D
    move-wide v3, p3

    .local v3, "bandwidth":D
    move-wide/from16 v5, p5

    .local v5, "gain":D
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v7, v0

    new-instance v8, Ljava/lang/Object;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v8, v7, Ljavafx/scene/media/EqualizerBand;->disposeLock:Ljava/lang/Object;

    .line 74
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/media/EqualizerBand;->setCenterFrequency(D)V

    .line 75
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/media/EqualizerBand;->setBandwidth(D)V

    .line 76
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/media/EqualizerBand;->setGain(D)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/media/EqualizerBand;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->disposeLock:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/media/EqualizerBand;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->centerFrequency:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/media/EqualizerBand;)Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->jfxBand:Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/media/EqualizerBand;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->bandwidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/media/EqualizerBand;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->gain:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method


# virtual methods
.method public bandwidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->bandwidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 166
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/EqualizerBand$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/EqualizerBand$2;-><init>(Ljavafx/scene/media/EqualizerBand;)V

    iput-object v2, v1, Ljavafx/scene/media/EqualizerBand;->bandwidth:Ljavafx/beans/property/DoubleProperty;

    .line 189
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->bandwidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method public centerFrequencyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->centerFrequency:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 115
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/EqualizerBand$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/EqualizerBand$1;-><init>(Ljavafx/scene/media/EqualizerBand;)V

    iput-object v2, v1, Ljavafx/scene/media/EqualizerBand;->centerFrequency:Ljavafx/beans/property/DoubleProperty;

    .line 138
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->centerFrequency:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method public gainProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->gain:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/EqualizerBand$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/EqualizerBand$3;-><init>(Ljavafx/scene/media/EqualizerBand;)V

    iput-object v2, v1, Ljavafx/scene/media/EqualizerBand;->gain:Ljavafx/beans/property/DoubleProperty;

    .line 240
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand;->gain:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand;
    return-object v0
.end method

.method public final getBandwidth()D
    .locals 4

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/EqualizerBand;->bandwidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/EqualizerBand;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/EqualizerBand;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/EqualizerBand;->bandwidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getCenterFrequency()D
    .locals 4

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/EqualizerBand;->centerFrequency:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/EqualizerBand;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/EqualizerBand;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/EqualizerBand;->centerFrequency:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getGain()D
    .locals 4

    .prologue
    .line 213
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/EqualizerBand;->gain:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/EqualizerBand;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/EqualizerBand;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/EqualizerBand;->gain:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final setBandwidth(D)V
    .locals 7

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/EqualizerBand;->bandwidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 154
    return-void
.end method

.method public final setCenterFrequency(D)V
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/EqualizerBand;->centerFrequencyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 103
    return-void
.end method

.method public final setGain(D)V
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/EqualizerBand;->gainProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 206
    return-void
.end method

.method setJfxBand(Lcom/sun/media/jfxmedia/effects/EqualizerBand;)V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand;
    move-object v1, p1

    .local v1, "jfxBand":Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/EqualizerBand;->disposeLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 86
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Ljavafx/scene/media/EqualizerBand;->jfxBand:Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    .line 87
    move-object v4, v2

    monitor-exit v4

    .line 88
    return-void

    .line 87
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
