.class public Lcom/sun/xml/stream/events/EntityDeclarationImpl;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "EntityDeclarationImpl.java"

# interfaces
.implements Ljavax/xml/stream/events/EntityDeclaration;


# instance fields
.field private fEntityName:Ljava/lang/String;

.field private fNotationName:Ljava/lang/String;

.field private fReplacementText:Ljava/lang/String;

.field private fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 66
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "replacementText":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "replacementText":Ljava/lang/String;
    move-object v3, p3

    .local v3, "resourceIdentifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 75
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->init()V

    .line 76
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    .line 77
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    .line 78
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 79
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 117
    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 111
    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 104
    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getXMLResourceIdentifier()Lorg/apache/xerces/xni/XMLResourceIdentifier;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, v0

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->setEventType(I)V

    .line 138
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setEntityReplacementText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "replacementText":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setNotationName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "notationName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setXMLResourceIdentifier(Lorg/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "resourceIdentifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 95
    return-void
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v3, v1

    const-string v4, "<!ENTITY "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 148
    move-object v3, v1

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->charEncode(Ljava/io/Writer;Ljava/lang/String;)V

    .line 161
    :goto_0
    move-object v3, v1

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v1

    const-string v4, " NDATA "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 166
    :cond_0
    move-object v3, v1

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 167
    return-void

    .line 152
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->getPublicId()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 153
    .local v2, "pubId":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 154
    move-object v3, v1

    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 155
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    move-object v3, v1

    const-string v4, " SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 158
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
