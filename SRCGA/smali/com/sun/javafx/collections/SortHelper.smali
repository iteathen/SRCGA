.class public Lcom/sun/javafx/collections/SortHelper;
.super Ljava/lang/Object;
.source "SortHelper.java"


# static fields
.field private static final INSERTIONSORT_THRESHOLD:I = 0x7


# instance fields
.field private permutation:[I

.field private reversePermutation:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyOfRange([III)[I
    .locals 12

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "original":[I
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move v5, v2

    move v6, v1

    sub-int/2addr v5, v6

    move v3, v5

    .line 125
    .local v3, "newLength":I
    move v5, v3

    if-gez v5, :cond_0

    .line 126
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_0
    move v5, v3

    new-array v5, v5, [I

    move-object v4, v5

    .line 128
    .local v4, "copy":[I
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    array-length v9, v9

    move v10, v1

    sub-int/2addr v9, v10

    move v10, v3

    .line 129
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 128
    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "original":[I
    return-object v0
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "original":[Ljava/lang/Object;, "[TT;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/sun/javafx/collections/SortHelper;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "original":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method private static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "original":[Ljava/lang/Object;, "[TU;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object/from16 v3, p3

    .local v3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    move v6, v2

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 139
    .local v4, "newLength":I
    move v6, v4

    if-gez v6, :cond_0

    .line 140
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    :cond_0
    move-object v6, v3

    const-class v7, [Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    move v6, v4

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 143
    :goto_0
    move-object v5, v6

    .line 144
    .local v5, "copy":[Ljava/lang/Object;, "[TT;"
    move-object v6, v0

    move v7, v1

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v0

    array-length v10, v10

    move v11, v1

    sub-int/2addr v10, v11

    move v11, v4

    .line 145
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 144
    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "original":[Ljava/lang/Object;, "[TU;"
    return-object v0

    .line 141
    .end local v5    # "copy":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "original":[Ljava/lang/Object;, "[TU;"
    :cond_1
    move-object v6, v3

    .line 143
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    goto :goto_0
.end method

.method private initPermutation(I)[I
    .locals 12

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move v1, p1

    .local v1, "length":I
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    .line 321
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    .line 322
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 323
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v6, v2

    move v7, v2

    move-object v9, v5

    move v10, v6

    move v11, v7

    move v5, v11

    move-object v6, v9

    move v7, v10

    move v8, v11

    aput v8, v6, v7

    aput v5, v3, v4

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0
.end method

.method private mergeSort([I[IIII)V
    .locals 20

    .prologue
    .line 157
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object/from16 v2, p1

    .local v2, "src":[I
    move-object/from16 v3, p2

    .local v3, "dest":[I
    move/from16 v4, p3

    .local v4, "low":I
    move/from16 v5, p4

    .local v5, "high":I
    move/from16 v6, p5

    .local v6, "off":I
    move v14, v5

    move v15, v4

    sub-int/2addr v14, v15

    move v7, v14

    .line 160
    .local v7, "length":I
    move v14, v7

    const/4 v15, 0x7

    if-ge v14, v15, :cond_2

    .line 161
    move v14, v4

    move v8, v14

    .local v8, "i":I
    :goto_0
    move v14, v8

    move v15, v5

    if-ge v14, v15, :cond_1

    .line 162
    move v14, v8

    move v9, v14

    .local v9, "j":I
    :goto_1
    move v14, v9

    move v15, v4

    if-le v14, v15, :cond_0

    move-object v14, v3

    move v15, v9

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    .line 163
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v15, v3

    move/from16 v16, v9

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_0

    .line 164
    move-object v14, v1

    move-object v15, v3

    move/from16 v16, v9

    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-direct/range {v14 .. v17}, Lcom/sun/javafx/collections/SortHelper;->swap([III)V

    .line 163
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 161
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 165
    .line 198
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_1
    :goto_2
    return-void

    .line 169
    :cond_2
    move v14, v4

    move v8, v14

    .line 170
    .local v8, "destLow":I
    move v14, v5

    move v9, v14

    .line 171
    .local v9, "destHigh":I
    move v14, v4

    move v15, v6

    add-int/2addr v14, v15

    move v4, v14

    .line 172
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 173
    move v14, v4

    move v15, v5

    add-int/2addr v14, v15

    const/4 v15, 0x1

    ushr-int/lit8 v14, v14, 0x1

    move v10, v14

    .line 174
    .local v10, "mid":I
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v6

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([I[IIII)V

    .line 175
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([I[IIII)V

    .line 179
    move-object v14, v2

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v15, v2

    move/from16 v16, v10

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gtz v14, :cond_3

    .line 180
    move-object v14, v2

    move v15, v4

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v7

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    goto :goto_2

    .line 185
    :cond_3
    move v14, v8

    move v11, v14

    .local v11, "i":I
    move v14, v4

    move v12, v14

    .local v12, "p":I
    move v14, v10

    move v13, v14

    .local v13, "q":I
    :goto_3
    move v14, v11

    move v15, v9

    if-ge v14, v15, :cond_6

    .line 186
    move v14, v13

    move v15, v5

    if-ge v14, v15, :cond_4

    move v14, v12

    move v15, v10

    if-ge v14, v15, :cond_5

    move-object v14, v2

    move v15, v12

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v15, v2

    move/from16 v16, v13

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gtz v14, :cond_5

    .line 187
    :cond_4
    move-object v14, v3

    move v15, v11

    move-object/from16 v16, v2

    move/from16 v17, v12

    aget v16, v16, v17

    aput v16, v14, v15

    .line 188
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    aget v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    .line 185
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 190
    :cond_5
    move-object v14, v3

    move v15, v11

    move-object/from16 v16, v2

    move/from16 v17, v13

    aget v16, v16, v17

    aput v16, v14, v15

    .line 191
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move/from16 v16, v13

    add-int/lit8 v13, v13, 0x1

    aget v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    goto :goto_4

    .line 195
    :cond_6
    move v14, v8

    move v11, v14

    :goto_5
    move v14, v11

    move v15, v9

    if-ge v14, v15, :cond_7

    .line 196
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move/from16 v16, v11

    aget v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    .line 195
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 198
    :cond_7
    goto/16 :goto_2
.end method

.method private mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 20

    .prologue
    .line 208
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object/from16 v2, p1

    .local v2, "src":[Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "dest":[Ljava/lang/Object;
    move/from16 v4, p3

    .local v4, "low":I
    move/from16 v5, p4

    .local v5, "high":I
    move/from16 v6, p5

    .local v6, "off":I
    move v14, v5

    move v15, v4

    sub-int/2addr v14, v15

    move v7, v14

    .line 211
    .local v7, "length":I
    move v14, v7

    const/4 v15, 0x7

    if-ge v14, v15, :cond_2

    .line 212
    move v14, v4

    move v8, v14

    .local v8, "i":I
    :goto_0
    move v14, v8

    move v15, v5

    if-ge v14, v15, :cond_1

    .line 213
    move v14, v8

    move v9, v14

    .local v9, "j":I
    :goto_1
    move v14, v9

    move v15, v4

    if-le v14, v15, :cond_0

    move-object v14, v3

    move v15, v9

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Comparable;

    move-object v15, v3

    move/from16 v16, v9

    aget-object v15, v15, v16

    .line 214
    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_0

    .line 215
    move-object v14, v1

    move-object v15, v3

    move/from16 v16, v9

    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-direct/range {v14 .. v17}, Lcom/sun/javafx/collections/SortHelper;->swap([Ljava/lang/Object;II)V

    .line 214
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 212
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 216
    .line 249
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_1
    :goto_2
    return-void

    .line 220
    :cond_2
    move v14, v4

    move v8, v14

    .line 221
    .local v8, "destLow":I
    move v14, v5

    move v9, v14

    .line 222
    .local v9, "destHigh":I
    move v14, v4

    move v15, v6

    add-int/2addr v14, v15

    move v4, v14

    .line 223
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 224
    move v14, v4

    move v15, v5

    add-int/2addr v14, v15

    const/4 v15, 0x1

    ushr-int/lit8 v14, v14, 0x1

    move v10, v14

    .line 225
    .local v10, "mid":I
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v6

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 226
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 230
    move-object v14, v2

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Comparable;

    move-object v15, v2

    move/from16 v16, v10

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gtz v14, :cond_3

    .line 231
    move-object v14, v2

    move v15, v4

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v7

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    goto :goto_2

    .line 236
    :cond_3
    move v14, v8

    move v11, v14

    .local v11, "i":I
    move v14, v4

    move v12, v14

    .local v12, "p":I
    move v14, v10

    move v13, v14

    .local v13, "q":I
    :goto_3
    move v14, v11

    move v15, v9

    if-ge v14, v15, :cond_6

    .line 237
    move v14, v13

    move v15, v5

    if-ge v14, v15, :cond_4

    move v14, v12

    move v15, v10

    if-ge v14, v15, :cond_5

    move-object v14, v2

    move v15, v12

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Comparable;

    move-object v15, v2

    move/from16 v16, v13

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gtz v14, :cond_5

    .line 238
    :cond_4
    move-object v14, v3

    move v15, v11

    move-object/from16 v16, v2

    move/from16 v17, v12

    aget-object v16, v16, v17

    aput-object v16, v14, v15

    .line 239
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    aget v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    .line 236
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 241
    :cond_5
    move-object v14, v3

    move v15, v11

    move-object/from16 v16, v2

    move/from16 v17, v13

    aget-object v16, v16, v17

    aput-object v16, v14, v15

    .line 242
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move/from16 v16, v13

    add-int/lit8 v13, v13, 0x1

    aget v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    goto :goto_4

    .line 246
    :cond_6
    move v14, v8

    move v11, v14

    :goto_5
    move v14, v11

    move v15, v9

    if-ge v14, v15, :cond_7

    .line 247
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move/from16 v16, v11

    aget v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    .line 246
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 249
    :cond_7
    goto/16 :goto_2
.end method

.method private mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 22

    .prologue
    .line 255
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object/from16 v2, p1

    .local v2, "src":[Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "dest":[Ljava/lang/Object;
    move/from16 v4, p3

    .local v4, "low":I
    move/from16 v5, p4

    .local v5, "high":I
    move/from16 v6, p5

    .local v6, "off":I
    move-object/from16 v7, p6

    .local v7, "c":Ljava/util/Comparator;
    move v15, v5

    move/from16 v16, v4

    sub-int v15, v15, v16

    move v8, v15

    .line 258
    .local v8, "length":I
    move v15, v8

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 259
    move v15, v4

    move v9, v15

    .local v9, "i":I
    :goto_0
    move v15, v9

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 260
    move v15, v9

    move v10, v15

    .local v10, "j":I
    :goto_1
    move v15, v10

    move/from16 v16, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object v15, v7

    move-object/from16 v16, v3

    move/from16 v17, v10

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    aget-object v16, v16, v17

    move-object/from16 v17, v3

    move/from16 v18, v10

    aget-object v17, v17, v18

    invoke-interface/range {v15 .. v17}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15

    if-lez v15, :cond_0

    .line 261
    move-object v15, v1

    move-object/from16 v16, v3

    move/from16 v17, v10

    move/from16 v18, v10

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-direct/range {v15 .. v18}, Lcom/sun/javafx/collections/SortHelper;->swap([Ljava/lang/Object;II)V

    .line 260
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 259
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 262
    .line 295
    .end local v9    # "i":I
    .end local v10    # "j":I
    :cond_1
    :goto_2
    return-void

    .line 266
    :cond_2
    move v15, v4

    move v9, v15

    .line 267
    .local v9, "destLow":I
    move v15, v5

    move v10, v15

    .line 268
    .local v10, "destHigh":I
    move v15, v4

    move/from16 v16, v6

    add-int v15, v15, v16

    move v4, v15

    .line 269
    move v15, v5

    move/from16 v16, v6

    add-int v15, v15, v16

    move v5, v15

    .line 270
    move v15, v4

    move/from16 v16, v5

    add-int v15, v15, v16

    const/16 v16, 0x1

    ushr-int/lit8 v15, v15, 0x1

    move v11, v15

    .line 271
    .local v11, "mid":I
    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v11

    move/from16 v20, v6

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 272
    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v18, v11

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 276
    move-object v15, v7

    move-object/from16 v16, v2

    move/from16 v17, v11

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    aget-object v16, v16, v17

    move-object/from16 v17, v2

    move/from16 v18, v11

    aget-object v17, v17, v18

    invoke-interface/range {v15 .. v17}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15

    if-gtz v15, :cond_3

    .line 277
    move-object v15, v2

    move/from16 v16, v4

    move-object/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v8

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    goto :goto_2

    .line 282
    :cond_3
    move v15, v9

    move v12, v15

    .local v12, "i":I
    move v15, v4

    move v13, v15

    .local v13, "p":I
    move v15, v11

    move v14, v15

    .local v14, "q":I
    :goto_3
    move v15, v12

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 283
    move v15, v14

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    move v15, v13

    move/from16 v16, v11

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    move-object v15, v7

    move-object/from16 v16, v2

    move/from16 v17, v13

    aget-object v16, v16, v17

    move-object/from16 v17, v2

    move/from16 v18, v14

    aget-object v17, v17, v18

    invoke-interface/range {v15 .. v17}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15

    if-gtz v15, :cond_5

    .line 284
    :cond_4
    move-object v15, v3

    move/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v13

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    .line 285
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move-object/from16 v16, v0

    move/from16 v17, v13

    add-int/lit8 v13, v13, 0x1

    aget v16, v16, v17

    move/from16 v17, v12

    aput v17, v15, v16

    .line 282
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 287
    :cond_5
    move-object v15, v3

    move/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v14

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    .line 288
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move-object/from16 v16, v0

    move/from16 v17, v14

    add-int/lit8 v14, v14, 0x1

    aget v16, v16, v17

    move/from16 v17, v12

    aput v17, v15, v16

    goto :goto_4

    .line 292
    :cond_6
    move v15, v9

    move v12, v15

    :goto_5
    move v15, v12

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 293
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object/from16 v16, v0

    move/from16 v17, v12

    aget v16, v16, v17

    move/from16 v17, v12

    aput v17, v15, v16

    .line 292
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 295
    :cond_7
    goto/16 :goto_2
.end method

.method private static rangeCheck(III)V
    .locals 8

    .prologue
    .line 113
    move v0, p0

    .local v0, "arrayLen":I
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, v1

    move v4, v2

    if-le v3, v4, :cond_0

    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromIndex("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") > toIndex("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_0
    move v3, v1

    if-gez v3, :cond_1

    .line 117
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 118
    :cond_1
    move v3, v2

    move v4, v0

    if-le v3, v4, :cond_2

    .line 119
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v2

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 120
    :cond_2
    return-void
.end method

.method private swap([III)V
    .locals 10

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "x":[I
    move v2, p2

    .local v2, "a":I
    move v3, p3

    .local v3, "b":I
    move-object v6, v1

    move v7, v2

    aget v6, v6, v7

    move v4, v6

    .line 299
    .local v4, "t":I
    move-object v6, v1

    move v7, v2

    move-object v8, v1

    move v9, v3

    aget v8, v8, v9

    aput v8, v6, v7

    .line 300
    move-object v6, v1

    move v7, v3

    move v8, v4

    aput v8, v6, v7

    .line 301
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v8, v2

    aget v7, v7, v8

    move v8, v3

    aput v8, v6, v7

    .line 302
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v2

    aput v8, v6, v7

    .line 303
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v7, v2

    aget v6, v6, v7

    move v5, v6

    .line 304
    .local v5, "tp":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v9, v3

    aget v8, v8, v9

    aput v8, v6, v7

    .line 305
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v7, v3

    move v8, v5

    aput v8, v6, v7

    .line 306
    return-void
.end method

.method private swap([Ljava/lang/Object;II)V
    .locals 10

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "x":[Ljava/lang/Object;
    move v2, p2

    .local v2, "a":I
    move v3, p3

    .local v3, "b":I
    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move-object v4, v6

    .line 310
    .local v4, "t":Ljava/lang/Object;
    move-object v6, v1

    move v7, v2

    move-object v8, v1

    move v9, v3

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 311
    move-object v6, v1

    move v7, v3

    move-object v8, v4

    aput-object v8, v6, v7

    .line 312
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v8, v2

    aget v7, v7, v8

    move v8, v3

    aput v8, v6, v7

    .line 313
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v2

    aput v8, v6, v7

    .line 314
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v7, v2

    aget v6, v6, v7

    move v5, v6

    .line 315
    .local v5, "tp":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v9, v3

    aget v8, v8, v9

    aput v8, v6, v7

    .line 316
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    move v7, v3

    move v8, v5

    aput v8, v6, v7

    .line 317
    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)[I"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-class v6, Ljava/lang/Comparable;

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Comparable;

    check-cast v6, [Ljava/lang/Comparable;

    move-object v2, v6

    .line 47
    .local v2, "a":[Ljava/lang/Comparable;, "[TT;"
    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 51
    .line 52
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/collections/SortHelper;->sort([Ljava/lang/Comparable;)[I

    move-result-object v6

    move-object v3, v6

    .line 53
    .local v3, "result":[I
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    move-object v4, v6

    .line 54
    .local v4, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_0
    move v6, v5

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 55
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 56
    move-object v6, v4

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    .end local v3    # "result":[I
    .end local v4    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .end local v5    # "j":I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 50
    .local v3, "e":Ljava/lang/ArrayStoreException;
    new-instance v6, Ljava/lang/ClassCastException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    throw v6

    .line 58
    .local v3, "result":[I
    .restart local v4    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .restart local v5    # "j":I
    :cond_0
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0
.end method

.method public sort(Ljava/util/List;Ljava/util/Comparator;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)[I"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, p2

    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 63
    .local v3, "a":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/collections/SortHelper;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[I

    move-result-object v7

    move-object v4, v7

    .line 64
    .local v4, "result":[I
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move-object v5, v7

    .line 65
    .local v5, "i":Ljava/util/ListIterator;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "j":I
    :goto_0
    move v7, v6

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 66
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 67
    move-object v7, v5

    move-object v8, v3

    move v9, v6

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69
    :cond_0
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0
.end method

.method public sort([III)[I
    .locals 12

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "a":[I
    move v2, p2

    .local v2, "fromIndex":I
    move v3, p3

    .local v3, "toIndex":I
    move-object v6, v1

    array-length v6, v6

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/collections/SortHelper;->rangeCheck(III)V

    .line 104
    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/collections/SortHelper;->copyOfRange([III)[I

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    .line 105
    .local v4, "aux":[I
    move-object v6, v0

    move-object v7, v1

    array-length v7, v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/collections/SortHelper;->initPermutation(I)[I

    move-result-object v6

    move-object v5, v6

    .line 106
    .local v5, "result":[I
    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v2

    neg-int v11, v11

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([I[IIII)V

    .line 107
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    .line 108
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    .line 109
    move-object v6, v5

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0
.end method

.method public sort([Ljava/lang/Comparable;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)[I"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Comparable;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/collections/SortHelper;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0
.end method

.method public sort([Ljava/lang/Object;IILjava/util/Comparator;)[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)[I"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move/from16 v2, p2

    .local v2, "fromIndex":I
    move/from16 v3, p3

    .local v3, "toIndex":I
    move-object/from16 v4, p4

    .local v4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object v7, v1

    array-length v7, v7

    move v8, v2

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/collections/SortHelper;->rangeCheck(III)V

    .line 91
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/collections/SortHelper;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    .line 92
    .local v5, "aux":[Ljava/lang/Object;, "[TT;"
    move-object v7, v0

    move-object v8, v1

    array-length v8, v8

    invoke-direct {v7, v8}, Lcom/sun/javafx/collections/SortHelper;->initPermutation(I)[I

    move-result-object v7

    move-object v6, v7

    .line 93
    .local v6, "result":[I
    move-object v7, v4

    if-nez v7, :cond_0

    .line 94
    move-object v7, v0

    move-object v8, v5

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v2

    neg-int v12, v12

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 97
    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    .line 98
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    .line 99
    move-object v7, v6

    move v8, v2

    move v9, v3

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0

    .line 96
    .restart local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    :cond_0
    move-object v7, v0

    move-object v8, v5

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v2

    neg-int v12, v12

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0
.end method

.method public sort([Ljava/lang/Object;Ljava/util/Comparator;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)[I"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SortHelper;
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, p2

    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object v5, v1

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v3, v5

    .line 78
    .local v3, "aux":[Ljava/lang/Object;, "[TT;"
    move-object v5, v0

    move-object v6, v1

    array-length v6, v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/SortHelper;->initPermutation(I)[I

    move-result-object v5

    move-object v4, v5

    .line 79
    .local v4, "result":[I
    move-object v5, v2

    if-nez v5, :cond_0

    .line 80
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 83
    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/SortHelper;->reversePermutation:[I

    .line 84
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/SortHelper;->permutation:[I

    .line 85
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    return-object v0

    .line 82
    .restart local v0    # "this":Lcom/sun/javafx/collections/SortHelper;
    :cond_0
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x0

    move-object v11, v2

    invoke-direct/range {v5 .. v11}, Lcom/sun/javafx/collections/SortHelper;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0
.end method
