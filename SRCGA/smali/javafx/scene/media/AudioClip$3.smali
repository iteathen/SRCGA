.class Ljavafx/scene/media/AudioClip$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "AudioClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/AudioClip;->rateProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/AudioClip;


# direct methods
.method constructor <init>(Ljavafx/scene/media/AudioClip;D)V
    .locals 8

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/AudioClip;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/media/AudioClip$3;->this$0:Ljavafx/scene/media/AudioClip;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip$3;->this$0:Ljavafx/scene/media/AudioClip;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$3;
    const-string v1, "rate"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$3;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$3;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 237
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip$3;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v1}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$3;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$300(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmedia/AudioClip;->setPlaybackRate(D)V

    .line 239
    :cond_0
    return-void
.end method
