.class public Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
.super Ljava/lang/Object;
.source "XMLResourceIdentifierImpl.java"

# interfaces
.implements Lorg/apache/xerces/xni/XMLResourceIdentifier;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "literalSystemId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "baseSystemId":Ljava/lang/String;
    move-object v4, p4

    .local v4, "expandedSystemId":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    .line 129
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    .line 130
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    .line 131
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    return-object v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    const/4 v2, 0x0

    move v1, v2

    .line 187
    .local v1, "code":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 188
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 190
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 191
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 193
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 194
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 196
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 197
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 199
    :cond_3
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    return v0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, p1

    .local v1, "baseSystemId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setExpandedSystemId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, p1

    .local v1, "expandedSystemId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setLiteralSystemId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, p1

    .local v1, "literalSystemId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v1, p1

    .local v1, "publicId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "literalSystemId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "baseSystemId":Ljava/lang/String;
    move-object v4, p4

    .local v4, "expandedSystemId":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    .line 121
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    .line 122
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    .line 123
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 205
    .local v1, "str":Ljava/lang/StringBuffer;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 206
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 208
    :cond_0
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 210
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 212
    :cond_1
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 213
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 214
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 216
    :cond_2
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 217
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 218
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 220
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    return-object v0
.end method
