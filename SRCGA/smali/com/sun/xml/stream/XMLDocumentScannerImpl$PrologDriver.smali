.class public final Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PrologDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    sparse-switch v2, :sswitch_data_0

    .line 857
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    .line 859
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v2, :pswitch_data_0

    .line 979
    .line 981
    :goto_1
    :pswitch_0
    const/4 v2, -0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;
    .local v1, "e":Ljava/io/EOFException;
    :goto_2
    return v0

    .line 804
    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;
    :sswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v2

    .line 805
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 808
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 809
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 812
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 814
    goto :goto_0

    .line 818
    :sswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 819
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 820
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 822
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 823
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 824
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 825
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "InvalidCommentStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 830
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    sget-object v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->DOCTYPE:[C

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 831
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 832
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v2

    move-object v1, v2

    .line 833
    .local v1, "entity":Lcom/sun/xml/stream/Entity;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v2, :cond_6

    .line 834
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v1

    check-cast v3, Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 836
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 837
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    if-nez v2, :cond_7

    .line 838
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    new-instance v3, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 839
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "<!DOCTYPE"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 841
    goto/16 :goto_0

    .line 843
    .end local v1    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "MarkupNotRecognizedInProlog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 847
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 848
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 851
    :cond_a
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "MarkupNotRecognizedInProlog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 974
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 975
    .local v1, "e":Ljava/io/EOFException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "PrematureEOF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    const/4 v2, -0x1

    move v0, v2

    goto/16 :goto_2

    .line 863
    .end local v1    # "e":Ljava/io/EOFException;
    :pswitch_1
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 864
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 866
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    move v0, v2

    goto/16 :goto_2

    .line 870
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanComment()V

    .line 871
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 872
    const/4 v2, 0x5

    move v0, v2

    goto/16 :goto_2

    .line 878
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 879
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanPI(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 880
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 881
    const/4 v2, 0x3

    move v0, v2

    goto/16 :goto_2

    .line 887
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v2, :cond_b

    .line 888
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "AlreadySeenDoctype"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 894
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanDoctypeDecl(Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 896
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 898
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 899
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    if-nez v2, :cond_c

    .line 900
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    new-instance v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 902
    :cond_c
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 903
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    move v0, v2

    goto/16 :goto_2

    .line 920
    :cond_d
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v2, :cond_f

    .line 921
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v2

    move-object v1, v2

    .line 922
    .local v1, "entity":Lcom/sun/xml/stream/Entity;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v2, :cond_e

    .line 923
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v1

    check-cast v3, Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 925
    :cond_e
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 928
    .end local v1    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_f
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v2, :cond_10

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v2, :cond_13

    .line 929
    :cond_10
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v2, :cond_12

    .line 930
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 933
    :goto_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 934
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    if-nez v2, :cond_11

    .line 935
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    new-instance v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 936
    :cond_11
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    move v0, v2

    goto/16 :goto_2

    .line 932
    :cond_12
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_3

    .line 946
    :cond_13
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v2, :cond_14

    .line 947
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 950
    :cond_14
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 951
    const/16 v2, 0xb

    move v0, v2

    goto/16 :goto_2

    .line 955
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "ContentIllegalInProlog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 959
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "ReferenceIllegalInProlog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 802
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch

    .line 859
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
