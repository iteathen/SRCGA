.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
.super Ljava/lang/Object;
.source "FXVKSkin.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;-><init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

.field final synthetic val$fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVK;)V
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->val$fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 488
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 489
    .local v3, "oldNode":Ljavafx/scene/Node;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->val$fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/FXVK;->getAttachedNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$002(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v5

    .line 490
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->val$fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$100()Lcom/sun/javafx/scene/control/skin/FXVK;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 491
    .line 550
    :goto_0
    return-void

    .line 494
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$200(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V

    .line 496
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 497
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 498
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$300(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 500
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$400(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 501
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$500(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 504
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v6

    if-eq v5, v6, :cond_3

    .line 505
    :cond_2
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$600()Ljavafx/stage/Popup;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/stage/Popup;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 506
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$600()Ljavafx/stage/Popup;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/stage/Popup;->hide()V

    .line 511
    :cond_3
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$600()Ljavafx/stage/Popup;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/stage/Popup;->isShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 512
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    .line 513
    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v5

    move-object v4, v5

    .line 515
    .local v4, "screenBounds":Ljavafx/geometry/Rectangle2D;
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$600()Ljavafx/stage/Popup;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->val$fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/FXVK;->prefWidth(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Popup;->setX(D)V

    .line 516
    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$700(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 518
    :cond_4
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$800()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 523
    :goto_1
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$600()Ljavafx/stage/Popup;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/stage/Popup;->show(Ljavafx/stage/Window;)V

    .line 526
    .end local v4    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_5
    move-object v5, v3

    if-eqz v5, :cond_6

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$700(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 527
    :cond_6
    # invokes: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->startSlideIn()V
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$900()V

    .line 530
    :cond_7
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkAdjustWindow:Z

    if-eqz v5, :cond_a

    .line 532
    move-object v5, v3

    if-eqz v5, :cond_8

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object v5, v3

    .line 533
    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v6

    if-eq v5, v6, :cond_9

    .line 534
    :cond_8
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 537
    :cond_9
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1100(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 549
    :cond_a
    :goto_2
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$702(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Z)Z

    move-result v5

    .line 550
    goto/16 :goto_0

    .line 521
    .restart local v4    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_b
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$800()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v6

    const-wide v8, 0x406e600000000000L    # 243.0

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto/16 :goto_1

    .line 540
    .end local v4    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_c
    move-object v5, v3

    if-eqz v5, :cond_d

    .line 541
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$300(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 543
    :cond_d
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1200(Z)V

    .line 545
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkAdjustWindow:Z

    if-eqz v5, :cond_a

    .line 546
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    goto :goto_2
.end method
