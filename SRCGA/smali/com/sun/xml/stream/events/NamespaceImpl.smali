.class public Lcom/sun/xml/stream/events/NamespaceImpl;
.super Lcom/sun/xml/stream/events/AttributeImpl;
.source "NamespaceImpl.java"

# interfaces
.implements Ljavax/xml/stream/events/Namespace;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>()V

    .line 58
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/NamespaceImpl;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "xmlns"

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v5, ""

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/NamespaceImpl;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, v0

    const-string v4, "xmlns"

    const-string v5, "http://www.w3.org/2000/xmlns/"

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/NamespaceImpl;->init()V

    .line 70
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    const/16 v1, 0xd

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    return v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/NamespaceImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/NamespaceImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    move-object v1, v2

    .line 91
    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 92
    move-object v2, v1

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 93
    .end local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, v0

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/NamespaceImpl;->setEventType(I)V

    .line 110
    return-void
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/NamespaceImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    move-object v1, v2

    .line 75
    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x1

    move v0, v2

    .line 77
    .end local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isNamespace()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    return v0
.end method

.method setNamespaceURI(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/NamespaceImpl;->setValue(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method setPrefix(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 82
    move-object v2, v0

    new-instance v3, Ljavax/xml/namespace/QName;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "http://www.w3.org/2000/xmlns/"

    const-string v6, ""

    const-string v7, "xmlns"

    invoke-direct {v4, v5, v6, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/NamespaceImpl;->setName(Ljavax/xml/namespace/QName;)V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    move-object v2, v0

    new-instance v3, Ljavax/xml/namespace/QName;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "http://www.w3.org/2000/xmlns/"

    move-object v6, v1

    const-string v7, "xmlns"

    invoke-direct {v4, v5, v6, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/NamespaceImpl;->setName(Ljavax/xml/namespace/QName;)V

    goto :goto_0
.end method
