.class final Lcom/sun/openpisces/Stroker$PolyStack;
.super Ljava/lang/Object;
.source "Stroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/Stroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PolyStack"
.end annotation


# static fields
.field private static final INIT_SIZE:I = 0x32


# instance fields
.field curveTypes:[I

.field curves:[F

.field end:I

.field numCurves:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1178
    move-object v1, v0

    const/16 v2, 0x190

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    .line 1179
    move-object v1, v0

    const/16 v2, 0x32

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    .line 1180
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    .line 1181
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    .line 1182
    return-void
.end method

.method private ensureSpace(I)V
    .locals 6

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move v1, p1

    .local v1, "n":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1190
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v4, v1

    add-int/2addr v3, v4

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 1191
    .local v2, "newSize":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move v5, v2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    .line 1193
    .end local v2    # "newSize":I
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 1194
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 1195
    .restart local v2    # "newSize":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move v5, v2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    .line 1197
    .end local v2    # "newSize":I
    :cond_1
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Stroker$PolyStack;
    return v0

    .restart local v0    # "this":Lcom/sun/openpisces/Stroker$PolyStack;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pop([F)I
    .locals 10

    .prologue
    .line 1232
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move-object v1, p1

    .local v1, "pts":[F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    move v2, v3

    .line 1233
    .local v2, "ret":I
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    .line 1234
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    .line 1235
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1236
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/openpisces/Stroker$PolyStack;
    return v0
.end method

.method public pop(Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 13

    .prologue
    .line 1240
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move-object v1, p1

    .local v1, "io":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    .line 1241
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    aget v3, v3, v4

    move v2, v3

    .line 1242
    .local v2, "type":I
    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    iget v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    .line 1243
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 1256
    :goto_0
    :pswitch_0
    return-void

    .line 1245
    :pswitch_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v11, 0x5

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    invoke-interface/range {v3 .. v9}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    .line 1248
    goto :goto_0

    .line 1250
    :pswitch_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    .line 1252
    goto :goto_0

    .line 1254
    :pswitch_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    goto/16 :goto_0

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pushCubic(FFFFFF)V
    .locals 14

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move v1, p1

    .local v1, "x0":F
    move/from16 v2, p2

    .local v2, "y0":F
    move/from16 v3, p3

    .local v3, "x1":F
    move/from16 v4, p4

    .local v4, "y1":F
    move/from16 v5, p5

    .local v5, "x2":F
    move/from16 v6, p6

    .local v6, "y2":F
    move-object v7, v0

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Lcom/sun/openpisces/Stroker$PolyStack;->ensureSpace(I)V

    .line 1204
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/16 v9, 0x8

    aput v9, v7, v8

    .line 1208
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v9, v5

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v9, v6

    aput v9, v7, v8

    .line 1209
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v9, v3

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v9, v4

    aput v9, v7, v8

    .line 1210
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v9, v1

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v9, v2

    aput v9, v7, v8

    .line 1211
    return-void
.end method

.method public pushLine(FF)V
    .locals 10

    .prologue
    .line 1224
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/sun/openpisces/Stroker$PolyStack;->ensureSpace(I)V

    .line 1225
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/4 v5, 0x4

    aput v5, v3, v4

    .line 1227
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v5, v1

    aput v5, v3, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v5, v2

    aput v5, v3, v4

    .line 1228
    return-void
.end method

.method public pushQuad(FFFF)V
    .locals 12

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move v3, p3

    .local v3, "x1":F
    move/from16 v4, p4

    .local v4, "y1":F
    move-object v5, v0

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/sun/openpisces/Stroker$PolyStack;->ensureSpace(I)V

    .line 1217
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    const/4 v7, 0x6

    aput v7, v5, v6

    .line 1219
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v7, v3

    aput v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v7, v4

    aput v7, v5, v6

    .line 1220
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v7, v1

    aput v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v7, v2

    aput v7, v5, v6

    .line 1221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker$PolyStack;
    const-string v5, ""

    move-object v1, v5

    .line 1261
    .local v1, "ret":Ljava/lang/String;
    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    move v2, v5

    .line 1262
    .local v2, "nc":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->end:I

    move v3, v5

    .line 1263
    .local v3, "last":I
    :goto_0
    move v5, v2

    if-lez v5, :cond_0

    .line 1264
    add-int/lit8 v2, v2, -0x1

    .line 1265
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Stroker$PolyStack;->curveTypes:[I

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->numCurves:I

    aget v5, v5, v6

    move v4, v5

    .line 1266
    .local v4, "type":I
    move v5, v3

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v5, v6

    move v3, v5

    .line 1267
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 1278
    :goto_1
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Stroker$PolyStack;->curves:[F

    move v7, v3

    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1279
    goto :goto_0

    .line 1269
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cubic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1270
    goto :goto_1

    .line 1272
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "quad: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1273
    goto :goto_1

    .line 1275
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_1

    .line 1280
    .end local v4    # "type":I
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/openpisces/Stroker$PolyStack;
    return-object v0

    .line 1267
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
