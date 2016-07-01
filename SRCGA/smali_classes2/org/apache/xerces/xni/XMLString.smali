.class public Lorg/apache/xerces/xni/XMLString;
.super Ljava/lang/Object;
.source "XMLString.java"


# instance fields
.field public ch:[C

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLString;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, p1

    .local v1, "string":Lorg/apache/xerces/xni/XMLString;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 131
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 132
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 8

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 119
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    .line 168
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xni/XMLString;->offset:I

    .line 169
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 170
    return-void
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 204
    const/4 v3, 0x0

    move v0, v3

    .line 219
    .end local v0    # "this":Lorg/apache/xerces/xni/XMLString;
    :goto_0
    return v0

    .line 206
    .restart local v0    # "this":Lorg/apache/xerces/xni/XMLString;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 207
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 213
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    if-ge v3, v4, :cond_3

    .line 214
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v5, v2

    add-int/2addr v4, v5

    aget-char v3, v3, v4

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    .line 215
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 213
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public equals([CII)Z
    .locals 9

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v1

    if-nez v5, :cond_0

    .line 182
    const/4 v5, 0x0

    move v0, v5

    .line 193
    .end local v0    # "this":Lorg/apache/xerces/xni/XMLString;
    :goto_0
    return v0

    .line 184
    .restart local v0    # "this":Lorg/apache/xerces/xni/XMLString;
    :cond_0
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    move v6, v3

    if-eq v5, v6, :cond_1

    .line 185
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 188
    :cond_1
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 189
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v7, v4

    add-int/2addr v6, v7

    aget-char v5, v5, v6

    move-object v6, v1

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    aget-char v6, v6, v7

    if-eq v5, v6, :cond_2

    .line 190
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public setValues(Lorg/apache/xerces/xni/XMLString;)V
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, p1

    .local v1, "s":Lorg/apache/xerces/xni/XMLString;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 163
    return-void
.end method

.method public setValues([CII)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/xni/XMLString;->ch:[C

    .line 148
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    .line 149
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XMLString;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/XMLString;
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/xni/XMLString;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
