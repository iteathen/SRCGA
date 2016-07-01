.class Ljavafx/scene/media/EqualizerBand$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "EqualizerBand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/EqualizerBand;->gainProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/EqualizerBand;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/EqualizerBand$3;->this$0:Ljavafx/scene/media/EqualizerBand;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/EqualizerBand$3;->this$0:Ljavafx/scene/media/EqualizerBand;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$3;
    const-string v1, "gain"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/EqualizerBand$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/EqualizerBand$3;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/EqualizerBand$3;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v3}, Ljavafx/scene/media/EqualizerBand;->access$000(Ljavafx/scene/media/EqualizerBand;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 223
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/EqualizerBand$3;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v3}, Ljavafx/scene/media/EqualizerBand;->access$200(Ljavafx/scene/media/EqualizerBand;)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/EqualizerBand$3;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v3}, Ljavafx/scene/media/EqualizerBand;->access$200(Ljavafx/scene/media/EqualizerBand;)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/EqualizerBand$3;->this$0:Ljavafx/scene/media/EqualizerBand;

    invoke-static {v4}, Ljavafx/scene/media/EqualizerBand;->access$400(Ljavafx/scene/media/EqualizerBand;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/sun/media/jfxmedia/effects/EqualizerBand;->setGain(D)V

    .line 226
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
