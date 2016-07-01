.class public Lorg/apache/xerces/util/XMLStringBuffer;
.super Lorg/apache/xerces/xni/XMLString;
.source "XMLStringBuffer.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, v0

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(C)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 123
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 124
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    .line 117
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 129
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLString;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, p1

    .local v1, "s":Lorg/apache/xerces/xni/XMLString;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 141
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 142
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 135
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 136
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move v1, p1

    .local v1, "c":C
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 161
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v2, v4

    .line 162
    .local v2, "newLength":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    const/16 v6, 0x20

    add-int/lit8 v5, v5, 0x20

    if-ge v4, v5, :cond_0

    .line 163
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v4, v4

    const/16 v5, 0x20

    add-int/lit8 v4, v4, 0x20

    move v2, v4

    .line 165
    :cond_0
    move v4, v2

    new-array v4, v4, [C

    move-object v3, v4

    .line 166
    .local v3, "tmp":[C
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 169
    .end local v2    # "newLength":I
    .end local v3    # "tmp":[C
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v6, v1

    aput-char v6, v4, v5

    .line 170
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    .line 171
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    .line 180
    .local v2, "length":I
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 181
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 182
    .local v3, "newLength":I
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    move v7, v2

    add-int/2addr v6, v7

    const/16 v7, 0x20

    add-int/lit8 v6, v6, 0x20

    if-ge v5, v6, :cond_0

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    move v6, v2

    add-int/2addr v5, v6

    const/16 v6, 0x20

    add-int/lit8 v5, v5, 0x20

    move v3, v5

    .line 186
    :cond_0
    move v5, v3

    new-array v5, v5, [C

    move-object v4, v5

    .line 187
    .local v4, "newch":[C
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 190
    .end local v3    # "newLength":I
    .end local v4    # "newch":[C
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 191
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v7, v2

    add-int/2addr v6, v7

    iput v6, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    .line 192
    return-void
.end method

.method public append(Lorg/apache/xerces/xni/XMLString;)V
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, p1

    .local v1, "s":Lorg/apache/xerces/xni/XMLString;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 226
    return-void
.end method

.method public append([CII)V
    .locals 12

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, p1

    .local v1, "ch":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v7, v7

    if-le v6, v7, :cond_1

    .line 203
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 204
    .local v4, "newLength":I
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v7, v7

    move v8, v3

    add-int/2addr v7, v8

    const/16 v8, 0x20

    add-int/lit8 v7, v7, 0x20

    if-ge v6, v7, :cond_0

    .line 205
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    move v7, v3

    add-int/2addr v6, v7

    const/16 v7, 0x20

    add-int/lit8 v6, v6, 0x20

    move v4, v6

    .line 207
    :cond_0
    move v6, v4

    new-array v6, v6, [C

    move-object v5, v6

    .line 208
    .local v5, "newch":[C
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 213
    .end local v4    # "newLength":I
    .end local v5    # "newch":[C
    :cond_1
    move-object v6, v1

    if-eqz v6, :cond_2

    move v6, v3

    if-lez v6, :cond_2

    .line 214
    move-object v6, v1

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v8, v3

    add-int/2addr v7, v8

    iput v7, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    .line 217
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    .line 151
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    .line 152
    return-void
.end method
