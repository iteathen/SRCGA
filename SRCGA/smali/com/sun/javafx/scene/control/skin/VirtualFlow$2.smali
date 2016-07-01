.class Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;
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
        "Ljavafx/scene/input/ScrollEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V
    .locals 4

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/ScrollEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->handle(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/ScrollEvent;)V
    .locals 14

    .prologue
    .line 535
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;"
    move-object v2, p1

    .local v2, "event":Ljavafx/scene/input/ScrollEvent;
    sget-boolean v10, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v10, :cond_0

    .line 536
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$300(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$400(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 537
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->startSBReleasedAnimation()V

    .line 543
    :cond_0
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 544
    .local v3, "virtualDelta":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 545
    sget-object v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaYUnits()Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 572
    .line 587
    :goto_0
    move-wide v10, v3

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 591
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-wide v11, v3

    neg-double v11, v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v10

    move-wide v5, v10

    .line 592
    .local v5, "result":D
    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 593
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 597
    .end local v5    # "result":D
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$000(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v10

    :goto_1
    move-object v5, v10

    .line 598
    .local v5, "nonVirtualBar":Ljavafx/scene/control/ScrollBar;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$700(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 599
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v10

    :goto_2
    move-wide v6, v10

    .line 600
    .local v6, "nonVirtualDelta":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    .line 601
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    move-wide v12, v6

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 602
    .local v8, "newValue":D
    move-wide v10, v8

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_9

    .line 603
    move-object v10, v5

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 609
    :goto_3
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 612
    .end local v6    # "nonVirtualDelta":D
    .end local v8    # "newValue":D
    :cond_2
    return-void

    .line 547
    .end local v5    # "nonVirtualBar":Ljavafx/scene/control/ScrollBar;
    :pswitch_0
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaY()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    mul-double/2addr v10, v12

    move-wide v3, v10

    .line 548
    goto :goto_0

    .line 551
    :pswitch_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$500(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 552
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$600(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)D

    move-result-wide v10

    move-wide v5, v10

    .line 565
    .local v5, "lineSize":D
    :goto_4
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    move-wide v12, v5

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 566
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v12

    move-wide v5, v10

    .line 569
    :cond_3
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaY()D

    move-result-wide v10

    move-wide v12, v5

    mul-double/2addr v10, v12

    move-wide v3, v10

    .line 570
    goto/16 :goto_0

    .line 557
    .end local v5    # "lineSize":D
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/IndexedCell;

    move-object v7, v10

    .line 558
    .local v7, "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v11, v7

    .line 559
    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v13, v7

    .line 560
    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    .line 561
    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    .line 562
    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    move-wide v5, v10

    .restart local v5    # "lineSize":D
    goto :goto_4

    .line 572
    .end local v5    # "lineSize":D
    .end local v7    # "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :pswitch_2
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v10

    move-wide v3, v10

    goto/16 :goto_0

    .line 575
    :cond_5
    sget-object v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$HorizontalTextScrollUnits:[I

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaXUnits()Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 580
    :pswitch_3
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v10

    move-wide v5, v10

    .line 581
    .local v5, "dx":D
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v10

    move-wide v7, v10

    .line 583
    .local v7, "dy":D
    move-wide v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-wide v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    move-wide v10, v5

    :goto_5
    move-wide v3, v10

    goto/16 :goto_0

    :cond_6
    move-wide v10, v7

    goto :goto_5

    .line 597
    .end local v5    # "dx":D
    .end local v7    # "dy":D
    :cond_7
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$100(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v10

    goto/16 :goto_1

    .line 599
    .local v5, "nonVirtualBar":Ljavafx/scene/control/ScrollBar;
    :cond_8
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v10

    goto/16 :goto_2

    .line 604
    .restart local v6    # "nonVirtualDelta":D
    .restart local v8    # "newValue":D
    :cond_9
    move-wide v10, v8

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-lez v10, :cond_a

    .line 605
    move-object v10, v5

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto/16 :goto_3

    .line 607
    :cond_a
    move-object v10, v5

    move-wide v11, v8

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto/16 :goto_3

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 575
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
