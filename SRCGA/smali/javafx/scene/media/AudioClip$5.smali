.class Ljavafx/scene/media/AudioClip$5;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "AudioClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/AudioClip;->priorityProperty()Ljavafx/beans/property/IntegerProperty;
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
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/AudioClip;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/AudioClip$5;->this$0:Ljavafx/scene/media/AudioClip;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip$5;->this$0:Ljavafx/scene/media/AudioClip;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$5;
    const-string v1, "priority"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClip$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClip$5;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$5;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 343
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioClip$5;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v1}, Ljavafx/scene/media/AudioClip;->access$000(Ljavafx/scene/media/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/AudioClip$5;->this$0:Ljavafx/scene/media/AudioClip;

    invoke-static {v2}, Ljavafx/scene/media/AudioClip;->access$500(Ljavafx/scene/media/AudioClip;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmedia/AudioClip;->setPriority(I)V

    .line 345
    :cond_0
    return-void
.end method
