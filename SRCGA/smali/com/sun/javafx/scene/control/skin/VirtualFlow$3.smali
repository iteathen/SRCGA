.class Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;
.super Ljava/lang/Object;
.source "VirtualFlow.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/VirtualFlow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/input/MouseEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V
    .locals 4

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 619
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;"
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$402(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)Z

    move-result v6

    .line 620
    sget-boolean v6, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v6, :cond_0

    .line 621
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->scrollBarOn()V

    .line 623
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isFocusTraversable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 632
    const/4 v6, 0x1

    move v3, v6

    .line 633
    .local v3, "doFocusRequest":Z
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v6

    move-object v4, v6

    .line 634
    .local v4, "focusOwner":Ljavafx/scene/Node;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 635
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v6

    move-object v5, v6

    .line 636
    .local v5, "parent":Ljavafx/scene/Parent;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 637
    move-object v6, v5

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 638
    const/4 v6, 0x0

    move v3, v6

    .line 645
    .end local v5    # "parent":Ljavafx/scene/Parent;
    :cond_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 646
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestFocus()V

    .line 650
    .end local v3    # "doFocusRequest":Z
    .end local v4    # "focusOwner":Ljavafx/scene/Node;
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$802(Lcom/sun/javafx/scene/control/skin/VirtualFlow;D)D

    move-result-wide v6

    .line 651
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$902(Lcom/sun/javafx/scene/control/skin/VirtualFlow;D)D

    move-result-wide v6

    .line 658
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$100(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/geometry/Bounds;->contains(DD)Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    .line 659
    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$000(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/geometry/Bounds;->contains(DD)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    .line 658
    :goto_1
    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$1002(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)Z

    move-result v6

    .line 660
    return-void

    .line 641
    .restart local v3    # "doFocusRequest":Z
    .restart local v4    # "focusOwner":Ljavafx/scene/Node;
    .restart local v5    # "parent":Ljavafx/scene/Parent;
    :cond_3
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 659
    .end local v3    # "doFocusRequest":Z
    .end local v4    # "focusOwner":Ljavafx/scene/Node;
    .end local v5    # "parent":Ljavafx/scene/Parent;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method
