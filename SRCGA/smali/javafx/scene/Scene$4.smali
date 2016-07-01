.class Ljavafx/scene/Scene$4;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->windowPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/stage/Window;",
        ">;"
    }
.end annotation


# instance fields
.field private oldWindow:Ljavafx/stage/Window;

.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$4;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$4;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$4;
    const-string v1, "window"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$4;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene$4;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/stage/Window;

    move-object v1, v2

    .line 637
    .local v1, "newWindow":Ljavafx/stage/Window;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$4;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$700(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$KeyHandler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$4;->oldWindow:Ljavafx/stage/Window;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/Scene$KeyHandler;->access$800(Ljavafx/scene/Scene$KeyHandler;Ljavafx/stage/Window;Ljavafx/stage/Window;)V

    .line 638
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$4;->oldWindow:Ljavafx/stage/Window;

    if-eqz v2, :cond_0

    .line 639
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$4;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->impl_disposePeer()V

    .line 641
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 642
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$4;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->impl_initPeer()V

    .line 644
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$4;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$500(Ljavafx/scene/Scene;)V

    .line 646
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$4;->oldWindow:Ljavafx/stage/Window;

    .line 647
    return-void
.end method
