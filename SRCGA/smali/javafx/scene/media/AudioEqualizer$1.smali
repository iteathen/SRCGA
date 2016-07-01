.class Ljavafx/scene/media/AudioEqualizer$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "AudioEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/AudioEqualizer;->enabledProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/AudioEqualizer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/AudioEqualizer;)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/AudioEqualizer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/AudioEqualizer$1;->this$0:Ljavafx/scene/media/AudioEqualizer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/AudioEqualizer$1;->this$0:Ljavafx/scene/media/AudioEqualizer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioEqualizer$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer$1;
    const-string v1, "enabled"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioEqualizer$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer$1;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/AudioEqualizer$1;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v3}, Ljavafx/scene/media/AudioEqualizer;->access$000(Ljavafx/scene/media/AudioEqualizer;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 190
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/AudioEqualizer$1;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v3}, Ljavafx/scene/media/AudioEqualizer;->access$100(Ljavafx/scene/media/AudioEqualizer;)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 191
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/AudioEqualizer$1;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v3}, Ljavafx/scene/media/AudioEqualizer;->access$100(Ljavafx/scene/media/AudioEqualizer;)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/AudioEqualizer$1;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v4}, Ljavafx/scene/media/AudioEqualizer;->access$200(Ljavafx/scene/media/AudioEqualizer;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/effects/AudioEqualizer;->setEnabled(Z)V

    .line 193
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 194
    return-void

    .line 193
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
