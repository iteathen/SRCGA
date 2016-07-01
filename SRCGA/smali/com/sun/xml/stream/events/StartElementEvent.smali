.class public Lcom/sun/xml/stream/events/StartElementEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "StartElementEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/StartElement;


# instance fields
.field private fAttributes:Ljava/util/Map;

.field private fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private fNamespaces:Ljava/util/List;

.field private fQName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localpart":Ljava/lang/String;
    move-object v4, v0

    new-instance v5, Ljavax/xml/namespace/QName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 81
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/StartElementEvent;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/events/StartElement;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "startelement":Ljavax/xml/stream/events/StartElement;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 87
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/StartElementEvent;->addAttributes(Ljava/util/Iterator;)V

    .line 88
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/StartElementEvent;->addNamespaceAttributes(Ljava/util/Iterator;)V

    .line 89
    return-void
.end method


# virtual methods
.method addAttribute(Ljavax/xml/stream/events/Attribute;)V
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "attr":Ljavax/xml/stream/events/Attribute;
    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/events/Attribute;->isNamespace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method addAttributes(Ljava/util/Iterator;)V
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "attrs":Ljava/util/Iterator;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 207
    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/events/Attribute;

    move-object v2, v3

    .line 210
    .local v2, "attr":Ljavax/xml/stream/events/Attribute;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    move-object v4, v2

    invoke-interface {v4}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 211
    goto :goto_1

    .line 212
    .end local v2    # "attr":Ljavax/xml/stream/events/Attribute;
    :cond_1
    goto :goto_0
.end method

.method addNamespaceAttribute(Ljavax/xml/stream/events/Namespace;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "attr":Ljavax/xml/stream/events/Namespace;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 216
    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 218
    goto :goto_0
.end method

.method addNamespaceAttributes(Ljava/util/Iterator;)V
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "attrs":Ljava/util/Iterator;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 222
    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/events/Namespace;

    move-object v2, v3

    .line 225
    .local v2, "attr":Ljavax/xml/stream/events/Namespace;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 226
    goto :goto_1

    .line 227
    .end local v2    # "attr":Ljavax/xml/stream/events/Namespace;
    :cond_1
    goto :goto_0
.end method

.method public getAttributeByName(Ljavax/xml/namespace/QName;)Ljavax/xml/stream/events/Attribute;
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    move-object v0, v2

    .line 123
    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/Attribute;

    move-object v0, v2

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v1, v2

    .line 108
    .local v1, "coll":Ljava/util/Collection;
    new-instance v2, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    move-object v0, v2

    .line 110
    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    .end local v1    # "coll":Ljava/util/Collection;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :cond_0
    new-instance v2, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>()V

    move-object v0, v2

    goto :goto_0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/StartElementEvent;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/StartElementEvent;->getNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 136
    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 136
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    move-object v0, v1

    .line 117
    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :cond_0
    new-instance v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected init()V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/StartElementEvent;->setEventType(I)V

    .line 93
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    .line 94
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    .line 95
    return-void
.end method

.method public nameAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    const-string v1, ""

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 172
    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :goto_0
    return-object v0

    .line 169
    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fQName:Ljavax/xml/namespace/QName;

    .line 103
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "nc":Ljavax/xml/namespace/NamespaceContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/events/StartElementEvent;->nameAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 142
    .local v1, "s":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/StartElementEvent;->getAttributes()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 144
    .local v2, "it":Ljava/util/Iterator;
    const/4 v4, 0x0

    move-object v3, v4

    .line 145
    .local v3, "attr":Ljavax/xml/stream/events/Attribute;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/stream/events/Attribute;

    move-object v3, v4

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 151
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "attr":Ljavax/xml/stream/events/Attribute;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 152
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 153
    .restart local v2    # "it":Ljava/util/Iterator;
    const/4 v4, 0x0

    move-object v3, v4

    .line 154
    .local v3, "attr":Ljavax/xml/stream/events/Namespace;
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/stream/events/Namespace;

    move-object v3, v4

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    .line 159
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "attr":Ljavax/xml/stream/events/Namespace;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 160
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartElementEvent;
    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/StartElementEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 195
    return-void
.end method
