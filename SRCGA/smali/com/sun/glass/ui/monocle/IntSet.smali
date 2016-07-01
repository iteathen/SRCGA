.class Lcom/sun/glass/ui/monocle/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# instance fields
.field private elements:[I

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    .line 35
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    return-void
.end method

.method private getIndex(I)I
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move v1, p1

    .local v1, "value":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v3, v4, :cond_2

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v4, v2

    aget v3, v3, v4

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 72
    move v3, v2

    move v0, v3

    .line 77
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    :goto_1
    return v0

    .line 73
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v4, v2

    aget v3, v3, v4

    move v4, v1

    if-le v3, v4, :cond_1

    .line 74
    move v3, v2

    neg-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_2
    move v3, v2

    neg-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method addInt(I)V
    .locals 11

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move v1, p1

    .local v1, "value":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/IntSet;->getIndex(I)I

    move-result v4

    move v2, v4

    .line 39
    .local v2, "i":I
    move v4, v2

    if-gez v4, :cond_2

    .line 40
    const/4 v4, -0x1

    move v5, v2

    rsub-int/lit8 v4, v5, -0x1

    move v3, v4

    .line 41
    .local v3, "insertionPoint":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 42
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    .line 44
    :cond_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-eq v4, v5, :cond_1

    .line 45
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    move v9, v3

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v5, v3

    move v6, v1

    aput v6, v4, v5

    .line 50
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    .line 52
    .end local v3    # "insertionPoint":I
    :cond_2
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    .line 114
    return-void
.end method

.method containsInt(I)Z
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->getIndex(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method copyTo(Lcom/sun/glass/ui/monocle/IntSet;)V
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, p1

    .local v1, "target":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v2, v3, :cond_0

    .line 127
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    .line 131
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    .line 132
    return-void

    .line 129
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    const/4 v3, 0x0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method difference(Lcom/sun/glass/ui/monocle/IntSet;Lcom/sun/glass/ui/monocle/IntSet;)V
    .locals 10

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, p1

    .local v1, "dest":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v2, p2

    .local v2, "compared":Lcom/sun/glass/ui/monocle/IntSet;
    const/4 v7, 0x0

    move v3, v7

    .line 88
    .local v3, "i":I
    const/4 v7, 0x0

    move v4, v7

    .line 89
    .local v4, "j":I
    :goto_0
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v7, v8, :cond_2

    move v7, v4

    move-object v8, v2

    iget v8, v8, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v7, v8, :cond_2

    .line 90
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v8, v3

    aget v7, v7, v8

    move v5, v7

    .line 91
    .local v5, "a":I
    move-object v7, v2

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v8, v4

    aget v7, v7, v8

    move v6, v7

    .line 92
    .local v6, "b":I
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_0

    .line 94
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/IntSet;->addInt(I)V

    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 104
    :goto_1
    goto :goto_0

    .line 96
    :cond_0
    move v7, v5

    move v8, v6

    if-le v7, v8, :cond_1

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    .end local v5    # "a":I
    .end local v6    # "b":I
    :cond_2
    :goto_2
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v7, v8, :cond_3

    .line 107
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v9, v3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/IntSet;->addInt(I)V

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 110
    :cond_3
    return-void
.end method

.method public equals(Lcom/sun/glass/ui/monocle/IntSet;)Z
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, p1

    .local v1, "set":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ne v3, v4, :cond_2

    .line 136
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v3, v4, :cond_1

    .line 137
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v4, v2

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v5, v2

    aget v4, v4, v5

    if-eq v3, v4, :cond_0

    .line 138
    const/4 v3, 0x0

    move v0, v3

    .line 143
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    .end local v2    # "i":I
    :goto_1
    return v0

    .line 136
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 143
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/glass/ui/monocle/IntSet;

    if-eqz v2, :cond_0

    .line 149
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->equals(Lcom/sun/glass/ui/monocle/IntSet;)Z

    move-result v2

    move v0, v2

    .line 151
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method get(I)I
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeInt(I)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move v1, p1

    .local v1, "value":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/IntSet;->getIndex(I)I

    move-result v3

    move v2, v3

    .line 56
    .local v2, "i":I
    move v3, v2

    if-ltz v3, :cond_1

    .line 57
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 58
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_0
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    .line 62
    :cond_1
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/IntSet;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "IntSet["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 157
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    if-ge v3, v4, :cond_1

    .line 158
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->elements:[I

    move v5, v2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 159
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/IntSet;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 160
    move-object v3, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    move-object v3, v1

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 164
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/IntSet;
    return-object v0
.end method
