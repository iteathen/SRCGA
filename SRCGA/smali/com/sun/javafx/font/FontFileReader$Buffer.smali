.class Lcom/sun/javafx/font/FontFileReader$Buffer;
.super Ljava/lang/Object;
.source "FontFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/FontFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Buffer"
.end annotation


# instance fields
.field data:[B

.field orig:I

.field pos:I


# direct methods
.method constructor <init>([BI)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v1, p1

    .local v1, "data":[B
    move v2, p2

    .local v2, "bufStart":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 111
    move-object v3, v0

    move-object v4, v0

    move v5, v2

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    iput v4, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    .line 112
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    .line 113
    return-void
.end method


# virtual methods
.method capacity()I
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    array-length v1, v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method get()B
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method get(I)B
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "tpos":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    add-int/2addr v2, v3

    move v1, v2

    .line 182
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method get(I[BII)V
    .locals 10

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "startPos":I
    move-object v2, p2

    .local v2, "dest":[B
    move v3, p3

    .local v3, "destPos":I
    move v4, p4

    .local v4, "destLen":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    move v7, v1

    add-int/2addr v6, v7

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    return-void
.end method

.method getChar()C
    .locals 10

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v1, v2

    .line 163
    .local v1, "val":I
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 164
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 165
    move v2, v1

    int-to-char v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method getChar(I)C
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "tpos":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    add-int/2addr v3, v4

    move v1, v3

    .line 155
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 156
    .local v2, "val":I
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v2, v3

    .line 157
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v2, v3

    .line 158
    move v3, v2

    int-to-char v3, v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method getInt()I
    .locals 10

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v1, v2

    .line 129
    .local v1, "val":I
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 130
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 131
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 132
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 133
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 134
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 135
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method getInt(I)I
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "tpos":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    add-int/2addr v3, v4

    move v1, v3

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 118
    .local v2, "val":I
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v2, v3

    .line 119
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v2, v3

    .line 120
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v2, v3

    .line 121
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v2, v3

    .line 122
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v2, v3

    .line 123
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v2, v3

    .line 124
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method getShort()S
    .locals 10

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v1, v2

    .line 148
    .local v1, "val":I
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v1, v2

    .line 149
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 150
    move v2, v1

    int-to-short v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method getShort(I)S
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "tpos":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    add-int/2addr v3, v4

    move v1, v3

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 141
    .local v2, "val":I
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v2, v3

    .line 142
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader$Buffer;->data:[B

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v2, v3

    .line 143
    move v3, v2

    int-to-short v3, v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    return v0
.end method

.method position(I)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "newPos":I
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->orig:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    .line 170
    return-void
.end method

.method skip(I)V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "nbytes":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/font/FontFileReader$Buffer;->pos:I

    .line 187
    return-void
.end method
