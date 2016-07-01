.class Lcom/sun/javafx/text/CharArrayIterator;
.super Ljava/lang/Object;
.source "CharArrayIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private begin:I

.field private chars:[C

.field private pos:I


# direct methods
.method public constructor <init>([C)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, p1

    .local v1, "chars":[C
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/text/CharArrayIterator;->reset([CI)V

    .line 39
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "begin":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/text/CharArrayIterator;->reset([CI)V

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    new-instance v2, Lcom/sun/javafx/text/CharArrayIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/CharArrayIterator;->begin:I

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/text/CharArrayIterator;-><init>([CI)V

    move-object v1, v2

    .line 179
    .local v1, "c":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    iput v3, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 180
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return-object v0
.end method

.method public current()C
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    if-ltz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 84
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    aget-char v1, v1, v2

    move v0, v1

    .line 87
    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :cond_0
    const v1, 0xffff

    move v0, v1

    goto :goto_0
.end method

.method public first()C
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 55
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/text/CharArrayIterator;->current()C

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return v0
.end method

.method public getBeginIndex()I
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->begin:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return v0
.end method

.method public getEndIndex()I
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->begin:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v2, v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return v0
.end method

.method public getIndex()I
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->begin:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return v0
.end method

.method public last()C
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v1, v1

    if-lez v1, :cond_0

    .line 67
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 72
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/text/CharArrayIterator;->current()C

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return v0

    .line 70
    .restart local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    goto :goto_0
.end method

.method public next()C
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 102
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    aget-char v1, v1, v2

    move v0, v1

    .line 107
    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :goto_0
    return v0

    .line 106
    .restart local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v2, v2

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 107
    const v1, 0xffff

    move v0, v1

    goto :goto_0
.end method

.method public previous()C
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    if-lez v1, :cond_0

    .line 121
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 122
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    aget-char v1, v1, v2

    move v0, v1

    .line 126
    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :goto_0
    return v0

    .line 125
    .restart local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 126
    const v1, 0xffff

    move v0, v1

    goto :goto_0
.end method

.method reset([C)V
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, p1

    .local v1, "chars":[C
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/text/CharArrayIterator;->reset([CI)V

    .line 185
    return-void
.end method

.method reset([CI)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "begin":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    .line 190
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/text/CharArrayIterator;->begin:I

    .line 191
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 192
    return-void
.end method

.method public setIndex(I)C
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/CharArrayIterator;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/CharArrayIterator;->begin:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 141
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/CharArrayIterator;->chars:[C

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 142
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Invalid index"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/text/CharArrayIterator;->pos:I

    .line 145
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/text/CharArrayIterator;->current()C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/text/CharArrayIterator;
    return v0
.end method
