.class public abstract Lcom/sun/glass/ui/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/View$Capability;,
        Lcom/sun/glass/ui/View$EventHandler;
    }
.end annotation


# static fields
.field public static final GESTURE_NO_DOUBLE_VALUE:D = NaN

.field public static final GESTURE_NO_VALUE:I = 0x7fffffff

.field public static final IME_ATTR_CONVERTED:B = 0x2t

.field public static final IME_ATTR_INPUT:B = 0x0t

.field public static final IME_ATTR_INPUT_ERROR:B = 0x4t

.field public static final IME_ATTR_TARGET_CONVERTED:B = 0x1t

.field public static final IME_ATTR_TARGET_NOTCONVERTED:B = 0x3t

.field static final accessible:Z

.field private static clickCount:I

.field private static dragProcessed:Z

.field private static lastClickedButton:I

.field private static lastClickedTime:J

.field private static lastClickedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/glass/ui/View;",
            ">;"
        }
    .end annotation
.end field

.field private static lastClickedX:I

.field private static lastClickedY:I


# instance fields
.field private dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field private eventHandler:Lcom/sun/glass/ui/View$EventHandler;

.field private height:I

.field private inFullscreen:Z

.field private isValid:Z

.field private isVisible:Z

.field private volatile ptr:J

.field private width:I

