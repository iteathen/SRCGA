.class final Ljavafx/stage/Window$SceneModel;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SceneModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/Scene;",
        ">;"
    }
.end annotation


# instance fields
.field private oldScene:Ljavafx/scene/Scene;

.field final synthetic this$0:Ljavafx/stage/Window;


# direct methods
.method private constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$SceneModel;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/stage/Window;Ljavafx/stage/Window$1;)V
    .locals 5

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$SceneModel;
    move-object v1, p1

    .local v1, "x0":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "x1":Ljavafx/stage/Window$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/stage/Window$SceneModel;-><init>(Ljavafx/stage/Window;)V

    return-void
.end method

.method private updatePeerScene(Lcom/sun/javafx/tk/TKScene;)V
    .locals 4

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$SceneModel;
    move-object v1, p1

    .local v1, "tkScene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    iget-object v2, v2, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    .line 596
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    iget-object v2, v2, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStage;->setScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 598
    :cond_0
    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$SceneModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$SceneModel;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$SceneModel;
    const-string v1, "scene"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$SceneModel;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$SceneModel;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window$SceneModel;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Scene;

    move-object v1, v3

    .line 539
    .local v1, "newScene":Ljavafx/scene/Scene;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->oldScene:Ljavafx/scene/Scene;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 540
    .line 581
    :goto_0
    return-void

    .line 542
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v3, :cond_1

    .line 543
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 546
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/stage/Window$SceneModel;->updatePeerScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 548
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->oldScene:Ljavafx/scene/Scene;

    if-eqz v3, :cond_2

    .line 549
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->oldScene:Ljavafx/scene/Scene;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->impl_setWindow(Ljavafx/stage/Window;)V

    .line 550
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$SceneModel;->oldScene:Ljavafx/scene/Scene;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Scene;)V

    .line 552
    :cond_2
    move-object v3, v1

    if-eqz v3, :cond_5

    .line 553
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    move-object v2, v3

    .line 554
    .local v2, "oldWindow":Ljavafx/stage/Window;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 558
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->setScene(Ljavafx/scene/Scene;)V

    .line 563
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->impl_setWindow(Ljavafx/stage/Window;)V

    .line 565
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->impl_getPeer()Lcom/sun/javafx/tk/TKScene;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/stage/Window$SceneModel;->updatePeerScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 570
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 571
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    .line 573
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$400(Ljavafx/stage/Window;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$500(Ljavafx/stage/Window;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 574
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->impl_preferredSize()V

    .line 575
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$SceneModel;->this$0:Ljavafx/stage/Window;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/stage/Window;->access$600(Ljavafx/stage/Window;Z)V

    .line 580
    .end local v2    # "oldWindow":Ljavafx/stage/Window;
    :cond_5
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/stage/Window$SceneModel;->oldScene:Ljavafx/scene/Scene;

    .line 581
    goto/16 :goto_0
.end method
