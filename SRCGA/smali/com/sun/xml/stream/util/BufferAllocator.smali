.class public Lcom/sun/xml/stream/util/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# static fields
.field public static LARGE_SIZE_LIMIT:I

.field public static MEDIUM_SIZE_LIMIT:I

.field public static SMALL_SIZE_LIMIT:I


# instance fields
.field largeByteBuffer:[B

.field largeCharBuffer:[C

.field mediumByteBuffer:[B

.field mediumCharBuffer:[C

.field smallByteBuffer:[B

.field smallCharBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x80

    sput v0, Lcom/sun/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    .line 55
    const/16 v0, 0x800

    sput v0, Lcom/sun/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    .line 56
    const/16 v0, 0x2000

    sput v0, Lcom/sun/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public getByteBuffer(I)[B
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/BufferAllocator;
    move v1, p1

    .local v1, "size":I
    move v3, v1

    sget v4, Lcom/sun/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt v3, v4, :cond_0

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/util/BufferAllocator;->smallByteBuffer:[B

    move-object v2, v3

    .line 106
    .local v2, "buffer":[B
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/util/BufferAllocator;->smallByteBuffer:[B

    .line 107
    move-object v3, v2

    move-object v0, v3

    .line 119
    .end local v0    # "this":Lcom/sun/xml/stream/util/BufferAllocator;
    .end local v2    # "buffer":[B
    :goto_0
    return-object v0

    .line 109
    .restart local v0    # "this":Lcom/sun/xml/stream/util/BufferAllocator;
    :cond_0
    move v3, v1

    sget v4, Lcom/sun/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt v3, v4, :cond_1

    .line 110
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/util/BufferAllocator;->mediumByteBuffer:[B

    move-object v2, v3

    .line 111
    .restart local v2    # "buffer":[B
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/util/BufferAllocator;->mediumByteBuffer:[B

    .line 112
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 114
    .end local v2    # "buffer":[B
    :cond_1
    move v3, v1

    sget v4, Lcom/sun/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt v3, v4, :cond_2

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/util/BufferAllocator;->largeByteBuffer:[B

    move-object v2, v3

    .line 116
    .restart local v2    # "buffer":[B
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/util/BufferAllocator;->largeByteBuffer:[B

    .line 117
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 119
    .end local v2    # "buffer":[B
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getCharBuffer(I)[C
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/BufferAllocator;
    move v1, p1

    .local v1, "size":I
    move v3, v1

    sget v4, Lcom/sun/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt v3, v4, :cond_0

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/util/BufferAllocator;->smallCharBuffer:[C

    move-object v2, v3

    .line 72
    .local v2, "buffer":[C
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/util/BufferAllocator;->smallCharBuffer:[C

    .line 73
    move-object v3, v2

    move-object v0, v3

    .line 85
    .end local v0    # "this":Lcom/sun/xml/stream/util/BufferAllocator;
    .end local v2    # "buffer":[C
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "this":Lcom/sun/xml/stream/util/BufferAllocator;
    :cond_0
    move v3, v1

    sget v4, Lcom/sun/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt v3, v4, :cond_1

    .line 76
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/util/BufferAllocator;->mediumCharBuffer:[C

    move-object v2, v3

    .line 77
    .restart local v2    # "buffer":[C
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/util/BufferAllocator;->mediumCharBuffer:[C

    .line 78
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 80
    .end local v2    # "buffer":[C
    :cond_1
    move v3, v1

    sget v4, Lcom/sun/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt v3, v4, :cond_2

    .line 81
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/util/BufferAllocator;->largeCharBuffer:[C

    move-object v2, v3

    .line 82
    .restart local v2    # "buffer":[C
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/util/BufferAllocator;->largeCharBuffer:[C

    .line 83
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 85
    .end local v2    # "buffer":[C
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public returnByteBuffer([B)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v1

    if-nez v2, :cond_0

    .line 124
    .line 135
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v2, v1

    array-length v2, v2

    sget v3, Lcom/sun/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt v2, v3, :cond_2

    .line 127
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/BufferAllocator;->smallByteBuffer:[B

    .line 135
    :cond_1
    :goto_1
    goto :goto_0

    .line 129
    :cond_2
    move-object v2, v1

    array-length v2, v2

    sget v3, Lcom/sun/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt v2, v3, :cond_3

    .line 130
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/BufferAllocator;->mediumByteBuffer:[B

    goto :goto_1

    .line 132
    :cond_3
    move-object v2, v1

    array-length v2, v2

    sget v3, Lcom/sun/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt v2, v3, :cond_1

    .line 133
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/BufferAllocator;->largeByteBuffer:[B

    goto :goto_1
.end method

.method public returnCharBuffer([C)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v1, p1

    .local v1, "c":[C
    move-object v2, v1

    if-nez v2, :cond_0

    .line 90
    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v2, v1

    array-length v2, v2

    sget v3, Lcom/sun/xml/stream/util/BufferAllocator;->SMALL_SIZE_LIMIT:I

    if-gt v2, v3, :cond_2

    .line 93
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/BufferAllocator;->smallCharBuffer:[C

    .line 101
    :cond_1
    :goto_1
    goto :goto_0

    .line 95
    :cond_2
    move-object v2, v1

    array-length v2, v2

    sget v3, Lcom/sun/xml/stream/util/BufferAllocator;->MEDIUM_SIZE_LIMIT:I

    if-gt v2, v3, :cond_3

    .line 96
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/BufferAllocator;->mediumCharBuffer:[C

    goto :goto_1

    .line 98
    :cond_3
    move-object v2, v1

    array-length v2, v2

    sget v3, Lcom/sun/xml/stream/util/BufferAllocator;->LARGE_SIZE_LIMIT:I

    if-gt v2, v3, :cond_1

    .line 99
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/BufferAllocator;->largeCharBuffer:[C

    goto :goto_1
.end method
