.class public final Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "QNameHashtable"
.end annotation


# static fields
.field private static final HASHTABLE_SIZE:I = 0x65

.field private static final INITIAL_BUCKET_SIZE:I = 0x4

.field public static final UNIQUE_STRINGS:Z = true


# instance fields
.field private fHashTable:[[Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 950
    move-object v1, v0

    const/16 v2, 0x65

    new-array v2, v2, [[Ljava/lang/Object;

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    const/16 v8, 0x65

    rem-int/lit8 v7, v7, 0x65

    move v2, v7

    .line 1003
    .local v2, "hash":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    move v8, v2

    aget-object v7, v7, v8

    move-object v3, v7

    .line 1005
    .local v3, "bucket":[Ljava/lang/Object;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 1006
    const/4 v7, -0x1

    move v0, v7

    .line 1017
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    :goto_0
    return v0

    .line 1008
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    :cond_0
    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v7, v7, v8

    move v4, v7

    .line 1010
    .local v4, "count":I
    const/4 v7, 0x1

    move v5, v7

    .line 1011
    .local v5, "j":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 1012
    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    if-ne v7, v8, :cond_1

    .line 1013
    move-object v7, v3

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v7, v7, v8

    move v0, v7

    goto :goto_0

    .line 1015
    :cond_1
    add-int/lit8 v5, v5, 0x2

    .line 1011
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1017
    :cond_2
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method protected hash(Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1029
    const/4 v5, 0x0

    move v0, v5

    .line 1036
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    :goto_0
    return v0

    .line 1031
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 1032
    .local v2, "code":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 1033
    .local v3, "length":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1034
    move v5, v2

    const/16 v6, 0x25

    mul-int/lit8 v5, v5, 0x25

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 1033
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1036
    :cond_1
    move v5, v2

    const v6, 0x7ffffff

    and-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 17

    .prologue
    .line 959
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "value":I
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    const/16 v11, 0x65

    rem-int/lit8 v10, v10, 0x65

    move v3, v10

    .line 960
    .local v3, "hash":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    move v11, v3

    aget-object v10, v10, v11

    move-object v4, v10

    .line 962
    .local v4, "bucket":[Ljava/lang/Object;
    move-object v10, v4

    if-nez v10, :cond_1

    .line 963
    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    move-object v4, v10

    .line 964
    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v15, v13, v14

    aput-object v12, v10, v11

    .line 965
    move-object v10, v4

    const/4 v11, 0x1

    move-object v12, v1

    aput-object v12, v10, v11

    .line 966
    move-object v10, v4

    const/4 v11, 0x2

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move v15, v2

    aput v15, v13, v14

    aput-object v12, v10, v11

    .line 967
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    move v11, v3

    move-object v12, v4

    aput-object v12, v10, v11

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    move v5, v10

    .line 970
    .local v5, "count":I
    const/4 v10, 0x1

    const/4 v11, 0x2

    move v12, v5

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    move v6, v10

    .line 971
    .local v6, "offset":I
    move v10, v6

    move-object v11, v4

    array-length v11, v11

    if-ne v10, v11, :cond_2

    .line 972
    move v10, v5

    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x4

    move v7, v10

    .line 973
    .local v7, "newSize":I
    const/4 v10, 0x1

    const/4 v11, 0x2

    move v12, v7

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    new-array v10, v10, [Ljava/lang/Object;

    move-object v8, v10

    .line 974
    .local v8, "newBucket":[Ljava/lang/Object;
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v6

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 975
    move-object v10, v8

    move-object v4, v10

    .line 976
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    move v11, v3

    move-object v12, v4

    aput-object v12, v10, v11

    .line 978
    .end local v7    # "newSize":I
    .end local v8    # "newBucket":[Ljava/lang/Object;
    :cond_2
    const/4 v10, 0x0

    move v7, v10

    .line 979
    .local v7, "found":Z
    const/4 v10, 0x1

    move v8, v10

    .line 980
    .local v8, "j":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_3

    .line 981
    move-object v10, v4

    move v11, v8

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/String;

    move-object v11, v1

    if-ne v10, v11, :cond_4

    .line 982
    move-object v10, v4

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    move v12, v2

    aput v12, v10, v11

    .line 983
    const/4 v10, 0x1

    move v7, v10

    .line 988
    :cond_3
    move v10, v7

    if-nez v10, :cond_0

    .line 989
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move-object v12, v1

    aput-object v12, v10, v11

    .line 990
    move-object v10, v4

    move v11, v6

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move v15, v2

    aput v15, v13, v14

    aput-object v12, v10, v11

    .line 991
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    add-int/lit8 v5, v5, 0x1

    move v12, v5

    aput v12, v10, v11

    goto/16 :goto_0

    .line 986
    :cond_4
    add-int/lit8 v8, v8, 0x2

    .line 980
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
