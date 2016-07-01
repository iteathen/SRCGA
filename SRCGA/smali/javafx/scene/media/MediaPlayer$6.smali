.class Ljavafx/scene/media/MediaPlayer$6;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->balanceProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 938
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$6;
    const-string v1, "balance"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 11

    .prologue
    .line 942
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$6;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v1, v4

    monitor-enter v3

    .line 943
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 944
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1400(Ljavafx/scene/media/MediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1500(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$2100(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Ljavafx/scene/media/MediaPlayer;->access$1700(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setBalance(F)V

    .line 950
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 951
    return-void

    .line 947
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$6;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaPlayer;->access$2202(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v3

    goto :goto_0

    .line 950
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
