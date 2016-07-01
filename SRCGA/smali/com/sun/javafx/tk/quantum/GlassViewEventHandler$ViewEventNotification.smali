.class Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
.super Ljava/lang/Object;
.source "GlassViewEventHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewEventNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field time:J

.field type:I

.field view:Lcom/sun/glass/ui/View;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)V
    .locals 4

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;)V
    .locals 5

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->lambda$run$349()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private synthetic lambda$run$349()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/ViewScene;->updateSceneState()V

    .line 783
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 9

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-nez v4, :cond_0

    .line 757
    const/4 v4, 0x0

    move-object v0, v4

    .line 815
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    :goto_0
    return-object v0

    .line 759
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->type:I

    sparse-switch v4, :sswitch_data_0

    .line 813
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleViewEvent: unhandled type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v4

    move-object v1, v4

    .line 762
    .local v1, "w":Lcom/sun/glass/ui/Window;
    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getMinimumWidth()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v5}, Lcom/sun/glass/ui/View;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 764
    .line 815
    .end local v1    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 766
    .restart local v1    # "w":Lcom/sun/glass/ui/Window;
    :cond_2
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->drawInPaint:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 767
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v4

    move-object v2, v4

    .line 768
    .local v2, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->isApplet()Z

    move-result v4

    if-nez v4, :cond_3

    .line 769
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$900(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/PaintCollector;->liveRepaintRenderJob(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    .line 772
    .end local v2    # "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->entireSceneNeedsRepaint()V

    .line 773
    goto :goto_1

    .line 776
    .end local v1    # "w":Lcom/sun/glass/ui/Window;
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v4

    move-object v1, v4

    .line 777
    .restart local v1    # "w":Lcom/sun/glass/ui/Window;
    move-object v4, v1

    if-nez v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    move v2, v4

    .line 778
    .local v2, "pScale":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v5}, Lcom/sun/glass/ui/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move v6, v2

    div-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    .line 779
    invoke-virtual {v6}, Lcom/sun/glass/ui/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move v7, v2

    div-float/2addr v6, v7

    .line 778
    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/tk/TKSceneListener;->changedSize(FF)V

    .line 780
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->entireSceneNeedsRepaint()V

    .line 781
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    .line 785
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->liveResize:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 786
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v4

    move-object v3, v4

    .line 787
    .local v3, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v4, v3

    if-eqz v4, :cond_4

    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->isApplet()Z

    move-result v4

    if-nez v4, :cond_4

    .line 788
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$900(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/PaintCollector;->liveRepaintRenderJob(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    .line 790
    :cond_4
    goto/16 :goto_1

    .line 777
    .end local v2    # "pScale":F
    .end local v3    # "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v4

    goto :goto_2

    .line 796
    .end local v1    # "w":Lcom/sun/glass/ui/Window;
    :sswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v4

    move-object v1, v4

    .line 797
    .restart local v1    # "w":Lcom/sun/glass/ui/Window;
    move-object v4, v1

    if-nez v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    move v2, v4

    .line 798
    .restart local v2    # "pScale":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v5}, Lcom/sun/glass/ui/View;->getX()I

    move-result v5

    int-to-float v5, v5

    move v6, v2

    div-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->view:Lcom/sun/glass/ui/View;

    .line 799
    invoke-virtual {v6}, Lcom/sun/glass/ui/View;->getY()I

    move-result v6

    int-to-float v6, v6

    move v7, v2

    div-float/2addr v6, v7

    .line 798
    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/tk/TKSceneListener;->changedLocation(FF)V

    .line 800
    goto/16 :goto_1

    .line 797
    .end local v2    # "pScale":F
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v4

    goto :goto_3

    .line 804
    .end local v1    # "w":Lcom/sun/glass/ui/Window;
    :sswitch_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 805
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$ViewEventNotification;->type:I

    const/16 v6, 0x1af

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->fullscreenChanged(Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 811
    :sswitch_4
    goto/16 :goto_1

    .line 759
    nop

    :sswitch_data_0
    .sparse-switch
        0x19b -> :sswitch_4
        0x19c -> :sswitch_4
        0x1a5 -> :sswitch_0
        0x1a6 -> :sswitch_1
        0x1a7 -> :sswitch_2
        0x1af -> :sswitch_3
        0x1b0 -> :sswitch_3
    .end sparse-switch
.end method
