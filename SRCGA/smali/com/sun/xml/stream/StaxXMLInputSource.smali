.class public Lcom/sun/xml/stream/StaxXMLInputSource;
.super Ljava/lang/Object;
.source "StaxXMLInputSource.java"


# instance fields
.field fEventReader:Ljavax/xml/stream/XMLEventReader;

.field fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field fStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, p1

    .local v1, "eventReader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/StaxXMLInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, p1

    .local v1, "streamReader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/StaxXMLInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/StaxXMLInputSource;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    .line 77
    return-void
.end method


# virtual methods
.method public getXMLEventReader()Ljavax/xml/stream/XMLEventReader;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxXMLInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    return-object v0
.end method

.method public getXMLInputSource()Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxXMLInputSource;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    return-object v0
.end method

.method public getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxXMLInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    return-object v0
.end method

.method public hasXMLStreamOrXMLEventReader()Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxXMLInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxXMLInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/StaxXMLInputSource;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
