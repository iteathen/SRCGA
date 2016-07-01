.class public final Ljava/time/jdk8/Jdk8Methods;
.super Ljava/lang/Object;
.source "Jdk8Methods.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljava/time/jdk8/Jdk8Methods;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static compareInts(II)I
    .locals 4

    .prologue
    .line 110
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, v0

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 111
    const/4 v2, -0x1

    move v0, v2

    .line 116
    .end local v0    # "a":I
    :goto_0
    return v0

    .line 113
    .restart local v0    # "a":I
    :cond_0
    move v2, v0

    move v3, v1

    if-le v2, v3, :cond_1

    .line 114
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 116
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static compareLongs(JJ)I
    .locals 8

    .prologue
    .line 127
    move-wide v0, p0

    .local v0, "a":J
    move-wide v2, p2

    .local v2, "b":J
    move-wide v4, v0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 128
    const/4 v4, -0x1

    move v0, v4

    .line 133
    .end local v0    # "a":J
    :goto_0
    return v0

    .line 130
    .restart local v0    # "a":J
    :cond_0
    move-wide v4, v0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 131
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 133
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_1

    .line 94
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 99
    .end local v0    # "a":Ljava/lang/Object;
    :goto_1
    return v0

    .line 94
    .restart local v0    # "a":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    :cond_1
    move-object v2, v1

    if-nez v2, :cond_2

    .line 97
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 99
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public static floorDiv(II)I
    .locals 4

    .prologue
    .line 361
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, v0

    if-ltz v2, :cond_0

    move v2, v0

    move v3, v1

    div-int/2addr v2, v3

    :goto_0
    move v0, v2

    .end local v0    # "a":I
    return v0

    .restart local v0    # "a":I
    :cond_0
    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    div-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static floorDiv(JJ)J
    .locals 8

    .prologue
    .line 306
    move-wide v0, p0

    .local v0, "a":J
    move-wide v2, p2

    .local v2, "b":J
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v0

    move-wide v6, v2

    div-long/2addr v4, v6

    :goto_0
    move-wide v0, v4

    .end local v0    # "a":J
    return-wide v0

    .restart local v0    # "a":J
    :cond_0
    move-wide v4, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-wide v6, v2

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    goto :goto_0
.end method

.method public static floorMod(II)I
    .locals 4

    .prologue
    .line 381
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, v0

    move v3, v1

    rem-int/2addr v2, v3

    move v3, v1

    add-int/2addr v2, v3

    move v3, v1

    rem-int/2addr v2, v3

    move v0, v2

    .end local v0    # "a":I
    return v0
.end method

.method public static floorMod(JI)I
    .locals 8

    .prologue
    .line 341
    move-wide v1, p0

    .local v1, "a":J
    move v3, p2

    .local v3, "b":I
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    rem-long/2addr v4, v6

    move v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    move v6, v3

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "a":J
    return v1
.end method

.method public static floorMod(JJ)J
    .locals 8

    .prologue
    .line 323
    move-wide v0, p0

    .local v0, "a":J
    move-wide v2, p2

    .local v2, "b":J
    move-wide v4, v0

    move-wide v6, v2

    rem-long/2addr v4, v6

    move-wide v6, v2

    add-long/2addr v4, v6

    move-wide v6, v2

    rem-long/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "a":J
    return-wide v0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;, "TT;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "parameterName":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must not be null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static safeAdd(II)I
    .locals 8

    .prologue
    .line 146
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v3, v0

    move v4, v1

    add-int/2addr v3, v4

    move v2, v3

    .line 148
    .local v2, "sum":I
    move v3, v0

    move v4, v2

    xor-int/2addr v3, v4

    if-gez v3, :cond_0

    move v3, v0

    move v4, v1

    xor-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 149
    new-instance v3, Ljava/lang/ArithmeticException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Addition overflows an int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "a":I
    return v0
.end method

.method public static safeAdd(JJ)J
    .locals 12

    .prologue
    .line 163
    move-wide v0, p0

    .local v0, "a":J
    move-wide v2, p2

    .local v2, "b":J
    move-wide v6, v0

    move-wide v8, v2

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 165
    .local v4, "sum":J
    move-wide v6, v0

    move-wide v8, v4

    xor-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v0

    move-wide v8, v2

    xor-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 166
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Addition overflows a long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    :cond_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "a":J
    return-wide v0
