.class public Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
.super Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
.source "XMLDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContentDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V

    return-void
.end method


# virtual methods
.method protected elementDepthIsZeroHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1196
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 1197
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
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
    .line 1235
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    move-object v1, p1

    .local v1, "e":Ljava/io/EOFException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "PrematureEOF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    return-void
.end method

.method protected scanForDoctypeHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    sget-object v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->DOCTYPE:[C

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1173
    const/4 v1, 0x1

    move v0, v1

    .line 1175
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected scanRootElementHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1218
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 1219
    const/4 v1, 0x1

    move v0, v1

    .line 1221
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
