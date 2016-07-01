.class public final Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
.super Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NSContentDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    return-void
.end method


# virtual methods
.method protected scanRootElementHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->scanStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setScannerState(I)V

    .line 730
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 731
    const/4 v1, 0x1

    move v0, v1

    .line 733
    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
