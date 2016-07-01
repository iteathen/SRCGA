.class public Lcom/sun/xml/stream/events/LocationImpl;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Ljavax/xml/stream/Location;


# instance fields
.field charOffset:I

.field colNo:I

.field lineNo:I

.field publicId:Ljava/lang/String;

.field systemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/xml/stream/Location;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    move-object v1, p1

    .local v1, "loc":Ljavax/xml/stream/Location;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/events/LocationImpl;->systemId:Ljava/lang/String;

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/events/LocationImpl;->publicId:Ljava/lang/String;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/sun/xml/stream/events/LocationImpl;->lineNo:I

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v3

    iput v3, v2, Lcom/sun/xml/stream/events/LocationImpl;->colNo:I

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result v3

    iput v3, v2, Lcom/sun/xml/stream/events/LocationImpl;->charOffset:I

    .line 65
    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/LocationImpl;->charOffset:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/LocationImpl;
    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/LocationImpl;->colNo:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/LocationImpl;
    return v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/LocationImpl;->lineNo:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/LocationImpl;
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/LocationImpl;->publicId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/LocationImpl;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/LocationImpl;->systemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/LocationImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/LocationImpl;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 89
    .local v1, "sbuffer":Ljava/lang/StringBuffer;
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Line number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/LocationImpl;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 90
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 91
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Column number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/LocationImpl;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 92
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 93
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/LocationImpl;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 94
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 95
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Public Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/LocationImpl;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 96
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 97
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CharacterOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/LocationImpl;->getCharacterOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 98
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 99
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/LocationImpl;
    return-object v0
.end method
