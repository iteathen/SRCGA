.class Ljavafx/scene/media/MediaPlayer$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->onErrorProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$2;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$2;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$2;
    const-string v1, "onError"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$2;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$2;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$2;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getError()Ljavafx/scene/media/MediaException;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 620
    :cond_0
    return-void
.end method
