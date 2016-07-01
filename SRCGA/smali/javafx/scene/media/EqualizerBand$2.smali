.class Ljavafx/scene/media/EqualizerBand$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "EqualizerBand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/EqualizerBand;->bandwidthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/EqualizerBand;


# direct methods
.method constructor <init>(Ljavafx/scene/media/EqualizerBand;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/EqualizerBand;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/EqualizerBand$2;->this$0:Ljavafx/scene/media/EqualizerBand;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand$2;->this$0:Ljavafx/scene/media/EqualizerBand;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$2;
    const-string v1, "bandwidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 11

    .prologue
    .line 170
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/EqualizerBand$2;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/EqualizerBand$2;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v6}, Ljavafx/scene/media/EqualizerBand;->access$000(Ljavafx/scene/media/EqualizerBand;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v2, v7

    monitor-enter v6

    .line 171
    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Ljavafx/scene/media/EqualizerBand$2;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v6}, Ljavafx/scene/media/EqualizerBand;->access$300(Ljavafx/scene/media/EqualizerBand;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    move-wide v3, v6

    .line 172
    .local v3, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/EqualizerBand$2;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v6}, Ljavafx/scene/media/EqualizerBand;->access$200(Ljavafx/scene/media/EqualizerBand;)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v6

    if-eqz v6, :cond_0

    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 173
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/EqualizerBand$2;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v6}, Ljavafx/scene/media/EqualizerBand;->access$200(Ljavafx/scene/media/EqualizerBand;)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v6

    move-wide v7, v3

    invoke-interface {v6, v7, v8}, Lcom/sun/media/jfxmedia/effects/EqualizerBand;->setBandwidth(D)V

    .line 175
    :cond_0
    move-object v6, v2

    monitor-exit v6

    .line 176
    return-void

    .line 175
    .end local v3    # "value":D
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
