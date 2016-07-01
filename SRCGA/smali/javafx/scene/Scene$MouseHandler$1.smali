.class Ljavafx/scene/Scene$MouseHandler$1;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene$MouseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Scene$MouseHandler;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene$MouseHandler;)V
    .locals 4

    .prologue
    .line 3518
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Scene$MouseHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler$1;->this$1:Ljavafx/scene/Scene$MouseHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler$1;->this$1:Ljavafx/scene/Scene$MouseHandler;

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v1}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler$1;->this$1:Ljavafx/scene/Scene$MouseHandler;

    invoke-static {v1}, Ljavafx/scene/Scene$MouseHandler;->access$7700(Ljavafx/scene/Scene$MouseHandler;)Ljavafx/scene/input/MouseEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3525
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler$1;->this$1:Ljavafx/scene/Scene$MouseHandler;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler$1;->this$1:Ljavafx/scene/Scene$MouseHandler;

    invoke-static {v2}, Ljavafx/scene/Scene$MouseHandler;->access$7700(Ljavafx/scene/Scene$MouseHandler;)Ljavafx/scene/input/MouseEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ljavafx/scene/Scene$MouseHandler;->access$1500(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/input/MouseEvent;Z)V

    .line 3527
    :cond_0
    return-void
.end method
