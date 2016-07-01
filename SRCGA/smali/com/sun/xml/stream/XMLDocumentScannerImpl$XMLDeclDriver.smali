.class public final Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
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
    name = "XMLDeclDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

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
    .line 715
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 716
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 720
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    sget-object v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->xmlDecl:[C

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 724
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 725
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 726
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 727
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    .line 730
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v3, v3, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 732
    .local v1, "target":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 733
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 735
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 737
    const/4 v2, 0x3

    move v0, v2

    .line 764
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
    .local v1, "e":Ljava/io/EOFException;
    :goto_1
    return v0

    .line 741
    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    .line 743
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 744
    const/4 v2, 0x7

    move v0, v2

    goto :goto_1

    .line 749
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    const/4 v2, 0x7

    move v0, v2

    goto :goto_1

    .line 762
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 763
    .restart local v1    # "e":Ljava/io/EOFException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "PrematureEOF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    const/4 v2, -0x1

    move v0, v2

    goto :goto_1
.end method
