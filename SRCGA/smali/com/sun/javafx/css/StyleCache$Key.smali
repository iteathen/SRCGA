.class public final Lcom/sun/javafx/css/StyleCache$Key;
.super Ljava/lang/Object;
.source "StyleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field private hash:I

.field final styleMapIds:[I


# direct methods
.method public constructor <init>(Lcom/sun/javafx/css/StyleCache$Key;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/css/StyleCache$Key;-><init>([II)V

    .line 117
    return-void
.end method

.method public constructor <init>([II)V
    .locals 8

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v1, p1

    .local v1, "styleMapIds":[I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 179
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    .line 111
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    .line 112
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .line 174
    .end local v0    # "this":Lcom/sun/javafx/css/StyleCache$Key;
    :goto_0
    return v0

    .line 146
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleCache$Key;
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 147
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 150
    :cond_2
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/css/StyleCache$Key;

    move-object v2, v4

    .line 152
    .local v2, "other":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 155
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 156
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 155
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 160
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    if-nez v4, :cond_7

    .line 161
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 164
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    array-length v4, v4

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    array-length v5, v5

    if-eq v4, v5, :cond_8

    .line 165
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 168
    :cond_8
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_3
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 169
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    move v5, v3

    aget v4, v4, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    move v6, v3

    aget v5, v5, v6

    if-eq v4, v5, :cond_9

    .line 170
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 168
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 174
    :cond_a
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public getStyleMapIds()[I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleCache$Key;
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 130
    move-object v3, v0

    const/4 v4, 0x3

    iput v4, v3, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    if-eqz v3, :cond_0

    .line 132
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 133
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 134
    .local v2, "id":I
    move-object v3, v0

    const/16 v4, 0x11

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    move v6, v2

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/StyleCache$Key;->hash:I

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/StyleCache$Key;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleCache$Key;->styleMapIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleCache$Key;
    return-object v0
.end method
