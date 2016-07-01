.class public final Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Element"
.end annotation


# instance fields
.field public fRawname:[C

.field public next:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;

.field public qname:Lorg/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/QName;Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;)V
    .locals 5

    .prologue
    .line 1915
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;
    move-object v1, p1

    .local v1, "qname":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "next":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1916
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;->qname:Lorg/apache/xerces/xni/QName;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 1917
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;->fRawname:[C

    .line 1918
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;->next:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;

    .line 1919
    return-void
.end method
