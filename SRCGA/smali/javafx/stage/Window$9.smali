.class Ljavafx/stage/Window$9;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldVisible:Z

.field final synthetic this$0:Ljavafx/stage/Window;


# direct methods
.method constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 808
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 917
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$9;
    const-string v1, "showing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 13

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$9;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window$9;->get()Z

    move-result v3

    move v1, v3

    .line 813
    .local v1, "newVisible":Z
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/stage/Window$9;->oldVisible:Z

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 814
    .line 908
    :goto_0
    return-void

    .line 817
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/stage/Window$9;->oldVisible:Z

    if-nez v3, :cond_8

    move v3, v1

    if-eqz v3, :cond_8

    .line 818
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    new-instance v4, Ljavafx/stage/WindowEvent;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    sget-object v7, Ljavafx/stage/WindowEvent;->WINDOW_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/stage/WindowEvent;-><init>(Ljavafx/stage/Window;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->fireEvent(Ljavafx/event/Event;)V

    .line 823
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Ljavafx/stage/Window$9;->oldVisible:Z

    .line 824
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->impl_visibleChanging(Z)V

    .line 825
    move v3, v1

    if-eqz v3, :cond_9

    .line 826
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/stage/Window;->hasBeenVisible:Z

    .line 827
    # getter for: Ljavafx/stage/Window;->windowQueue:Lcom/sun/javafx/util/WeakReferenceQueue;
    invoke-static {}, Ljavafx/stage/Window;->access$700()Lcom/sun/javafx/util/WeakReferenceQueue;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/util/WeakReferenceQueue;->add(Ljava/lang/Object;)V

    .line 831
    :goto_2
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    move-object v2, v3

    .line 832
    .local v2, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v3, :cond_4

    .line 833
    move v3, v1

    if-eqz v3, :cond_c

    .line 834
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    if-nez v3, :cond_1

    .line 835
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    new-instance v4, Lcom/sun/javafx/stage/WindowPeerListener;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-direct {v5, v6}, Lcom/sun/javafx/stage/WindowPeerListener;-><init>(Ljavafx/stage/Window;)V

    iput-object v4, v3, Ljavafx/stage/Window;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    .line 839
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v4, v4, Ljavafx/stage/Window;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setTKStageListener(Lcom/sun/javafx/tk/TKStageListener;)V

    .line 841
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v4}, Ljavafx/stage/Window;->access$800(Ljavafx/stage/Window;)Ljavafx/stage/Window$TKBoundsConfigurator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->addStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 843
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 844
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->impl_initPeer()V

    .line 845
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v4}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->impl_getPeer()Lcom/sun/javafx/tk/TKScene;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 846
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->impl_preferredSize()V

    .line 850
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$400(Ljavafx/stage/Window;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$500(Ljavafx/stage/Window;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 851
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/stage/Window;->access$600(Ljavafx/stage/Window;Z)V

    .line 857
    :goto_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$900(Ljavafx/stage/Window;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$1000(Ljavafx/stage/Window;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 858
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->centerOnScreen()V

    .line 865
    :goto_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->applyBounds()V

    .line 867
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v4}, Ljavafx/stage/Window;->getOpacity()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setOpacity(F)V

    .line 869
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setVisible(Z)V

    .line 870
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    new-instance v4, Ljavafx/stage/WindowEvent;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    sget-object v7, Ljavafx/stage/WindowEvent;->WINDOW_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/stage/WindowEvent;-><init>(Ljavafx/stage/Window;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->fireEvent(Ljavafx/event/Event;)V

    .line 892
    :cond_4
    :goto_5
    move v3, v1

    if-eqz v3, :cond_5

    .line 893
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 895
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->impl_visibleChanged(Z)V

    .line 897
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$1100(Ljavafx/stage/Window;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 898
    move v3, v1

    if-eqz v3, :cond_6

    .line 902
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->sizeToScene()V

    .line 906
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/stage/Window;->access$1102(Ljavafx/stage/Window;Z)Z

    move-result v3

    .line 908
    :cond_7
    goto/16 :goto_0

    .line 820
    .end local v2    # "tk":Lcom/sun/javafx/tk/Toolkit;
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    new-instance v4, Ljavafx/stage/WindowEvent;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    sget-object v7, Ljavafx/stage/WindowEvent;->WINDOW_HIDING:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/stage/WindowEvent;-><init>(Ljavafx/stage/Window;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->fireEvent(Ljavafx/event/Event;)V

    goto/16 :goto_1

    .line 829
    :cond_9
    # getter for: Ljavafx/stage/Window;->windowQueue:Lcom/sun/javafx/util/WeakReferenceQueue;
    invoke-static {}, Ljavafx/stage/Window;->access$700()Lcom/sun/javafx/util/WeakReferenceQueue;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/util/WeakReferenceQueue;->remove(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 853
    .restart local v2    # "tk":Lcom/sun/javafx/tk/Toolkit;
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$800(Ljavafx/stage/Window;)Ljavafx/stage/Window$TKBoundsConfigurator;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    .line 854
    invoke-virtual {v4}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v6}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 853
    invoke-virtual/range {v3 .. v11}, Ljavafx/stage/Window$TKBoundsConfigurator;->setSize(DDDD)V

    goto/16 :goto_3

    .line 860
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v3}, Ljavafx/stage/Window;->access$800(Ljavafx/stage/Window;)Ljavafx/stage/Window$TKBoundsConfigurator;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v4}, Ljavafx/stage/Window;->getX()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v6}, Ljavafx/stage/Window;->getY()D

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljavafx/stage/Window$TKBoundsConfigurator;->setLocation(DDFF)V

    goto/16 :goto_4

    .line 872
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setVisible(Z)V

    .line 875
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    new-instance v4, Ljavafx/stage/WindowEvent;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    sget-object v7, Ljavafx/stage/WindowEvent;->WINDOW_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/stage/WindowEvent;-><init>(Ljavafx/stage/Window;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->fireEvent(Ljavafx/event/Event;)V

    .line 877
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 878
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 879
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->impl_disposePeer()V

    .line 880
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-virtual {v4}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Scene;)V

    .line 884
    :cond_d
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    invoke-static {v4}, Ljavafx/stage/Window;->access$800(Ljavafx/stage/Window;)Ljavafx/stage/Window$TKBoundsConfigurator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->removeStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 886
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKStage;->setTKStageListener(Lcom/sun/javafx/tk/TKStageListener;)V

    .line 889
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/Window$9;->this$0:Ljavafx/stage/Window;

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKStage;->close()V

    goto/16 :goto_5
.end method