.field private window:Lcom/sun/glass/ui/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/sun/glass/ui/View$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/View;->accessible:Z

    .line 895
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    .line 900
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/ui/View;->dragProcessed:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 423
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-object v2, v1

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 397
    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/glass/ui/View;->width:I

    .line 398
    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/glass/ui/View;->height:I

    .line 400
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/View;->isValid:Z

    .line 401
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/View;->isVisible:Z

    .line 402
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/View;->inFullscreen:Z

    .line 424
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 425
    move-object v2, v1

    move-object v3, v1

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    invoke-static {}, Lcom/sun/glass/ui/Application;->getDeviceDetails()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/View;->_create(Ljava/util/Map;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/View;->ptr:J

    .line 426
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 427
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "could not create platform view"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_0
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/View;->lambda$static$2()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 7

    .prologue
    .line 432
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "The view has already been closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_0
    return-void
.end method

.method private getInputMethodCandidatePos(I)[D
    .locals 4

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_0

    .line 667
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/View$EventHandler;->getInputMethodCandidatePos(I)[D

    move-result-object v2

    move-object v0, v2

    .line 669
    .end local v0    # "this":Lcom/sun/glass/ui/View;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getMultiClickMaxX()I
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 377
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticView_getMultiClickMaxX()I

    move-result v0

    return v0
.end method

.method public static getMultiClickMaxY()I
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 382
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticView_getMultiClickMaxY()I

    move-result v0

    return v0
.end method

.method public static getMultiClickTime()J
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 372
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticView_getMultiClickTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private handleDragDrop(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 15

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v7, :cond_0

    .line 712
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/sun/glass/ui/View$EventHandler;->handleDragDrop(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v7

    move v0, v7

    .line 714
    .end local v0    # "this":Lcom/sun/glass/ui/View;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method private handleDragEnd(I)V
    .locals 5

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "performedAction":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_0

    .line 681
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/View$EventHandler;->handleDragEnd(Lcom/sun/glass/ui/View;I)V

    .line 683
    :cond_0
    return-void
.end method

.method private handleDragEnter(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 15

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v7, :cond_0

    .line 688
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/sun/glass/ui/View$EventHandler;->handleDragEnter(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v7

    move v0, v7

    .line 690
    .end local v0    # "this":Lcom/sun/glass/ui/View;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    move v7, v5

    move v0, v7

    goto :goto_0
.end method

.method private handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 5

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, p1

    .local v1, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_0

    .line 705
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/View$EventHandler;->handleDragLeave(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 707
    :cond_0
    return-void
.end method

.method private handleDragOver(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 15

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v7, :cond_0

    .line 697
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/sun/glass/ui/View$EventHandler;->handleDragOver(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v7

    move v0, v7

    .line 699
    .end local v0    # "this":Lcom/sun/glass/ui/View;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    move v7, v5

    move v0, v7

    goto :goto_0
.end method

.method private handleDragStart(IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 15

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "button":I
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move-object/from16 v6, p6

    .local v6, "dropSourceAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v7, :cond_0

    .line 675
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/sun/glass/ui/View$EventHandler;->handleDragStart(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    .line 677
    :cond_0
    return-void
.end method

.method private handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V
    .locals 19

    .prologue
    .line 646
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-wide/from16 v1, p1

    .local v1, "time":J
    move-object/from16 v3, p3

    .local v3, "text":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "clauseBoundary":[I
    move-object/from16 v5, p5

    .local v5, "attrBoundary":[I
    move-object/from16 v6, p6

    .local v6, "attrValue":[B
    move/from16 v7, p7

    .local v7, "commitCount":I
    move/from16 v8, p8

    .local v8, "cursorPos":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v9, :cond_0

    .line 647
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-wide v10, v1

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/glass/ui/View$EventHandler;->handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V

    .line 651
    :cond_0
    return-void
.end method

.method private handleKeyEvent(JII[CI)V
    .locals 17

    .prologue
    .line 545
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move/from16 v4, p3

    .local v4, "action":I
    move/from16 v5, p4

    .local v5, "keyCode":I
    move-object/from16 v6, p5

    .local v6, "keyChars":[C
    move/from16 v7, p6

    .local v7, "modifiers":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v8, :cond_0

    .line 546
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v9, v1

    move-wide v10, v2

    move v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/sun/glass/ui/View$EventHandler;->handleKeyEvent(Lcom/sun/glass/ui/View;JII[CI)V

    .line 548
    :cond_0
    return-void
.end method

.method private handleMenuEvent(IIIIZ)V
    .locals 13

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "isKeyboardTrigger":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v6, :cond_0

    .line 563
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sun/glass/ui/View$EventHandler;->handleMenuEvent(Lcom/sun/glass/ui/View;IIIIZ)V

    .line 565
    :cond_0
    return-void
.end method

.method private handleMouseEvent(JIIIIIIIZZ)V
    .locals 25

    .prologue
    .line 554
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-wide/from16 v1, p1

    .local v1, "time":J
    move/from16 v3, p3

    .local v3, "type":I
    move/from16 v4, p4

    .local v4, "button":I
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move/from16 v7, p7

    .local v7, "xAbs":I
    move/from16 v8, p8

    .local v8, "yAbs":I
    move/from16 v9, p9

    .local v9, "modifiers":I
    move/from16 v10, p10

    .local v10, "isPopupTrigger":Z
    move/from16 v11, p11

    .local v11, "isSynthesized":Z
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v12, :cond_0

    .line 555
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v13, v0

    move-wide v14, v1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-virtual/range {v12 .. v24}, Lcom/sun/glass/ui/View$EventHandler;->handleMouseEvent(Lcom/sun/glass/ui/View;JIIIIIIIZZ)V

    .line 559
    :cond_0
    return-void
.end method

.method private handleViewEvent(JI)V
    .locals 9

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-wide v1, p1

    .local v1, "time":J
    move v3, p3

    .local v3, "type":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v4, :cond_0

    .line 539
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v5, v0

    move-wide v6, v1

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/glass/ui/View$EventHandler;->handleViewEvent(Lcom/sun/glass/ui/View;JI)V

    .line 541
    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$2()Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 47
    const-string v5, "glass.accessible.force"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 48
    .local v0, "force":Ljava/lang/String;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    .line 59
    .end local v0    # "force":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "force":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/Platform;->determinePlatform()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 53
    .local v1, "platform":Ljava/lang/String;
    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(\\d+)\\.\\d+.*"

    const-string v7, "$1"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 54
    .local v2, "major":Ljava/lang/String;
    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\d+\\.(\\d+).*"

    const-string v7, "$1"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 55
    .local v3, "minor":Ljava/lang/String;
    move-object v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x64

    mul-int/lit8 v5, v5, 0x64

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .line 56
    .local v4, "v":I
    move-object v5, v1

    const-string v6, "Mac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    const/16 v6, 0x3f1

    if-ge v5, v6, :cond_2

    :cond_1
    move-object v5, v1

    const-string v6, "Win"

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    const/16 v6, 0x259

    if-lt v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    .line 56
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 57
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 58
    .end local v1    # "platform":Ljava/lang/String;
    .end local v2    # "major":Ljava/lang/String;
    .end local v3    # "minor":Ljava/lang/String;
    .end local v4    # "v":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method protected abstract _begin(J)V
.end method

.method protected abstract _close(J)Z
.end method

.method protected abstract _create(Ljava/util/Map;)J
.end method

.method protected abstract _enableInputMethodEvents(JZ)V
.end method

.method protected abstract _end(J)V
.end method

.method protected abstract _enterFullscreen(JZZZ)Z
.end method

.method protected abstract _exitFullscreen(JZ)V
.end method

.method protected _finishInputMethodComposition(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 388
    return-void
.end method

.method protected abstract _getNativeFrameBuffer(J)I
.end method

.method protected abstract _getNativeView(J)J
.end method

.method protected abstract _getX(J)I
.end method

.method protected abstract _getY(J)I
.end method

.method protected abstract _scheduleRepaint(J)V
.end method

.method protected abstract _setParent(JJ)V
.end method

.method protected abstract _uploadPixels(JLcom/sun/glass/ui/Pixels;)V
.end method

.method public close()V
    .locals 7

    .prologue
    .line 509
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 510
    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 511
    .line 523
    :goto_0
    return-void

    .line 513
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 514
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->_exitFullscreen(JZ)V

    .line 516
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v3

    move-object v2, v3

    .line 517
    .local v2, "host":Lcom/sun/glass/ui/Window;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 518
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Window;->setView(Lcom/sun/glass/ui/View;)V

    .line 520
    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/View;->isValid:Z

    .line 521
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/View;->_close(J)Z

    move-result v3

    .line 522
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/glass/ui/View;->ptr:J

    .line 523
    goto :goto_0
.end method

.method public enableInputMethodEvents(Z)V
    .locals 7

    .prologue
    .line 654
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move v2, p1

    .local v2, "enable":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 655
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 656
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->_enableInputMethodEvents(JZ)V

    .line 657
    return-void
.end method

.method public enterFullscreen(ZZZ)Z
    .locals 11

    .prologue
    .line 782
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move v2, p1

    .local v2, "animate":Z
    move v3, p2

    .local v3, "keepRatio":Z
    move v4, p3

    .local v4, "hideCursor":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 783
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 784
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/View;->ptr:J

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/View;->_enterFullscreen(JZZZ)Z

    move-result v5

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/View;
    return v1
.end method

.method public exitFullscreen(Z)V
    .locals 7

    .prologue
    .line 789
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move v2, p1

    .local v2, "animate":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 790
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 791
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->_exitFullscreen(JZ)V

    .line 792
    return-void
.end method

.method public finishInputMethodComposition()V
    .locals 4

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 661
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 662
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_finishInputMethodComposition(J)V

    .line 663
    return-void
.end method

.method getAccessible()J
    .locals 4

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1110
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 1111
    sget-boolean v2, Lcom/sun/glass/ui/View;->accessible:Z

    if-eqz v2, :cond_0

    .line 1112
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v2}, Lcom/sun/glass/ui/View$EventHandler;->getSceneAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    move-object v1, v2

    .line 1113
    .local v1, "acc":Lcom/sun/glass/ui/Accessible;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1114
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Accessible;->setView(Lcom/sun/glass/ui/View;)V

    .line 1115
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/Accessible;->getNativeAccessible()J

    move-result-wide v2

    move-wide v0, v2

    .line 1118
    .end local v0    # "this":Lcom/sun/glass/ui/View;
    :goto_0
    return-wide v0

    .end local v1    # "acc":Lcom/sun/glass/ui/Accessible;
    .restart local v0    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/View$EventHandler;
    .locals 2

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 527
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 488
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/View;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method public getNativeFrameBuffer()I
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_getNativeFrameBuffer(J)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method public getNativeRemoteLayerId(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, p1

    .local v1, "serverName":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 457
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This operation is not supported on this platform"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNativeView()J
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 450
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 451
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_getNativeView(J)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 483
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/View;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method public getWindow()Lcom/sun/glass/ui/Window;
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 462
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return-object v0
.end method

.method public getX()I
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 469
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 470
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_getX(J)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method public getY()I
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 477
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 478
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_getY(J)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method public handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V
    .locals 14

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v2, p2

    .local v2, "time":J
    move/from16 v4, p4

    .local v4, "modifiers":I
    move/from16 v5, p5

    .local v5, "isDirect":Z
    move/from16 v6, p6

    .local v6, "touchEventCount":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v7, :cond_0

    .line 570
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v8, v1

    move-wide v9, v2

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/glass/ui/View$EventHandler;->handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V

    .line 573
    :cond_0
    return-void
.end method

.method public handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V
    .locals 8

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide v2, p2

    .local v2, "time":J
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v4, :cond_0

    .line 585
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/glass/ui/View$EventHandler;->handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V

    .line 587
    :cond_0
    return-void
.end method

.method public handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V
    .locals 22

    .prologue
    .line 578
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v2, p2

    .local v2, "time":J
    move/from16 v4, p4

    .local v4, "type":I
    move-wide/from16 v5, p5

    .local v5, "touchId":J
    move/from16 v7, p7

    .local v7, "x":I
    move/from16 v8, p8

    .local v8, "y":I
    move/from16 v9, p9

    .local v9, "xAbs":I
    move/from16 v10, p10

    .local v10, "yAbs":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v11, :cond_0

    .line 579
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v12, v1

    move-wide v13, v2

    move v15, v4

    move-wide/from16 v16, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Lcom/sun/glass/ui/View$EventHandler;->handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V

    .line 581
    :cond_0
    return-void
.end method

.method public handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V
    .locals 34

    .prologue
    .line 624
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/View;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "time":J
    move/from16 v6, p4

    .local v6, "type":I
    move/from16 v7, p5

    .local v7, "modifiers":I
    move/from16 v8, p6

    .local v8, "isDirect":Z
    move/from16 v9, p7

    .local v9, "isInertia":Z
    move/from16 v10, p8

    .local v10, "originx":I
    move/from16 v11, p9

    .local v11, "originy":I
    move/from16 v12, p10

    .local v12, "originxAbs":I
    move/from16 v13, p11

    .local v13, "originyAbs":I
    move-wide/from16 v14, p12

    .local v14, "dangle":D
    move-wide/from16 v16, p14

    .local v16, "totalangle":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 625
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move-wide/from16 v30, v14

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v33}, Lcom/sun/glass/ui/View$EventHandler;->handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V

    .line 629
    :cond_0
    return-void
.end method

.method public handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V
    .locals 51

    .prologue
    .line 596
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-object/from16 v2, p1

    .local v2, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v3, p2

    .local v3, "time":J
    move/from16 v5, p4

    .local v5, "type":I
    move/from16 v6, p5

    .local v6, "modifiers":I
    move/from16 v7, p6

    .local v7, "isDirect":Z
    move/from16 v8, p7

    .local v8, "isInertia":Z
    move/from16 v9, p8

    .local v9, "touchCount":I
    move/from16 v10, p9

    .local v10, "x":I
    move/from16 v11, p10

    .local v11, "y":I
    move/from16 v12, p11

    .local v12, "xAbs":I
    move/from16 v13, p12

    .local v13, "yAbs":I
    move-wide/from16 v14, p13

    .local v14, "dx":D
    move-wide/from16 v16, p15

    .local v16, "dy":D
    move-wide/from16 v18, p17

    .local v18, "totaldx":D
    move-wide/from16 v20, p19

    .local v20, "totaldy":D
    move-wide/from16 v22, p21

    .local v22, "multiplierX":D
    move-wide/from16 v24, p23

    .local v24, "multiplierY":D
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 597
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v38, v13

    move-wide/from16 v39, v14

    move-wide/from16 v41, v16

    move-wide/from16 v43, v18

    move-wide/from16 v45, v20

    move-wide/from16 v47, v22

    move-wide/from16 v49, v24

    invoke-virtual/range {v26 .. v50}, Lcom/sun/glass/ui/View$EventHandler;->handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V

    .line 601
    :cond_0
    return-void
.end method

.method public handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V
    .locals 28

    .prologue
    .line 636
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v2, p2

    .local v2, "time":J
    move/from16 v4, p4

    .local v4, "type":I
    move/from16 v5, p5

    .local v5, "modifiers":I
    move/from16 v6, p6

    .local v6, "isDirect":Z
    move/from16 v7, p7

    .local v7, "isInertia":Z
    move/from16 v8, p8

    .local v8, "touchCount":I
    move/from16 v9, p9

    .local v9, "dir":I
    move/from16 v10, p10

    .local v10, "originx":I
    move/from16 v11, p11

    .local v11, "originy":I
    move/from16 v12, p12

    .local v12, "originxAbs":I
    move/from16 v13, p13

    .local v13, "originyAbs":I
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v14, :cond_0

    .line 637
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v15, v1

    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    invoke-virtual/range {v14 .. v27}, Lcom/sun/glass/ui/View$EventHandler;->handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V

    .line 641
    :cond_0
    return-void
.end method

.method public handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V
    .locals 42

    .prologue
    .line 610
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/View;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move-wide/from16 v4, p2

    .local v4, "time":J
    move/from16 v6, p4

    .local v6, "type":I
    move/from16 v7, p5

    .local v7, "modifiers":I
    move/from16 v8, p6

    .local v8, "isDirect":Z
    move/from16 v9, p7

    .local v9, "isInertia":Z
    move/from16 v10, p8

    .local v10, "originx":I
    move/from16 v11, p9

    .local v11, "originy":I
    move/from16 v12, p10

    .local v12, "originxAbs":I
    move/from16 v13, p11

    .local v13, "originyAbs":I
    move-wide/from16 v14, p12

    .local v14, "scale":D
    move-wide/from16 v16, p14

    .local v16, "expansion":D
    move-wide/from16 v18, p16

    .local v18, "totalscale":D
    move-wide/from16 v20, p18

    .local v20, "totalexpansion":D
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 611
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v13

    move-wide/from16 v34, v14

    move-wide/from16 v36, v16

    move-wide/from16 v38, v18

    move-wide/from16 v40, v20

    invoke-virtual/range {v22 .. v41}, Lcom/sun/glass/ui/View$EventHandler;->handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V

    .line 616
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 6

    .prologue
    .line 438
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 439
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/View;
    return v1

    .restart local v1    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInFullscreen()Z
    .locals 2

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 796
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/View;->inFullscreen:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method public lock()V
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 735
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_begin(J)V

    .line 736
    return-void
.end method

.method public notifyBeginTouchEvent(IZI)V
    .locals 11

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "modifiers":I
    move v2, p2

    .local v2, "isDirect":Z
    move v3, p3

    .local v3, "touchEventCount":I
    move-object v4, v0

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/sun/glass/ui/View;->handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V

    .line 1046
    return-void
.end method

.method protected notifyDragDrop(IIIII)I
    .locals 14

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/View;->handleDragDrop(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v7

    move v6, v7

    .line 1038
    .local v6, "performedAction":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v7}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1039
    move v7, v6

    move v0, v7

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method protected notifyDragEnd(I)V
    .locals 4

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "performedAction":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/View;->handleDragEnd(I)V

    .line 1006
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v2, :cond_0

    .line 1007
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v2}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1008
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1010
    :cond_0
    return-void
.end method

.method protected notifyDragEnter(IIIII)I
    .locals 14

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    new-instance v7, Lcom/sun/glass/ui/View$2;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    const-string v10, "DND"

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/View$2;-><init>(Lcom/sun/glass/ui/View;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1020
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-direct/range {v6 .. v12}, Lcom/sun/glass/ui/View;->handleDragEnter(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method protected notifyDragLeave()V
    .locals 3

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/View;->handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 1031
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1032
    return-void
.end method

.method protected notifyDragOver(IIIII)I
    .locals 13

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-direct/range {v6 .. v12}, Lcom/sun/glass/ui/View;->handleDragOver(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/View;
    return v0
.end method

.method protected notifyDragStart(IIIII)V
    .locals 14

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "button":I
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move-object v6, v0

    new-instance v7, Lcom/sun/glass/ui/View$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    const-string v10, "DND"

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/View$1;-><init>(Lcom/sun/glass/ui/View;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 996
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-direct/range {v6 .. v12}, Lcom/sun/glass/ui/View;->handleDragStart(IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    .line 998
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v6, :cond_0

    .line 999
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v6}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1000
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1002
    :cond_0
    return-void
.end method

.method public notifyEndTouchEvent()V
    .locals 6

    .prologue
    .line 1055
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-object v2, v1

    move-object v3, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/View;->handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V

    .line 1056
    return-void
.end method

.method protected notifyInputMethod(Ljava/lang/String;[I[I[BIII)V
    .locals 18

    .prologue
    .line 972
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-object/from16 v2, p1

    .local v2, "text":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "clauseBoundary":[I
    move-object/from16 v4, p3

    .local v4, "attrBoundary":[I
    move-object/from16 v5, p4

    .local v5, "attrValue":[B
    move/from16 v6, p5

    .local v6, "committedTextLength":I
    move/from16 v7, p6

    .local v7, "caretPos":I
    move/from16 v8, p7

    .local v8, "visiblePos":I
    move-object v9, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Lcom/sun/glass/ui/View;->handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V

    .line 974
    return-void
.end method

.method protected notifyInputMethodCandidatePosRequest(I)[D
    .locals 8

    .prologue
    .line 977
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move v2, p1

    .local v2, "offset":I
    move-object v4, v1

    move v5, v2

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/View;->getInputMethodCandidatePos(I)[D

    move-result-object v4

    move-object v3, v4

    .line 978
    .local v3, "ret":[D
    move-object v4, v3

    if-nez v4, :cond_0

    .line 979
    const/4 v4, 0x2

    new-array v4, v4, [D

    move-object v3, v4

    .line 980
    move-object v4, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 981
    move-object v4, v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 983
    :cond_0
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/View;
    return-object v1
.end method

.method protected notifyKey(II[CI)V
    .locals 12

    .prologue
    .line 966
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "keyChars":[C
    move/from16 v4, p4

    .local v4, "modifiers":I
    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/sun/glass/ui/View;->handleKeyEvent(JII[CI)V

    .line 967
    return-void
.end method

.method protected notifyMenu(IIIIZ)V
    .locals 12

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "isKeyboardTrigger":Z
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/glass/ui/View;->handleMenuEvent(IIIIZ)V

    .line 890
    return-void
.end method

.method protected notifyMouse(IIIIIIIZZ)V
    .locals 27

    .prologue
    .line 906
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move/from16 v2, p1

    .local v2, "type":I
    move/from16 v3, p2

    .local v3, "button":I
    move/from16 v4, p3

    .local v4, "x":I
    move/from16 v5, p4

    .local v5, "y":I
    move/from16 v6, p5

    .local v6, "xAbs":I
    move/from16 v7, p6

    .local v7, "yAbs":I
    move/from16 v8, p7

    .local v8, "modifiers":I
    move/from16 v9, p8

    .local v9, "isPopupTrigger":Z
    move/from16 v10, p9

    .local v10, "isSynthesized":Z
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    if-eqz v14, :cond_0

    .line 908
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Lcom/sun/glass/ui/Window;->handleMouseEvent(IIIIII)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 910
    .line 949
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-wide v11, v14

    .line 915
    .local v11, "now":J
    move v14, v2

    const/16 v15, 0xdd

    if-ne v14, v15, :cond_1

    .line 916
    sget-object v14, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-nez v14, :cond_3

    const/4 v14, 0x0

    :goto_1
    move-object v13, v14

    .line 918
    .local v13, "lastClickedView":Lcom/sun/glass/ui/View;
    move-object v14, v13

    move-object v15, v1

    if-ne v14, v15, :cond_4

    sget v14, Lcom/sun/glass/ui/View;->lastClickedButton:I

    move v15, v3

    if-ne v14, v15, :cond_4

    move-wide v14, v11

    sget-wide v16, Lcom/sun/glass/ui/View;->lastClickedTime:J

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    .line 920
    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickTime()J

    move-result-wide v18

    mul-long v16, v16, v18

    cmp-long v14, v14, v16

    if-gtz v14, :cond_4

    move v14, v4

    sget v15, Lcom/sun/glass/ui/View;->lastClickedX:I

    sub-int/2addr v14, v15

    .line 921
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickMaxX()I

    move-result v15

    if-gt v14, v15, :cond_4

    move v14, v5

    sget v15, Lcom/sun/glass/ui/View;->lastClickedY:I

    sub-int/2addr v14, v15

    .line 922
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickMaxY()I

    move-result v15

    if-gt v14, v15, :cond_4

    .line 924
    sget v14, Lcom/sun/glass/ui/View;->clickCount:I

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/sun/glass/ui/View;->clickCount:I

    .line 934
    :goto_2
    move-wide v14, v11

    sput-wide v14, Lcom/sun/glass/ui/View;->lastClickedTime:J

    .line 937
    .end local v13    # "lastClickedView":Lcom/sun/glass/ui/View;
    :cond_1
    move-object v14, v1

    move-wide v15, v11

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v14 .. v25}, Lcom/sun/glass/ui/View;->handleMouseEvent(JIIIIIIIZZ)V

    .line 940
    move v14, v2

    const/16 v15, 0xdf

    if-ne v14, v15, :cond_5

    .line 942
    sget-boolean v14, Lcom/sun/glass/ui/View;->dragProcessed:Z

    if-nez v14, :cond_2

    .line 943
    move-object v14, v1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v19}, Lcom/sun/glass/ui/View;->notifyDragStart(IIIII)V

    .line 944
    const/4 v14, 0x1

    sput-boolean v14, Lcom/sun/glass/ui/View;->dragProcessed:Z

    .line 949
    :cond_2
    :goto_3
    goto/16 :goto_0

    .line 916
    :cond_3
    sget-object v14, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/glass/ui/View;

    goto :goto_1

    .line 926
    .restart local v13    # "lastClickedView":Lcom/sun/glass/ui/View;
    :cond_4
    const/4 v14, 0x1

    sput v14, Lcom/sun/glass/ui/View;->clickCount:I

    .line 928
    new-instance v14, Ljava/lang/ref/WeakReference;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v14, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    .line 929
    move v14, v3

    sput v14, Lcom/sun/glass/ui/View;->lastClickedButton:I

    .line 930
    move v14, v4

    sput v14, Lcom/sun/glass/ui/View;->lastClickedX:I

    .line 931
    move v14, v5

    sput v14, Lcom/sun/glass/ui/View;->lastClickedY:I

    goto :goto_2

    .line 947
    .end local v13    # "lastClickedView":Lcom/sun/glass/ui/View;
    :cond_5
    const/4 v14, 0x0

    sput-boolean v14, Lcom/sun/glass/ui/View;->dragProcessed:Z

    goto :goto_3
.end method

.method public notifyNextTouchEvent(IJIIII)V
    .locals 20

    .prologue
    .line 1050
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "type":I
    move-wide/from16 v2, p2

    .local v2, "touchId":J
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "xAbs":I
    move/from16 v7, p7

    .local v7, "yAbs":I
    move-object v8, v0

    move-object v9, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move v12, v1

    move-wide v13, v2

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v8 .. v18}, Lcom/sun/glass/ui/View;->handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V

    .line 1052
    return-void
.end method

.method protected notifyRepaint(IIII)V
    .locals 7

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    const/16 v6, 0x1a5

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/View;->notifyView(I)V

    .line 883
    return-void
.end method

.method protected notifyResize(II)V
    .locals 7

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/View;->width:I

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/View;->height:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 870
    .line 876
    :goto_0
    return-void

    .line 873
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/View;->width:I

    .line 874
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/View;->height:I

    .line 875
    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/16 v6, 0x1a6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    .line 876
    goto :goto_0
.end method

.method public notifyRotateGestureEvent(IIZZIIIIDD)V
    .locals 31

    .prologue
    .line 1086
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move/from16 v2, p1

    .local v2, "type":I
    move/from16 v3, p2

    .local v3, "modifiers":I
    move/from16 v4, p3

    .local v4, "isDirect":Z
    move/from16 v5, p4

    .local v5, "isInertia":Z
    move/from16 v6, p5

    .local v6, "originx":I
    move/from16 v7, p6

    .local v7, "originy":I
    move/from16 v8, p7

    .local v8, "originxAbs":I
    move/from16 v9, p8

    .local v9, "originyAbs":I
    move-wide/from16 v10, p9

    .local v10, "dangle":D
    move-wide/from16 v12, p11

    .local v12, "totalangle":D
    move-object v14, v1

    move-object v15, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    invoke-virtual/range {v14 .. v29}, Lcom/sun/glass/ui/View;->handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V

    .line 1089
    return-void
.end method

.method protected notifyScroll(IIIIDDIIIIIDD)V
    .locals 41

    .prologue
    .line 958
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/View;
    move/from16 v3, p1

    .local v3, "x":I
    move/from16 v4, p2

    .local v4, "y":I
    move/from16 v5, p3

    .local v5, "xAbs":I
    move/from16 v6, p4

    .local v6, "yAbs":I
    move-wide/from16 v7, p5

    .local v7, "deltaX":D
    move-wide/from16 v9, p7

    .local v9, "deltaY":D
    move/from16 v11, p9

    .local v11, "modifiers":I
    move/from16 v12, p10

    .local v12, "lines":I
    move/from16 v13, p11

    .local v13, "chars":I
    move/from16 v14, p12

    .local v14, "defaultLines":I
    move/from16 v15, p13

    .local v15, "defaultChars":I
    move-wide/from16 v16, p14

    .local v16, "xMultiplier":D
    move-wide/from16 v18, p16

    .local v18, "yMultiplier":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 959
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move-wide/from16 v28, v7

    move-wide/from16 v30, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move-wide/from16 v37, v16

    move-wide/from16 v39, v18

    invoke-virtual/range {v20 .. v40}, Lcom/sun/glass/ui/View$EventHandler;->handleScrollEvent(Lcom/sun/glass/ui/View;JIIIIDDIIIIIDD)V

    .line 963
    :cond_0
    return-void
.end method

.method public notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V
    .locals 48

    .prologue
    .line 1064
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "modifiers":I
    move/from16 v3, p3

    .local v3, "isDirect":Z
    move/from16 v4, p4

    .local v4, "isInertia":Z
    move/from16 v5, p5

    .local v5, "touchCount":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "xAbs":I
    move/from16 v9, p9

    .local v9, "yAbs":I
    move-wide/from16 v10, p10

    .local v10, "dx":D
    move-wide/from16 v12, p12

    .local v12, "dy":D
    move-wide/from16 v14, p14

    .local v14, "totaldx":D
    move-wide/from16 v16, p16

    .local v16, "totaldy":D
    move-wide/from16 v18, p18

    .local v18, "multiplierX":D
    move-wide/from16 v20, p20

    .local v20, "multiplierY":D
    move-object/from16 v22, v0

    move-object/from16 v23, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move-wide/from16 v35, v10

    move-wide/from16 v37, v12

    move-wide/from16 v39, v14

    move-wide/from16 v41, v16

    move-wide/from16 v43, v18

    move-wide/from16 v45, v20

    invoke-virtual/range {v22 .. v46}, Lcom/sun/glass/ui/View;->handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V

    .line 1067
    return-void
.end method

.method public notifySwipeGestureEvent(IIZZIIIIII)V
    .locals 26

    .prologue
    .line 1096
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move/from16 v2, p1

    .local v2, "type":I
    move/from16 v3, p2

    .local v3, "modifiers":I
    move/from16 v4, p3

    .local v4, "isDirect":Z
    move/from16 v5, p4

    .local v5, "isInertia":Z
    move/from16 v6, p5

    .local v6, "touchCount":I
    move/from16 v7, p6

    .local v7, "dir":I
    move/from16 v8, p7

    .local v8, "originx":I
    move/from16 v9, p8

    .local v9, "originy":I
    move/from16 v10, p9

    .local v10, "originxAbs":I
    move/from16 v11, p10

    .local v11, "originyAbs":I
    move-object v12, v1

    move-object v13, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    invoke-virtual/range {v12 .. v25}, Lcom/sun/glass/ui/View;->handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V

    .line 1099
    return-void
.end method

.method protected notifyView(I)V
    .locals 8

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "type":I
    move v3, v1

    const/16 v4, 0x1a5

    if-ne v3, v4, :cond_1

    .line 819
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/View;->isValid:Z

    if-eqz v3, :cond_0

    .line 820
    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    .line 827
    .local v2, "synthesizeMOVE":Z
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 854
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown view event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 855
    goto :goto_0

    .line 829
    :sswitch_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/View;->isValid:Z

    .line 830
    const/4 v3, 0x1

    move v2, v3

    .line 858
    :cond_2
    :goto_1
    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    .line 860
    move v3, v2

    if-eqz v3, :cond_0

    .line 863
    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/16 v6, 0x1a7

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    goto :goto_0

    .line 833
    :sswitch_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/View;->isValid:Z

    .line 834
    const/4 v3, 0x1

    move v2, v3

    .line 835
    goto :goto_1

    .line 837
    :sswitch_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/View;->inFullscreen:Z

    .line 838
    const/4 v3, 0x1

    move v2, v3

    .line 839
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 840
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Window;->notifyFullscreen(Z)V

    goto :goto_1

    .line 844
    :sswitch_3
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/View;->inFullscreen:Z

    .line 845
    const/4 v3, 0x1

    move v2, v3

    .line 846
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 847
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Window;->notifyFullscreen(Z)V

    goto :goto_1

    .line 852
    :sswitch_4
    goto :goto_1

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x19b -> :sswitch_1
        0x19c -> :sswitch_0
        0x1a6 -> :sswitch_4
        0x1a7 -> :sswitch_4
        0x1af -> :sswitch_2
        0x1b0 -> :sswitch_3
    .end sparse-switch
.end method

.method public notifyZoomGestureEvent(IIZZIIIIDDDD)V
    .locals 39

    .prologue
    .line 1075
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move/from16 v2, p1

    .local v2, "type":I
    move/from16 v3, p2

    .local v3, "modifiers":I
    move/from16 v4, p3

    .local v4, "isDirect":Z
    move/from16 v5, p4

    .local v5, "isInertia":Z
    move/from16 v6, p5

    .local v6, "originx":I
    move/from16 v7, p6

    .local v7, "originy":I
    move/from16 v8, p7

    .local v8, "originxAbs":I
    move/from16 v9, p8

    .local v9, "originyAbs":I
    move-wide/from16 v10, p9

    .local v10, "scale":D
    move-wide/from16 v12, p11

    .local v12, "expansion":D
    move-wide/from16 v14, p13

    .local v14, "totalscale":D
    move-wide/from16 v16, p15

    .local v16, "totalexpansion":D
    move-object/from16 v18, v1

    move-object/from16 v19, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    move-wide/from16 v34, v14

    move-wide/from16 v36, v16

    invoke-virtual/range {v18 .. v37}, Lcom/sun/glass/ui/View;->handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V

    .line 1079
    return-void
.end method

.method public scheduleRepaint()V
    .locals 4

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 724
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 725
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_scheduleRepaint(J)V

    .line 726
    return-void
.end method

.method public setEventHandler(Lcom/sun/glass/ui/View$EventHandler;)V
    .locals 4

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, p1

    .local v1, "eventHandler":Lcom/sun/glass/ui/View$EventHandler;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 532
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    .line 533
    return-void
.end method

.method setVisible(Z)V
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/View;->isVisible:Z

    .line 505
    return-void
.end method

.method setWindow(Lcom/sun/glass/ui/Window;)V
    .locals 8

    .prologue
    .line 495
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move-object v2, p1

    .local v2, "window":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 496
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 497
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    .line 498
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    move-object v6, v2

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/View;->_setParent(JJ)V

    .line 499
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/sun/glass/ui/View;->isValid:Z

    .line 500
    return-void

    .line 498
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v6

    goto :goto_0

    .line 499
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toggleFullscreen(ZZZ)Z
    .locals 9

    .prologue
    .line 800
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/View;
    move v2, p1

    .local v2, "animate":Z
    move v3, p2

    .local v3, "keepRatio":Z
    move v4, p3

    .local v4, "hideCursor":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 801
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 802
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/glass/ui/View;->inFullscreen:Z

    if-nez v5, :cond_0

    .line 803
    move-object v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/View;->enterFullscreen(ZZZ)Z

    move-result v5

    .line 808
    :goto_0
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/View;->_scheduleRepaint(J)V

    .line 810
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/glass/ui/View;->inFullscreen:Z

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/View;
    return v1

    .line 805
    .restart local v1    # "this":Lcom/sun/glass/ui/View;
    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/View;->exitFullscreen(Z)V

    goto :goto_0
.end method

.method public unlock()V
    .locals 4

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 746
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/View;->_end(J)V

    .line 747
    return-void
.end method

.method public uploadPixels(Lcom/sun/glass/ui/Pixels;)V
    .locals 7

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 768
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 769
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->lock()V

    .line 771
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-wide v4, v4, Lcom/sun/glass/ui/View;->ptr:J

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/View;->_uploadPixels(JLcom/sun/glass/ui/Pixels;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->unlock()V

    .line 774
    .line 775
    return-void

    .line 773
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->unlock()V

    move-object v3, v2

    throw v3
.end method
