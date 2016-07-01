.class Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;
.super Ljava/lang/Object;
.source "ContextMenuContent.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->initialize()V
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
        "Ljavafx/scene/input/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 4

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->handle(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$3;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 545
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->isConsumed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 546
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 547
    .local v2, "ownerNode":Ljavafx/scene/Node;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v4, :cond_5

    .line 549
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 550
    .local v3, "parent":Ljavafx/scene/Parent;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    if-nez v4, :cond_3

    .line 551
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 497
    .end local v2    # "ownerNode":Ljavafx/scene/Node;
    .end local v3    # "parent":Ljavafx/scene/Parent;
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_1

    .line 498
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$400(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0

    .line 500
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/KeyEvent;)V

    .line 502
    goto :goto_0

    .line 504
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_2

    .line 505
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0

    .line 507
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$400(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/KeyEvent;)V

    .line 509
    goto :goto_0

    .line 511
    :pswitch_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 512
    goto :goto_0

    .line 519
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 520
    .restart local v2    # "ownerNode":Ljavafx/scene/Node;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    if-nez v4, :cond_0

    .line 521
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 522
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto/16 :goto_0

    .line 527
    .end local v2    # "ownerNode":Ljavafx/scene/Node;
    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$700(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    .line 528
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 529
    goto/16 :goto_0

    .line 532
    :pswitch_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$800(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    .line 533
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 534
    goto/16 :goto_0

    .line 538
    :pswitch_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$900(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    .line 539
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 540
    goto/16 :goto_0

    .line 553
    .restart local v2    # "ownerNode":Ljavafx/scene/Node;
    .restart local v3    # "parent":Ljavafx/scene/Parent;
    :cond_3
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    if-eqz v4, :cond_4

    .line 554
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getOnKeyPressed()Ljavafx/event/EventHandler;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 556
    .line 564
    .end local v2    # "ownerNode":Ljavafx/scene/Node;
    .end local v3    # "parent":Ljavafx/scene/Parent;
    :cond_4
    :goto_2
    return-void

    .line 556
    .restart local v2    # "ownerNode":Ljavafx/scene/Node;
    :cond_5
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    if-eqz v4, :cond_4

    .line 558
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getMenuBarSkin()Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v4

    move-object v3, v4

    .line 559
    .local v3, "mbs":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v4, v3

    if-eqz v4, :cond_4

    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getKeyEventHandler()Ljavafx/event/EventHandler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 560
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getKeyEventHandler()Ljavafx/event/EventHandler;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_2

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
