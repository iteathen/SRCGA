.class public Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lcom/sun/xml/stream/XMLBufferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "XMLBufferListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 1380
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 3

    .prologue
    .line 1382
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->refresh(I)V

    .line 1383
    return-void
.end method

.method public refresh(I)V
    .locals 8

    .prologue
    .line 1393
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;
    move v1, p1

    .local v1, "refreshPosition":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingAttributes:Z

    if-eqz v3, :cond_0

    .line 1394
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->refresh()V

    .line 1395
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    if-eqz v3, :cond_2

    .line 1396
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v3

    move-object v2, v3

    .line 1397
    .local v2, "entity":Lcom/sun/xml/stream/Entity;
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_1

    .line 1398
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v4, v2

    check-cast v4, Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 1400
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v4, v2

    check-cast v4, Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v6, v6, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v7, v7, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1401
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move v4, v1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 1403
    .end local v2    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v4, 0x25

    if-ne v3, v4, :cond_3

    .line 1406
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1408
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 1409
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fUsebuffer:Z

    .line 1411
    :cond_3
    return-void
.end method
