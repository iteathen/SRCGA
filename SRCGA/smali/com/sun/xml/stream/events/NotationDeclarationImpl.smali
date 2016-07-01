.class public Lcom/sun/xml/stream/events/NotationDeclarationImpl;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "NotationDeclarationImpl.java"

# interfaces
.implements Ljavax/xml/stream/events/NotationDeclaration;


# instance fields
.field fName:Ljava/lang/String;

.field fPublicId:Ljava/lang/String;

.field fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 57
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 63
    move-object v1, v0

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->setEventType(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, p1

    .local v1, "notation":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 74
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 75
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->publicId:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 76
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->systemId:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 77
    move-object v2, v0

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->setEventType(I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "publicId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "systemId":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 57
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 58
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 59
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 67
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 68
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 69
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 70
    move-object v4, v0

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->setEventType(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    return-object v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method setPublicId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method setSystemId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NotationDeclarationImpl;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    const-string v3, "<!NOTATION "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 110
    move-object v2, v1

    const-string v3, " PUBLIC \""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    move-object v2, v1

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 120
    return-void

    .line 113
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v1

    const-string v3, " SYSTEM"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    move-object v2, v1

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    move-object v2, v1

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
