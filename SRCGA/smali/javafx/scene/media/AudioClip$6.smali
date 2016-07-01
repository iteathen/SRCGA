.class Ljavafx/scene/media/AudioClip$6;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "AudioClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/AudioClip;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/AudioClip;


# direct methods
.method constructor <init>(Ljavafx/scene/media/AudioClip;I)V
    .locals 5

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/AudioClip;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/AudioClip$6;->this$0:Ljavafx/scene/media/AudioClip;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip$6;->this$0:Ljavafx/scene/media/AudioClip;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$6;
    const-string v1, "cycleCount"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$6;
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/AudioClip$6;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v3}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 403
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$6;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$600(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v2

    move v1, v2

    .line 404
    .local v1, "value":I
    const/4 v2, -0x1

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 405
    const/4 v2, 0x1

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 406
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$6;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v2

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmedia/AudioClip;->setLoopCount(I)V

    .line 411
    .end local v1    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 408
    .restart local v1    # "value":I
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$6;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmedia/AudioClip;->setLoopCount(I)V

    goto :goto_0
.end method
