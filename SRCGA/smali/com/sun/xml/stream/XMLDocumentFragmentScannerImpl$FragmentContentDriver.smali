.class public Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FragmentContentDriver"
.end annotation


# instance fields
.field private fContinueDispatching:Z

.field private fScanningForMarkup:Z

.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V
    .locals 4

    .prologue
    .line 2414
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2420
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->fContinueDispatching:Z

    .line 2421
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->fScanningForMarkup:Z

    return-void
.end method

.method private startOfContent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2473
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2474
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2483
    :goto_0
    return-void

    .line 2476
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2477
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2481
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0
.end method

.method private startOfMarkup()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2427
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2428
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    move v1, v2

    .line 2430
    .local v1, "ch":I
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 2460
    move v2, v1

    invoke-static {v2}, Lcom/sun/xml/stream/XMLScanner;->isValidNameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2461
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2470
    :cond_0
    :goto_0
    return-void

    .line 2432
    :sswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2433
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    .line 2434
    goto :goto_0

    .line 2437
    :sswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    .line 2438
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2439
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2440
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v3, "InvalidCommentStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2443
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2445
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    sget-object v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->cdata:[C

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2446
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2448
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->scanForDoctypeHook()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2449
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v3, "MarkupNotRecognizedInContent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2455
    :sswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2456
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    .line 2457
    goto/16 :goto_0

    .line 2464
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v3, "MarkupNotRecognizedInContent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2430
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2f -> :sswitch_2
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public decideSubState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2500
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 2502
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    packed-switch v1, :pswitch_data_0

    .line 2511
    :goto_1
    goto :goto_0

    .line 2505
    :pswitch_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->startOfContent()V

    .line 2506
    goto :goto_1

    .line 2510
    :pswitch_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->startOfMarkup()V

    goto :goto_1

    .line 2515
    :cond_1
    return-void

    .line 2502
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected elementDepthIsZeroHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3039
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3071
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    move-object v1, p1

    .local v1, "e":Ljava/io/EOFException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-eqz v2, :cond_0

    .line 3072
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v3, "PrematureEOF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3075
    :cond_0
    return-void
.end method

.method public next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2546
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    :goto_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    packed-switch v2, :pswitch_data_0

    .line 2574
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_4

    .line 2575
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2577
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v2, :cond_2

    .line 2581
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x23

    if-eq v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x25

    if-eq v2, v3, :cond_4

    .line 2583
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2584
    const/4 v2, 0x4

    move v0, v2

    .line 2997
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    :goto_2
    return v0

    .line 2548
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    move v1, v2

    .line 2549
    .local v1, "ch":I
    move v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    .line 2550
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 2551
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2566
    .end local v1    # "ch":I
    :pswitch_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->startOfMarkup()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2992
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2993
    .local v1, "e":Ljava/io/EOFException;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->endOfFileHook(Ljava/io/EOFException;)V

    .line 2994
    const/4 v2, -0x1

    move v0, v2

    goto :goto_2

    .line 2553
    .local v1, "ch":I
    :cond_0
    move v2, v1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 2554
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 2555
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2556
    goto :goto_1

    .line 2560
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2561
    goto/16 :goto_1

    .line 2589
    .end local v1    # "ch":I
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-eqz v2, :cond_4

    .line 2594
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x23

    if-eq v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x25

    if-eq v2, v3, :cond_4

    .line 2597
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2598
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2599
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2609
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    sparse-switch v2, :sswitch_data_0

    .line 2987
    new-instance v2, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scanner State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not Recognized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2612
    :sswitch_0
    const/4 v2, 0x7

    move v0, v2

    goto/16 :goto_2

    .line 2618
    :sswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    .line 2620
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v2, :cond_5

    .line 2621
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2626
    :goto_3
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_2

    .line 2624
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_3

    .line 2635
    :sswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v3, :cond_a

    :cond_6
    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2638
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_b

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v2, :cond_b

    .line 2639
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2640
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2641
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2642
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2650
    :goto_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 2651
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanContent(Lorg/apache/xerces/xni/XMLString;)I

    move-result v2

    move v1, v2

    .line 2655
    .local v1, "c":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2657
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2659
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2660
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2661
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2679
    :cond_8
    :goto_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    if-eqz v2, :cond_9

    .line 2680
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 2681
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 2686
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v2, :cond_e

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->isIgnorableWhiteSpace(Lorg/apache/xerces/xni/XMLString;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2688
    const/4 v2, 0x6

    move v0, v2

    goto/16 :goto_2

    .line 2635
    .end local v1    # "c":I
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2645
    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    goto/16 :goto_5

    .line 2663
    .restart local v1    # "c":I
    :cond_c
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2664
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2665
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2666
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_6

    .line 2668
    :cond_d
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2670
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_8

    .line 2671
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2672
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2673
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 2674
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 2675
    goto/16 :goto_0

    .line 2690
    :cond_e
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2694
    :cond_f
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2699
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 2700
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 2702
    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_11

    .line 2708
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 2709
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2710
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 2711
    const/4 v2, -0x1

    move v1, v2

    .line 2743
    :cond_10
    :goto_7
    move v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_14

    .line 2744
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 2745
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2746
    .line 2783
    :goto_8
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_18

    .line 2784
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2785
    goto/16 :goto_0

    .line 2713
    :cond_11
    move v2, v1

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_10

    .line 2716
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2717
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 2721
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 2726
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2727
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 2728
    :goto_9
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2729
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_9

    .line 2731
    :cond_12
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2732
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v3, "CDEndInContent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2735
    :cond_13
    const/4 v2, -0x1

    move v1, v2

    .line 2736
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    goto/16 :goto_7

    .line 2748
    :cond_14
    move v2, v1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_15

    .line 2749
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 2750
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2751
    goto/16 :goto_8

    .line 2753
    :cond_15
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    move v2, v1

    invoke-static {v2}, Lcom/sun/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2754
    move v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2756
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v2

    .line 2757
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_8

    .line 2760
    :cond_16
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v3, "InvalidCharInContent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move v7, v1

    const/16 v8, 0x10

    .line 2762
    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2760
    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2763
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 2765
    goto/16 :goto_8

    .line 2768
    :cond_17
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanContent(Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v2

    move v1, v2

    .line 2771
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-nez v2, :cond_10

    .line 2772
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2773
    goto/16 :goto_8

    .line 2787
    :cond_18
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v2, :cond_19

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->isIgnorableWhiteSpace(Lorg/apache/xerces/xni/XMLString;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2789
    const/4 v2, 0x6

    move v0, v2

    goto/16 :goto_2

    .line 2792
    :cond_19
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2797
    .end local v1    # "c":I
    :sswitch_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v2, :cond_1b

    .line 2799
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    .line 2800
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2803
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-nez v2, :cond_1a

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->elementDepthIsZeroHook()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x2

    :goto_a
    move v0, v2

    goto/16 :goto_2

    :cond_1a
    const/4 v2, 0x2

    goto :goto_a

    .line 2806
    :cond_1b
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanEndElement()I

    move-result v2

    if-nez v2, :cond_1c

    .line 2808
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->elementDepthIsZeroHook()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2812
    const/4 v2, 0x2

    move v0, v2

    goto/16 :goto_2

    .line 2816
    :cond_1c
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2817
    const/4 v2, 0x2

    move v0, v2

    goto/16 :goto_2

    .line 2821
    :sswitch_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanComment()V

    .line 2822
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2823
    const/4 v2, 0x5

    move v0, v2

    goto/16 :goto_2

    .line 2828
    :sswitch_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 2832
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanPI(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 2833
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2834
    const/4 v2, 0x3

    move v0, v2

    goto/16 :goto_2

    .line 2843
    :sswitch_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_1e

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v2, :cond_1d

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v2, :cond_1d

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v2, :cond_1e

    .line 2844
    :cond_1d
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2845
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2846
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2851
    :goto_b
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2853
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanCDATASection(Lorg/apache/xerces/util/XMLStringBuffer;Z)Z

    move-result v2

    .line 2854
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2862
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_1f

    .line 2863
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2865
    goto/16 :goto_0

    .line 2849
    :cond_1e
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_b

    .line 2866
    :cond_1f
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    if-eqz v2, :cond_20

    .line 2867
    const/16 v2, 0xc

    move v0, v2

    goto/16 :goto_2

    .line 2870
    :cond_20
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2875
    :sswitch_7
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2876
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    .line 2880
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v2, :cond_22

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v2, :cond_21

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v2, :cond_21

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v2, :cond_22

    .line 2883
    :cond_21
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2884
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2885
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2890
    :goto_c
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2892
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2893
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v2

    .line 2894
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2895
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-nez v2, :cond_24

    .line 2896
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2897
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2888
    :cond_22
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_c

    .line 2902
    :cond_23
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanEntityReference(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 2907
    :cond_24
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_25

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-nez v2, :cond_25

    .line 2908
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2909
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2913
    :cond_25
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_26

    .line 2914
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2915
    goto/16 :goto_0

    .line 2918
    :cond_26
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_27

    .line 2919
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2920
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-nez v2, :cond_27

    .line 2921
    const/16 v2, 0x9

    move v0, v2

    goto/16 :goto_2

    .line 2926
    :cond_27
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2927
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2928
    goto/16 :goto_0

    .line 2933
    :sswitch_8
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v3, "<?xml"

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2934
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2937
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lcom/sun/xml/stream/XMLScanner;->isValidNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2938
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 2939
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 2941
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v2, :cond_28

    .line 2942
    :goto_d
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lcom/sun/xml/stream/XMLScanner;->isValidNCName(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2943
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_d

    .line 2947
    :cond_28
    :goto_e
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lcom/sun/xml/stream/XMLScanner;->isValidNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2948
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_e

    .line 2951
    :cond_29
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v3, v3, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2952
    .local v1, "target":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 2953
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 2954
    .line 2963
    .end local v1    # "target":Ljava/lang/String;
    :cond_2a
    :goto_f
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 2964
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2968
    goto/16 :goto_0

    .line 2959
    :cond_2b
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    goto :goto_f

    .line 2972
    :sswitch_9
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->scanRootElementHook()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2974
    const/4 v2, -0x1

    move v0, v2

    goto/16 :goto_2

    .line 2976
    :cond_2c
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2977
    .line 2995
    .line 2997
    const/4 v2, -0x1

    move v0, v2

    goto/16 :goto_2

    .line 2980
    :sswitch_a
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 2981
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v2

    .line 2982
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2983
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2984
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_2

    .line 2546
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2609
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x17 -> :sswitch_5
        0x1a -> :sswitch_9
        0x1b -> :sswitch_4
        0x1c -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_8
        0x25 -> :sswitch_2
        0x26 -> :sswitch_1
        0x27 -> :sswitch_3
        0x28 -> :sswitch_a
    .end sparse-switch
.end method

.method protected scanForDoctypeHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3021
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    return v0
.end method

.method protected scanRootElementHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3056
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
    return v0
.end method
