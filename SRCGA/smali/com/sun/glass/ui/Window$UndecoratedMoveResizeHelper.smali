.class Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndecoratedMoveResizeHelper"
.end annotation


# instance fields
.field inMove:Z

.field inResize:Z

.field moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

.field resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

.field startHeight:I

.field startMouseX:I

.field startMouseY:I

.field startWidth:I

.field startX:I

.field startY:I

.field final synthetic this$0:Lcom/sun/glass/ui/Window;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/Window;)V
    .locals 7

    .prologue
    .line 1412
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1402
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1403
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1405
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    .line 1406
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    .line 1413
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/Window$TrackingRectangle;-><init>(Lcom/sun/glass/ui/Window$1;)V

    iput-object v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1414
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/Window$TrackingRectangle;-><init>(Lcom/sun/glass/ui/Window$1;)V

    iput-object v3, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1415
    return-void
.end method


# virtual methods
.method deltaMove(II)V
    .locals 9

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 1446
    .local v3, "deltaX":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 1448
    .local v4, "deltaY":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startX:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startY:I

    move v8, v4

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Window;->setPosition(II)V

    .line 1449
    return-void
.end method

.method deltaResize(II)V
    .locals 9

    .prologue
    .line 1484
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 1485
    .local v3, "deltaX":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 1487
    .local v4, "deltaY":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startWidth:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startHeight:I

    move v8, v4

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Window;->setSize(II)V

    .line 1488
    return-void
.end method

.method handleMouseEvent(IIIIII)Z
    .locals 11

    .prologue
    .line 1504
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "button":I
    move v3, p3

    .local v3, "x":I
    move v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move v8, v1

    packed-switch v8, :pswitch_data_0

    .line 1534
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    :goto_0
    return v0

    .line 1506
    .restart local v0    # "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    :pswitch_0
    move v8, v2

    const/16 v9, 0xd4

    if-ne v8, v9, :cond_0

    .line 1507
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove(II)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1508
    move-object v8, v0

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMove(II)V

    .line 1509
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 1510
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedResize(II)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1511
    move-object v8, v0

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startResize(II)V

    .line 1512
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 1519
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1520
    move-object v8, v0

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->deltaMove(II)V

    .line 1521
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 1522
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1523
    move-object v8, v0

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->deltaResize(II)V

    .line 1524
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 1529
    :pswitch_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 1530
    .local v7, "wasProcessed":Z
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->stopResize()V

    .line 1531
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->stopMove()V

    .line 1532
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 1529
    .end local v7    # "wasProcessed":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1504
    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method inMove()Z
    .locals 2

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    return v0
.end method

.method inResize()Z
    .locals 2

    .prologue
    .line 1470
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    return v0
.end method

.method setMoveRectangle(I)V
    .locals 4

    .prologue
    .line 1418
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    .line 1420
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    .line 1421
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    .line 1422
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    .line 1423
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v3, v3, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    .line 1424
    return-void
.end method

.method setResizeRectangle(I)V
    .locals 5

    .prologue
    .line 1456
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    .line 1459
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v4, v4, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    .line 1460
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v4, v4, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    .line 1461
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v3, v3, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    .line 1462
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v3, v3, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    iput v3, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    .line 1463
    return-void
.end method

.method shouldStartMove(II)Z
    .locals 6

    .prologue
    .line 1427
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window$TrackingRectangle;->contains(II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    return v0
.end method

.method shouldStartResize(II)Z
    .locals 6

    .prologue
    .line 1466
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window$TrackingRectangle;->contains(II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    return v0
.end method

.method startMove(II)V
    .locals 5

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    .line 1437
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    .line 1438
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    .line 1440
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startX:I

    .line 1441
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startY:I

    .line 1442
    return-void
.end method

.method startResize(II)V
    .locals 5

    .prologue
    .line 1474
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    .line 1476
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    .line 1477
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    .line 1479
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startWidth:I

    .line 1480
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startHeight:I

    .line 1481
    return-void
.end method

.method stopMove()V
    .locals 3

    .prologue
    .line 1452
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    .line 1453
    return-void
.end method

.method protected stopResize()V
    .locals 3

    .prologue
    .line 1491
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    .line 1492
    return-void
.end method

.method updateRectangles()V
    .locals 3

    .prologue
    .line 1495
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v1, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    if-lez v1, :cond_0

    .line 1496
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v2, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setMoveRectangle(I)V

    .line 1498
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v1, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    if-lez v1, :cond_1

    .line 1499
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v2, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setResizeRectangle(I)V

    .line 1501
    :cond_1
    return-void
.end method