.end method

.method public static safeMultiply(II)I
    .locals 9

    .prologue
    .line 216
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v4, v0

    int-to-long v4, v4

    move v6, v1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    move-wide v2, v4

    .line 217
    .local v2, "total":J
    move-wide v4, v2

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 218
    :cond_0
    new-instance v4, Ljava/lang/ArithmeticException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiplication overflows an int: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " * "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_1
    move-wide v4, v2

    long-to-int v4, v4

    move v0, v4

    .end local v0    # "a":I
    return v0
.end method

.method public static safeMultiply(JI)J
    .locals 12

    .prologue
    .line 232
    move-wide v1, p0

    .local v1, "a":J
    move v3, p2

    .local v3, "b":I
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 243
    move-wide v6, v1

    move v8, v3

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 244
    .local v4, "total":J
    move-wide v6, v4

    move v8, v3

    int-to-long v8, v8

    div-long/2addr v6, v8

    move-wide v8, v1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 245
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiplication overflows a long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 234
    .end local v4    # "total":J
    :pswitch_0
    move-wide v6, v1

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 235
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiplication overflows a long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 237
    :cond_0
    move-wide v6, v1

    neg-long v6, v6

    move-wide v1, v6

    .line 247
    .end local v1    # "a":J
    :goto_0
    return-wide v1

    .line 239
    .restart local v1    # "a":J
    :pswitch_1
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0

    .line 241
    :pswitch_2
    move-wide v6, v1

    move-wide v1, v6

    goto :goto_0

    .line 247
    .restart local v4    # "total":J
    :cond_1
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static safeMultiply(JJ)J
    .locals 12

    .prologue
    .line 259
    move-wide v0, p0

    .local v0, "a":J
    move-wide v2, p2

    .local v2, "b":J
    move-wide v6, v2

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 260
    move-wide v6, v0

    move-wide v0, v6

    .line 272
    .end local v0    # "a":J
    :goto_0
    return-wide v0

    .line 262
    .restart local v0    # "a":J
    :cond_0
    move-wide v6, v0

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 263
    move-wide v6, v2

    move-wide v0, v6

    goto :goto_0

    .line 265
    :cond_1
    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 266
    :cond_2
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_0

    .line 268
    :cond_3
    move-wide v6, v0

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 269
    .local v4, "total":J
    move-wide v6, v4

    move-wide v8, v2

    div-long/2addr v6, v8

    move-wide v8, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    move-wide v6, v0

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    move-wide v6, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    :cond_4
    move-wide v6, v2

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 270
    :cond_5
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiplication overflows a long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 272
    :cond_6
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0
.end method

.method public static safeSubtract(II)I
    .locals 8

    .prologue
    .line 181
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v3, v0

    move v4, v1

    sub-int/2addr v3, v4

    move v2, v3

    .line 183
    .local v2, "result":I
    move v3, v0

    move v4, v2

    xor-int/2addr v3, v4

    if-gez v3, :cond_0

    move v3, v0

    move v4, v1

    xor-int/2addr v3, v4

    if-gez v3, :cond_0

    .line 184
    new-instance v3, Ljava/lang/ArithmeticException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subtraction overflows an int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "a":I
    return v0
.end method

.method public static safeSubtract(JJ)J
    .locals 12

    .prologue
    .line 198
    move-wide v0, p0

    .local v0, "a":J
    move-wide v2, p2

    .local v2, "b":J
    move-wide v6, v0

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 200
    .local v4, "result":J
    move-wide v6, v0

    move-wide v8, v4

    xor-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v0

    move-wide v8, v2

    xor-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 201
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtraction overflows a long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    :cond_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "a":J
    return-wide v0
.end method

.method public static safeToInt(J)I
    .locals 8

    .prologue
    .line 284
    move-wide v0, p0

    .local v0, "value":J
    move-wide v2, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move-wide v2, v0

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 285
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculation overflows an int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_1
    move-wide v2, v0

    long-to-int v2, v2

    move v0, v2

    .end local v0    # "value":J
    return v0
.end method
