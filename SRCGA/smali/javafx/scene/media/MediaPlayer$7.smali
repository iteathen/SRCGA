.class Ljavafx/scene/media/MediaPlayer$7;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->startTimeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$7;
    const-string v1, "startTime"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$7;
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$7;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    monitor-enter v3

    .line 1091
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 1092
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1400(Ljavafx/scene/media/MediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1093
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$2300(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/util/Duration;

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/media/MediaPlayer;->access$2400(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;ZLjavafx/util/Duration;Z)V

    .line 1097
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$2600(Ljavafx/scene/media/MediaPlayer;)V

    .line 1099
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 1100
    return-void

    .line 1095
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$7;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaPlayer;->access$2502(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v3

    goto :goto_0

    .line 1099
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
