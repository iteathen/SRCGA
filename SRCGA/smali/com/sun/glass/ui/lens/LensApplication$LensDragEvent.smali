.class Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LensDragEvent"
.end annotation


# instance fields
.field final DROP:I

.field final ENTER:I

.field final LEAVE:I

.field final OVER:I

.field absx:I

.field absy:I

.field action:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

.field final synthetic this$0:Lcom/sun/glass/ui/lens/LensApplication;

.field view:Lcom/sun/glass/ui/lens/LensView;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIILcom/sun/glass/ui/lens/LensApplication$DragActions;)V
    .locals 10

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;
    move-object v1, p1

    move-object v2, p2

    .local v2, "view":Lcom/sun/glass/ui/lens/LensView;
    move v3, p3

    .local v3, "x":I
    move v4, p4

    .local v4, "y":I
    move v5, p5

    .local v5, "absx":I
    move/from16 v6, p6

    .local v6, "absy":I
    move-object/from16 v7, p7

    .local v7, "action":Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 585
    move-object v8, v0

    sget-object v9, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v9}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v9

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->ENTER:I

    .line 586
    move-object v8, v0

    sget-object v9, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->LEAVE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v9}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v9

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->LEAVE:I

    .line 587
    move-object v8, v0

    sget-object v9, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->OVER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v9}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v9

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->OVER:I

    .line 588
    move-object v8, v0

    sget-object v9, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->DROP:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v9}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v9

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->DROP:I

    .line 591
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absx:I

    .line 592
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absy:I

    .line 593
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->x:I

    .line 594
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->y:I

    .line 595
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->action:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 596
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    .line 597
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 8

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing drag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->action:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 603
    :cond_0
    sget-object v1, Lcom/sun/glass/ui/lens/LensApplication$2;->$SwitchMap$com$sun$glass$ui$lens$LensApplication$DragActions:[I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->action:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v2}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 618
    .line 620
    :goto_0
    return-void

    .line 605
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->y:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absx:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absy:I

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/lens/LensView;->_notifyDragEnter(IIIII)V

    .line 606
    .line 620
    :goto_1
    goto :goto_0

    .line 608
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensView;->_notifyDragLeave()V

    .line 609
    goto :goto_1

    .line 611
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->y:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absx:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absy:I

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/lens/LensView;->_notifyDragOver(IIIII)V

    .line 612
    goto :goto_1

    .line 614
    :pswitch_3
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->y:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absx:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absy:I

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/lens/LensView;->_notifyDragDrop(IIIII)V

    .line 615
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/lens/LensApplication;->leaveDndEventLoop(Ljava/lang/Object;)V

    .line 616
    goto :goto_1

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensDragEvent[x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", absx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", absy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->absy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->action:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;
    return-object v0
.end method
