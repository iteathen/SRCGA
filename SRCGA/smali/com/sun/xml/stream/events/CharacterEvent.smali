.class public Lcom/sun/xml/stream/events/CharacterEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "CharacterEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/Characters;


# instance fields
.field private fCheckIfSpaceNeeded:Z

.field private fData:Ljava/lang/String;

.field private fIsCData:Z

.field private fIsIgnorableWhitespace:Z

.field private fIsSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 70
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 73
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 74
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/CharacterEvent;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 70
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 82
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 83
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/CharacterEvent;->init()V

    .line 84
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move v2, p2

    .local v2, "flag":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 70
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 93
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/CharacterEvent;->init()V

    .line 94
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 95
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move v2, p2

    .local v2, "flag":Z
    move v3, p3

    .local v3, "isIgnorableWhiteSpace":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 68
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 70
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 105
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/CharacterEvent;->init()V

    .line 106
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 107
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 108
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/CharacterEvent;->fIsIgnorableWhitespace:Z

    .line 109
    return-void
.end method

.method private checkWhiteSpace()V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 206
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 207
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 210
    .line 214
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 207
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/CharacterEvent;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/CharacterEvent;->setEventType(I)V

    .line 113
    return-void
.end method

.method public isCData()Z
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/CharacterEvent;
    return v0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fIsIgnorableWhitespace:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/CharacterEvent;
    return v0
.end method

.method public isWhiteSpace()Z
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    if-eqz v1, :cond_0

    .line 197
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/CharacterEvent;->checkWhiteSpace()V

    .line 198
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 200
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fIsSpace:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/CharacterEvent;
    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 129
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/CharacterEvent;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 148
    .end local v0    # "this":Lcom/sun/xml/stream/events/CharacterEvent;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/CharacterEvent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/events/CharacterEvent;->fIsCData:Z

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<![CDATA["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/CharacterEvent;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/events/CharacterEvent;->charEncode(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method
