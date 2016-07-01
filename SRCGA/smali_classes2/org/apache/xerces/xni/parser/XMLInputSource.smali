.class public Lorg/apache/xerces/xni/parser/XMLInputSource;
.super Ljava/lang/Object;
.source "XMLInputSource.java"


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCharStream:Ljava/io/Reader;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "systemId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "baseSystemId":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 127
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 128
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "systemId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "baseSystemId":Ljava/lang/String;
    move-object v4, p4

    .local v4, "byteStream":Ljava/io/InputStream;
    move-object v5, p5

    .local v5, "encoding":Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 163
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 164
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 165
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 166
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    .line 167
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "systemId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "baseSystemId":Ljava/lang/String;
    move-object v4, p4

    .local v4, "charStream":Ljava/io/Reader;
    move-object v5, p5

    .local v5, "encoding":Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 189
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 190
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 191
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 192
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    .line 193
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "resourceIdentifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 140
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 141
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 142
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    return-object v0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "baseSystemId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "byteStream":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    .line 253
    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "charStream":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    .line 273
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 221
    return-void
.end method
