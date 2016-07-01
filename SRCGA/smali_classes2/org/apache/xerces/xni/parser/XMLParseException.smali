.class public Lorg/apache/xerces/xni/parser/XMLParseException;
.super Lorg/apache/xerces/xni/XNIException;
.source "XMLParseException.java"


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fColumnNumber:I

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLineNumber:I

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, p1

    .local v1, "locator":Lorg/apache/xerces/xni/XMLLocator;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 94
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 97
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 106
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 107
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    .line 108
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    .line 109
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    .line 110
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    .line 111
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 112
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 114
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, p1

    .local v1, "locator":Lorg/apache/xerces/xni/XMLLocator;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "exception":Ljava/lang/Exception;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 94
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 97
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 120
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    .line 121
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    .line 122
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    .line 123
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    .line 124
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 125
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 126
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return-object v0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 170
    .local v1, "str":Ljava/lang/StringBuffer;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 171
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 173
    :cond_0
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 174
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 175
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 177
    :cond_1
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 179
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 181
    :cond_2
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 182
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 183
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 185
    :cond_3
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 186
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 187
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 189
    :cond_4
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 190
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 191
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 192
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 193
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 194
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 195
    .local v2, "message":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_5

    .line 196
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v4

    move-object v3, v4

    .line 197
    .local v3, "exception":Ljava/lang/Exception;
    move-object v4, v3

    if-eqz v4, :cond_5

    .line 198
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 201
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_5
    move-object v4, v2

    if-eqz v4, :cond_6

    .line 202
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 204
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLParseException;
    return-object v0
.end method
