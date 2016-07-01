.class public final Ljavafx/scene/control/IndexRange;
.super Ljava/lang/Object;
.source "IndexRange.java"


# static fields
.field public static final VALUE_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private end:I

.field private start:I


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "start"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "end"
        .end annotation
    .end param

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 52
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 56
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljavafx/scene/control/IndexRange;->start:I

    .line 57
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/scene/control/IndexRange;->end:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/IndexRange;)V
    .locals 4
    .param p1    # Ljavafx/scene/control/IndexRange;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "range"
        .end annotation
    .end param

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    move-object v1, p1

    .local v1, "range":Ljavafx/scene/control/IndexRange;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Ljavafx/scene/control/IndexRange;->start:I

    iput v3, v2, Ljavafx/scene/control/IndexRange;->start:I

    .line 69
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Ljavafx/scene/control/IndexRange;->end:I

    iput v3, v2, Ljavafx/scene/control/IndexRange;->end:I

    .line 70
    return-void
.end method

.method public static normalize(II)Ljavafx/scene/control/IndexRange;
    .locals 8

    .prologue
    .line 138
    move v0, p0

    .local v0, "v1":I
    move v1, p1

    .local v1, "v2":I
    new-instance v2, Ljavafx/scene/control/IndexRange;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move v4, v0

    move v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v0

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/IndexRange;-><init>(II)V

    move-object v0, v2

    .end local v0    # "v1":I
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/IndexRange;
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 152
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 155
    :cond_0
    move-object v4, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 156
    .local v1, "values":[Ljava/lang/String;
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 157
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 162
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 163
    .local v2, "start":I
    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 165
    .local v3, "end":I
    move v4, v2

    move v5, v3

    invoke-static {v4, v5}, Ljavafx/scene/control/IndexRange;->normalize(II)Ljavafx/scene/control/IndexRange;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 107
    .end local v0    # "this":Ljavafx/scene/control/IndexRange;
    :goto_0
    return v0

    .line 101
    .restart local v0    # "this":Ljavafx/scene/control/IndexRange;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/control/IndexRange;

    if-eqz v3, :cond_2

    .line 102
    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/IndexRange;

    move-object v2, v3

    .line 103
    .local v2, "range":Ljavafx/scene/control/IndexRange;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/IndexRange;->start:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/control/IndexRange;->start:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/IndexRange;->end:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/control/IndexRange;->end:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 107
    .end local v2    # "range":Ljavafx/scene/control/IndexRange;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/IndexRange;->end:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexRange;
    return v0
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/IndexRange;->end:I

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/IndexRange;->start:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexRange;
    return v0
.end method

.method public getStart()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/IndexRange;->start:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexRange;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    const/16 v1, 0x1f

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/IndexRange;->start:I

    mul-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/IndexRange;->end:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexRange;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRange;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/IndexRange;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/IndexRange;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexRange;
    return-object v0
.end method
