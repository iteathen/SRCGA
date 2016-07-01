.class Ljavafx/scene/media/MediaPlayer$3;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->autoPlayProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$3;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$3;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$3;
    const-string v1, "autoPlay"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$3;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v1}, Ljavafx/scene/media/MediaPlayer;->access$1100(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$3;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->play()V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$3;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$1202(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v1

    goto :goto_0
.end method
