.class Ljavafx/scene/media/Media$1;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/Media;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/media/MediaException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/Media;


# direct methods
.method constructor <init>(Ljavafx/scene/media/Media;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/Media;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/Media$1;->this$0:Ljavafx/scene/media/Media;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media$1;->this$0:Ljavafx/scene/media/Media;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$1;
    const-string v1, "error"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Media$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media$1;->this$0:Ljavafx/scene/media/Media;

    invoke-virtual {v1}, Ljavafx/scene/media/Media;->getOnError()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Media$1;->this$0:Ljavafx/scene/media/Media;

    invoke-virtual {v1}, Ljavafx/scene/media/Media;->getOnError()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    return-void
.end method
