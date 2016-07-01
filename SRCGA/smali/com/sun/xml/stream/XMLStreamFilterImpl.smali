.class public Lcom/sun/xml/stream/XMLStreamFilterImpl;
.super Ljava/lang/Object;
.source "XMLStreamFilterImpl.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# instance fields
.field private fCurrentEvent:I

.field private fEventAccepted:Z

.field private fStreamAdvancedByHasNext:Z

.field private fStreamFilter:Ljavax/xml/stream/StreamFilter;

.field private fStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)V
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, p2

    .local v2, "filter":Ljavax/xml/stream/StreamFilter;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    .line 69
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    .line 71
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 76
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 81
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    .line 82
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    .line 87
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v5}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 94
    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/XMLStreamFilterImpl;->findNextEvent()I
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 92
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 93
    .local v3, "xs":Ljavax/xml/stream/XMLStreamException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while creating a stream Filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findNextEvent()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 164
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    iput v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 166
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1, v2}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 168
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    move v0, v1

    .line 177
    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :goto_0
    return v0

    .line 174
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 175
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    move v0, v1

    goto :goto_0

    .line 177
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method private findNextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 181
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v2

    iput v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    .line 183
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1, v2}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    .line 185
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    move v0, v1

    .line 191
    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :goto_0
    return v0

    .line 188
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 189
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    move v0, v1

    goto :goto_0

    .line 191
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->close()V

    .line 199
    return-void
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getEventType()I
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "sourceStart":I
    move-object v2, p2

    .local v2, "target":[C
    move v3, p3

    .local v3, "targetStart":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public getTextCharacters()[C
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public getTextLength()I
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public getTextStart()I
    .locals 2

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public hasNext()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    if-nez v1, :cond_1

    .line 151
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLStreamFilterImpl;->findNextEvent()I

    move-result v2

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 152
    const/4 v1, 0x0

    move v0, v1

    .line 159
    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :goto_0
    return v0

    .line 154
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 157
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 159
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 4

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public isCharacters()Z
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public isEndElement()Z
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public isStandalone()Z
    .locals 2

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public isWhiteSpace()Z
    .locals 2

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 113
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    move v0, v2

    .line 117
    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    .local v1, "event":I
    :goto_0
    return v0

    .line 115
    .end local v1    # "event":I
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLStreamFilterImpl;->findNextEvent()I

    move-result v2

    move v1, v2

    .line 116
    .restart local v1    # "event":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 117
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The stream reader has reached the end of the document, or there are no more  items to return"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextTag()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fEventAccepted:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 131
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamAdvancedByHasNext:Z

    .line 132
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fCurrentEvent:I

    move v0, v2

    .line 137
    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    .local v1, "event":I
    :goto_0
    return v0

    .line 135
    .end local v1    # "event":I
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLStreamFilterImpl;->findNextTag()I

    move-result v2

    move v1, v2

    .line 136
    .restart local v1    # "event":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 137
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 139
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The stream reader has reached the end of the document, or there are no more  items to return"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Ljavax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method protected setStreamFilter(Ljavax/xml/stream/StreamFilter;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, p1

    .local v1, "sf":Ljavax/xml/stream/StreamFilter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    .line 103
    return-void
.end method

.method public standaloneSet()Z
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLStreamFilterImpl;
    return v0
.end method
