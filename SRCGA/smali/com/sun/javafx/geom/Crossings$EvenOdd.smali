.class public final Lcom/sun/javafx/geom/Crossings$EvenOdd;
.super Lcom/sun/javafx/geom/Crossings;
.source "Crossings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/Crossings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EvenOdd"
.end annotation


# direct methods
.method public constructor <init>(DDDD)V
    .locals 19

    .prologue
    .line 99
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings$EvenOdd;
    move-wide/from16 v1, p1

    .local v1, "xlo":D
    move-wide/from16 v3, p3

    .local v3, "ylo":D
    move-wide/from16 v5, p5

    .local v5, "xhi":D
    move-wide/from16 v7, p7

    .local v7, "yhi":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-direct/range {v9 .. v17}, Lcom/sun/javafx/geom/Crossings;-><init>(DDDD)V

    .line 100
    return-void
.end method


# virtual methods
.method public final covers(DD)Z
    .locals 11

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Crossings$EvenOdd;
    move-wide v2, p1

    .local v2, "ystart":D
    move-wide v4, p3

    .local v4, "yend":D
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    move-wide v8, v2

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Crossings$EvenOdd;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Crossings$EvenOdd;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public record(DDI)V
    .locals 29

    .prologue
    .line 107
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Crossings$EvenOdd;
    move-wide/from16 v3, p1

    .local v3, "ystart":D
    move-wide/from16 v5, p3

    .local v5, "yend":D
    move/from16 v7, p5

    .local v7, "direction":I
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_0

    .line 108
    .line 177
    :goto_0
    return-void

    .line 110
    :cond_0
    const/16 v22, 0x0

    move/from16 v8, v22

    .line 112
    .local v8, "from":I
    :goto_1
    move/from16 v22, v8

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    move-wide/from16 v22, v3

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v24, v0

    move/from16 v25, v8

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget-wide v24, v24, v25

    cmpl-double v22, v22, v24

    if-lez v22, :cond_1

    .line 113
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 115
    :cond_1
    move/from16 v22, v8

    move/from16 v9, v22

    .line 116
    .local v9, "to":I
    :goto_2
    move/from16 v22, v8

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 117
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v8

    add-int/lit8 v8, v8, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v10, v22

    .line 118
    .local v10, "yrlo":D
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v8

    add-int/lit8 v8, v8, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v12, v22

    .line 119
    .local v12, "yrhi":D
    move-wide/from16 v22, v5

    move-wide/from16 v24, v10

    cmpg-double v22, v22, v24

    if-gez v22, :cond_2

    .line 121
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v24, v3

    aput-wide v24, v22, v23

    .line 122
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v24, v5

    aput-wide v24, v22, v23

    .line 123
    move-wide/from16 v22, v10

    move-wide/from16 v3, v22

    .line 124
    move-wide/from16 v22, v12

    move-wide/from16 v5, v22

    .line 125
    goto :goto_2

    .line 129
    :cond_2
    move-wide/from16 v22, v3

    move-wide/from16 v24, v10

    cmpg-double v22, v22, v24

    if-gez v22, :cond_7

    .line 130
    move-wide/from16 v22, v3

    move-wide/from16 v14, v22

    .line 131
    .local v14, "yll":D
    move-wide/from16 v22, v10

    move-wide/from16 v16, v22

    .line 136
    .local v16, "ylh":D
    :goto_3
    move-wide/from16 v22, v5

    move-wide/from16 v24, v12

    cmpg-double v22, v22, v24

    if-gez v22, :cond_8

    .line 137
    move-wide/from16 v22, v5

    move-wide/from16 v18, v22

    .line 138
    .local v18, "yhl":D
    move-wide/from16 v22, v12

    move-wide/from16 v20, v22

    .line 143
    .local v20, "yhh":D
    :goto_4
    move-wide/from16 v22, v16

    move-wide/from16 v24, v18

    cmpl-double v22, v22, v24

    if-nez v22, :cond_9

    .line 144
    move-wide/from16 v22, v14

    move-wide/from16 v3, v22

    .line 145
    move-wide/from16 v22, v20

    move-wide/from16 v5, v22

    .line 159
    :goto_5
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_c

    .line 160
    .line 163
    .end local v10    # "yrlo":D
    .end local v12    # "yrhi":D
    .end local v14    # "yll":D
    .end local v16    # "ylh":D
    .end local v18    # "yhl":D
    .end local v20    # "yhh":D
    :cond_3
    move/from16 v22, v9

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move/from16 v22, v8

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 164
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v8

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v24, v0

    move/from16 v25, v9

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    move/from16 v26, v0

    move/from16 v27, v8

    sub-int v26, v26, v27

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    :cond_4
    move/from16 v22, v9

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    move/from16 v23, v0

    move/from16 v24, v8

    sub-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v9, v22

    .line 167
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    cmpg-double v22, v22, v24

    if-gez v22, :cond_6

    .line 168
    move/from16 v22, v9

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 169
    move/from16 v22, v9

    const/16 v23, 0xa

    add-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v22, v0

    move-object/from16 v10, v22

    .line 170
    .local v10, "newranges":[D
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v10

    const/16 v25, 0x0

    move/from16 v26, v9

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    move-object/from16 v22, v2

    move-object/from16 v23, v10

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    .line 173
    .end local v10    # "newranges":[D
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v24, v3

    aput-wide v24, v22, v23

    .line 174
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v24, v5

    aput-wide v24, v22, v23

    .line 176
    :cond_6
    move-object/from16 v22, v2

    move/from16 v23, v9

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/geom/Crossings$EvenOdd;->limit:I

    .line 177
    goto/16 :goto_0

    .line 133
    .local v10, "yrlo":D
    .restart local v12    # "yrhi":D
    :cond_7
    move-wide/from16 v22, v10

    move-wide/from16 v14, v22

    .line 134
    .restart local v14    # "yll":D
    move-wide/from16 v22, v3

    move-wide/from16 v16, v22

    .restart local v16    # "ylh":D
    goto/16 :goto_3

    .line 140
    :cond_8
    move-wide/from16 v22, v12

    move-wide/from16 v18, v22

    .line 141
    .restart local v18    # "yhl":D
    move-wide/from16 v22, v5

    move-wide/from16 v20, v22

    .restart local v20    # "yhh":D
    goto/16 :goto_4

    .line 147
    :cond_9
    move-wide/from16 v22, v16

    move-wide/from16 v24, v18

    cmpl-double v22, v22, v24

    if-lez v22, :cond_a

    .line 148
    move-wide/from16 v22, v18

    move-wide/from16 v3, v22

    .line 149
    move-wide/from16 v22, v16

    move-wide/from16 v18, v22

    .line 150
    move-wide/from16 v22, v3

    move-wide/from16 v16, v22

    .line 152
    :cond_a
    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_b

    .line 153
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v24, v14

    aput-wide v24, v22, v23

    .line 154
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v24, v16

    aput-wide v24, v22, v23

    .line 156
    :cond_b
    move-wide/from16 v22, v18

    move-wide/from16 v3, v22

    .line 157
    move-wide/from16 v22, v20

    move-wide/from16 v5, v22

    goto/16 :goto_5

    .line 162
    :cond_c
    goto/16 :goto_2
.end method
