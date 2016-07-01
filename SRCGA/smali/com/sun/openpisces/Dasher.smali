.class public final Lcom/sun/openpisces/Dasher;
.super Ljava/lang/Object;
.source "Dasher.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathConsumer2D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/openpisces/Dasher$LengthIterator;
    }
.end annotation


# static fields
.field static MAX_CYCLES:F


# instance fields
.field private curCurvepts:[F

.field private dash:[F

.field private dashOn:Z

.field private firstSegidx:I

.field private firstSegmentsBuffer:[F

.field private idx:I

.field private li:Lcom/sun/openpisces/Dasher$LengthIterator;

.field private needsMoveTo:Z

.field private final out:Lcom/sun/javafx/geom/PathConsumer2D;

.field private phase:F

.field private startDashOn:Z

.field private startIdx:I

.field private startPhase:F

.field private starting:Z

.field private sx:F

.field private sy:F

.field private x0:F

.field private y0:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x4b742400    # 1.6E7f

    sput v0, Lcom/sun/openpisces/Dasher;->MAX_CYCLES:F

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move-object v1, p1

    .local v1, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 177
    move-object v2, v0

    const/4 v3, 0x7

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    .line 178
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    .line 259
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/openpisces/Dasher;->li:Lcom/sun/openpisces/Dasher$LengthIterator;

    .line 75
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    .line 79
    move-object v2, v0

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;[FF)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move-object v1, p1

    .local v1, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v2, p2

    .local v2, "dash":[F
    move v3, p3

    .local v3, "phase":F
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/openpisces/Dasher;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 71
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/openpisces/Dasher;->reset([FF)V

    .line 72
    return-void
.end method

.method private emitFirstSegments()V
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    if-ge v2, v3, :cond_0

    .line 167
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    move v6, v1

    aget v5, v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/openpisces/Dasher;->emitSeg([FII)V

    .line 168
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    move v4, v1

    aget v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    move v1, v2

    goto :goto_0

    .line 170
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    .line 171
    return-void
.end method

.method private emitSeg([FII)V
    .locals 13

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move-object v1, p1

    .local v1, "buf":[F
    move v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "type":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 163
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x4

    aget v9, v9, v10

    move-object v10, v1

    move v11, v2

    const/4 v12, 0x5

    add-int/lit8 v11, v11, 0x5

    aget v10, v10, v11

    invoke-interface/range {v4 .. v10}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    .line 159
    goto :goto_0

    .line 161
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v5, v1

    move v6, v2

    aget v5, v5, v6

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private goTo([FII)V
    .locals 14

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move-object v1, p1

    .local v1, "pts":[F
    move/from16 v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "type":I
    move-object v6, v1

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    const/4 v8, 0x4

    add-int/lit8 v7, v7, -0x4

    aget v6, v6, v7

    move v4, v6

    .line 183
    .local v4, "x":F
    move-object v6, v1

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    const/4 v8, 0x3

    add-int/lit8 v7, v7, -0x3

    aget v6, v6, v7

    move v5, v6

    .line 184
    .local v5, "y":F
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-eqz v6, :cond_2

    .line 185
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/openpisces/Dasher;->starting:Z

    if-eqz v6, :cond_0

    .line 186
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    .line 187
    invoke-static {v7, v8, v9}, Lcom/sun/openpisces/Helpers;->widenArray([FII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    .line 189
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    move v8, v3

    int-to-float v8, v8

    aput v8, v6, v7

    .line 190
    move-object v6, v1

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Dasher;->firstSegmentsBuffer:[F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    move v10, v3

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    .line 203
    :goto_0
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/openpisces/Dasher;->x0:F

    .line 204
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/openpisces/Dasher;->y0:F

    .line 205
    return-void

    .line 193
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/openpisces/Dasher;->needsMoveTo:Z

    if-eqz v6, :cond_1

    .line 194
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->x0:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Dasher;->y0:F

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 195
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/openpisces/Dasher;->needsMoveTo:Z

    .line 197
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/openpisces/Dasher;->emitSeg([FII)V

    goto :goto_0

    .line 200
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/openpisces/Dasher;->starting:Z

    .line 201
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/openpisces/Dasher;->needsMoveTo:Z

    goto :goto_0
.end method

.method private static pointCurve([FI)Z
    .locals 7

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "curve":[F
    move v1, p1

    .local v1, "type":I
    const/4 v3, 0x2

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 303
    move-object v3, v0

    move v4, v2

    aget v3, v3, v4

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 304
    const/4 v3, 0x0

    move v0, v3

    .line 307
    .end local v0    # "curve":[F
    :goto_1
    return v0

    .line 302
    .restart local v0    # "curve":[F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method private somethingTo(I)V
    .locals 15

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move/from16 v1, p1

    .local v1, "type":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    move v7, v1

    invoke-static {v6, v7}, Lcom/sun/openpisces/Dasher;->pointCurve([FI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    .line 299
    :goto_0
    return-void

    .line 267
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->li:Lcom/sun/openpisces/Dasher$LengthIterator;

    if-nez v6, :cond_1

    .line 268
    move-object v6, v0

    new-instance v7, Lcom/sun/openpisces/Dasher$LengthIterator;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x4

    const v10, 0x3c23d70a    # 0.01f

    invoke-direct {v8, v9, v10}, Lcom/sun/openpisces/Dasher$LengthIterator;-><init>(IF)V

    iput-object v7, v6, Lcom/sun/openpisces/Dasher;->li:Lcom/sun/openpisces/Dasher$LengthIterator;

    .line 270
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->li:Lcom/sun/openpisces/Dasher$LengthIterator;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    move v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/openpisces/Dasher$LengthIterator;->initializeIterationOnCurve([FI)V

    .line 272
    const/4 v6, 0x0

    move v2, v6

    .line 273
    .local v2, "curCurveoff":I
    const/4 v6, 0x0

    move v3, v6

    .line 274
    .local v3, "lastSplitT":F
    const/4 v6, 0x0

    move v4, v6

    .line 275
    .local v4, "t":F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->idx:I

    aget v6, v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->phase:F

    sub-float/2addr v6, v7

    move v5, v6

    .line 276
    .local v5, "leftInThisDashSegment":F
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->li:Lcom/sun/openpisces/Dasher$LengthIterator;

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/openpisces/Dasher$LengthIterator;->next(F)F

    move-result v6

    move v14, v6

    move v6, v14

    move v7, v14

    move v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 277
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 278
    move v6, v4

    move v7, v3

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v3

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    move v12, v1

    move v13, v1

    invoke-static/range {v6 .. v13}, Lcom/sun/openpisces/Helpers;->subdivideAt(F[FI[FI[FII)V

    .line 282
    move v6, v4

    move v3, v6

    .line 283
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x2

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/openpisces/Dasher;->goTo([FII)V

    .line 284
    move v6, v1

    move v2, v6

    .line 287
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->idx:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Dasher;->dash:[F

    array-length v8, v8

    rem-int/2addr v7, v8

    iput v7, v6, Lcom/sun/openpisces/Dasher;->idx:I

    .line 288
    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 289
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/openpisces/Dasher;->phase:F

    .line 290
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->idx:I

    aget v6, v6, v7

    move v5, v6

    goto :goto_1

    .line 288
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 292
    :cond_4
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/openpisces/Dasher;->goTo([FII)V

    .line 293
    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lcom/sun/openpisces/Dasher;->phase:F

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Dasher;->li:Lcom/sun/openpisces/Dasher$LengthIterator;

    invoke-virtual {v8}, Lcom/sun/openpisces/Dasher$LengthIterator;->lastSegLen()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v6, Lcom/sun/openpisces/Dasher;->phase:F

    .line 294
    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Dasher;->phase:F

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Dasher;->idx:I

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 295
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/openpisces/Dasher;->phase:F

    .line 296
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->idx:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Dasher;->dash:[F

    array-length v8, v8

    rem-int/2addr v7, v8

    iput v7, v6, Lcom/sun/openpisces/Dasher;->idx:I

    .line 297
    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 299
    :cond_5
    goto/16 :goto_0

    .line 297
    :cond_6
    const/4 v7, 0x0

    goto :goto_3
.end method


# virtual methods
.method public closePath()V
    .locals 4

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher;->sx:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher;->sy:F

    invoke-virtual {v1, v2, v3}, Lcom/sun/openpisces/Dasher;->lineTo(FF)V

    .line 594
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    if-lez v1, :cond_2

    .line 595
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/openpisces/Dasher;->needsMoveTo:Z

    if-eqz v1, :cond_1

    .line 596
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher;->sx:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher;->sy:F

    invoke-interface {v1, v2, v3}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 598
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Dasher;->emitFirstSegments()V

    .line 600
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher;->sx:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher;->sy:F

    invoke-virtual {v1, v2, v3}, Lcom/sun/openpisces/Dasher;->moveTo(FF)V

    .line 601
    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 10

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move v5, p5

    .local v5, "x3":F
    move/from16 v6, p6

    .local v6, "y3":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Dasher;->x0:F

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Dasher;->y0:F

    aput v9, v7, v8

    .line 578
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x2

    move v9, v1

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x3

    move v9, v2

    aput v9, v7, v8

    .line 579
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x4

    move v9, v3

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x5

    move v9, v4

    aput v9, v7, v8

    .line 580
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x6

    move v9, v5

    aput v9, v7, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v8, 0x7

    move v9, v6

    aput v9, v7, v8

    .line 581
    move-object v7, v0

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Lcom/sun/openpisces/Dasher;->somethingTo(I)V

    .line 582
    return-void
.end method

.method public lineTo(FF)V
    .locals 18

    .prologue
    .line 208
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move/from16 v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move v12, v1

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->x0:F

    sub-float/2addr v12, v13

    move v3, v12

    .line 209
    .local v3, "dx":F
    move v12, v2

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->y0:F

    sub-float/2addr v12, v13

    move v4, v12

    .line 211
    .local v4, "dy":F
    move v12, v3

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v4

    move v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v5, v12

    .line 213
    .local v5, "len":F
    move v12, v5

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    .line 214
    .line 235
    :goto_0
    return-void

    .line 219
    :cond_0
    move v12, v3

    move v13, v5

    div-float/2addr v12, v13

    move v6, v12

    .line 220
    .local v6, "cx":F
    move v12, v4

    move v13, v5

    div-float/2addr v12, v13

    move v7, v12

    .line 223
    .local v7, "cy":F
    :goto_1
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->idx:I

    aget v12, v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->phase:F

    sub-float/2addr v12, v13

    move v8, v12

    .line 224
    .local v8, "leftInThisDashSegment":F
    move v12, v5

    move v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_3

    .line 225
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v13, 0x0

    move v14, v1

    aput v14, v12, v13

    .line 226
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v13, 0x1

    move v14, v2

    aput v14, v12, v13

    .line 227
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/openpisces/Dasher;->goTo([FII)V

    .line 229
    move-object v12, v0

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    iget v13, v13, Lcom/sun/openpisces/Dasher;->phase:F

    move v14, v5

    add-float/2addr v13, v14

    iput v13, v12, Lcom/sun/openpisces/Dasher;->phase:F

    .line 230
    move v12, v5

    move v13, v8

    cmpl-float v12, v12, v13

    if-nez v12, :cond_1

    .line 231
    move-object v12, v0

    const/4 v13, 0x0

    iput v13, v12, Lcom/sun/openpisces/Dasher;->phase:F

    .line 232
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->idx:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/openpisces/Dasher;->dash:[F

    array-length v14, v14

    rem-int/2addr v13, v14

    iput v13, v12, Lcom/sun/openpisces/Dasher;->idx:I

    .line 233
    move-object v12, v0

    move-object v13, v0

    iget-boolean v13, v13, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v12, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 235
    :cond_1
    goto :goto_0

    .line 233
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 238
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->idx:I

    aget v12, v12, v13

    move v13, v6

    mul-float/2addr v12, v13

    move v9, v12

    .line 239
    .local v9, "dashdx":F
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->idx:I

    aget v12, v12, v13

    move v13, v7

    mul-float/2addr v12, v13

    move v10, v12

    .line 240
    .local v10, "dashdy":F
    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Dasher;->phase:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    .line 241
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v13, 0x0

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/Dasher;->x0:F

    move v15, v9

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 242
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v13, 0x1

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/Dasher;->y0:F

    move v15, v10

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 249
    :goto_3
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/openpisces/Dasher;->goTo([FII)V

    .line 251
    move v12, v5

    move v13, v8

    sub-float/2addr v12, v13

    move v5, v12

    .line 253
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher;->idx:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/openpisces/Dasher;->dash:[F

    array-length v14, v14

    rem-int/2addr v13, v14

    iput v13, v12, Lcom/sun/openpisces/Dasher;->idx:I

    .line 254
    move-object v12, v0

    move-object v13, v0

    iget-boolean v13, v13, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_4
    iput-boolean v13, v12, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 255
    move-object v12, v0

    const/4 v13, 0x0

    iput v13, v12, Lcom/sun/openpisces/Dasher;->phase:F

    .line 256
    goto/16 :goto_1

    .line 244
    :cond_4
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/openpisces/Dasher;->dash:[F

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/Dasher;->idx:I

    aget v13, v13, v14

    div-float/2addr v12, v13

    move v11, v12

    .line 245
    .local v11, "p":F
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v13, 0x0

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/Dasher;->x0:F

    move v15, v11

    move/from16 v16, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 246
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v13, 0x1

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/Dasher;->y0:F

    move v15, v11

    move/from16 v16, v10

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    goto :goto_3

    .line 254
    .end local v11    # "p":F
    :cond_5
    const/4 v13, 0x0

    goto :goto_4
.end method

.method public moveTo(FF)V
    .locals 9

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    if-lez v3, :cond_0

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Dasher;->sx:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher;->sy:F

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 138
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/openpisces/Dasher;->emitFirstSegments()V

    .line 140
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/openpisces/Dasher;->needsMoveTo:Z

    .line 141
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Dasher;->startIdx:I

    iput v4, v3, Lcom/sun/openpisces/Dasher;->idx:I

    .line 142
    move-object v3, v0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/openpisces/Dasher;->startDashOn:Z

    iput-boolean v4, v3, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 143
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Dasher;->startPhase:F

    iput v4, v3, Lcom/sun/openpisces/Dasher;->phase:F

    .line 144
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/openpisces/Dasher;->x0:F

    iput v4, v3, Lcom/sun/openpisces/Dasher;->sx:F

    .line 145
    move-object v3, v0

    move-object v4, v0

    move v5, v2

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/openpisces/Dasher;->y0:F

    iput v4, v3, Lcom/sun/openpisces/Dasher;->sy:F

    .line 146
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/openpisces/Dasher;->starting:Z

    .line 147
    return-void
.end method

.method public pathDone()V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Dasher;->firstSegidx:I

    if-lez v1, :cond_0

    .line 605
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher;->sx:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher;->sy:F

    invoke-interface {v1, v2, v3}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 606
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Dasher;->emitFirstSegments()V

    .line 608
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Dasher;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->pathDone()V

    .line 609
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 8

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->x0:F

    aput v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher;->y0:F

    aput v7, v5, v6

    .line 587
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v6, 0x2

    move v7, v1

    aput v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v6, 0x3

    move v7, v2

    aput v7, v5, v6

    .line 588
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v6, 0x4

    move v7, v3

    aput v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher;->curCurvepts:[F

    const/4 v6, 0x5

    move v7, v4

    aput v7, v5, v6

    .line 589
    move-object v5, v0

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/sun/openpisces/Dasher;->somethingTo(I)V

    .line 590
    return-void
.end method

.method public reset([FF)V
    .locals 16

    .prologue
    .line 88
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/Dasher;
    move-object/from16 v2, p1

    .local v2, "dash":[F
    move/from16 v3, p2

    .local v3, "phase":F
    const/4 v10, 0x0

    move v4, v10

    .line 89
    .local v4, "sidx":I
    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 90
    const/4 v10, 0x0

    move v5, v10

    .line 91
    .local v5, "sum":F
    move-object v10, v2

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_0

    move-object v10, v6

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 92
    .local v9, "d":F
    move v10, v5

    move v11, v9

    add-float/2addr v10, v11

    move v5, v10

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 94
    .end local v9    # "d":F
    :cond_0
    move v10, v3

    move v11, v5

    div-float/2addr v10, v11

    move v6, v10

    .line 95
    .local v6, "cycles":F
    move v10, v3

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 96
    move v10, v6

    neg-float v10, v10

    sget v11, Lcom/sun/openpisces/Dasher;->MAX_CYCLES:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    .line 97
    const/4 v10, 0x0

    move v3, v10

    .line 128
    :cond_1
    :goto_1
    move-object v10, v1

    move-object v11, v2

    iput-object v11, v10, Lcom/sun/openpisces/Dasher;->dash:[F

    .line 129
    move-object v10, v1

    move-object v11, v1

    move v12, v3

    move-object v14, v11

    move v15, v12

    move v11, v15

    move-object v12, v14

    move v13, v15

    iput v13, v12, Lcom/sun/openpisces/Dasher;->phase:F

    iput v11, v10, Lcom/sun/openpisces/Dasher;->startPhase:F

    .line 130
    move-object v10, v1

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/openpisces/Dasher;->dashOn:Z

    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->startDashOn:Z

    .line 131
    move-object v10, v1

    move v11, v4

    iput v11, v10, Lcom/sun/openpisces/Dasher;->startIdx:I

    .line 132
    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->starting:Z

    .line 133
    return-void

    .line 99
    :cond_2
    move v10, v6

    neg-float v10, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v7, v10

    .line 100
    .local v7, "fullcycles":I
    move v10, v7

    move-object v11, v2

    array-length v11, v11

    and-int/2addr v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    .line 101
    move-object v10, v1

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 103
    :cond_3
    move v10, v3

    move v11, v7

    int-to-float v11, v11

    move v12, v5

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v3, v10

    .line 104
    :goto_3
    move v10, v3

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 105
    add-int/lit8 v4, v4, -0x1

    move v10, v4

    if-gez v10, :cond_4

    move-object v10, v2

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v4, v10

    .line 106
    :cond_4
    move v10, v3

    move-object v11, v2

    move v12, v4

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v3, v10

    .line 107
    move-object v10, v1

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->dashOn:Z

    goto :goto_3

    .line 101
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 107
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 109
    :cond_7
    goto :goto_1

    .line 110
    .end local v7    # "fullcycles":I
    :cond_8
    move v10, v3

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 111
    move v10, v6

    sget v11, Lcom/sun/openpisces/Dasher;->MAX_CYCLES:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    .line 112
    const/4 v10, 0x0

    move v3, v10

    goto :goto_1

    .line 114
    :cond_9
    move v10, v6

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v7, v10

    .line 115
    .restart local v7    # "fullcycles":I
    move v10, v7

    move-object v11, v2

    array-length v11, v11

    and-int/2addr v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a

    .line 116
    move-object v10, v1

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v11, :cond_b

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->dashOn:Z

    .line 118
    :cond_a
    move v10, v3

    move v11, v7

    int-to-float v11, v11

    move v12, v5

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v3, v10

    .line 120
    :goto_6
    move v10, v3

    move-object v11, v2

    move v12, v4

    aget v11, v11, v12

    move v14, v11

    move v11, v14

    move v12, v14

    move v8, v12

    .local v8, "d":F
    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1

    .line 121
    move v10, v3

    move v11, v8

    sub-float/2addr v10, v11

    move v3, v10

    .line 122
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v2

    array-length v11, v11

    rem-int/2addr v10, v11

    move v4, v10

    .line 123
    move-object v10, v1

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/openpisces/Dasher;->dashOn:Z

    if-nez v11, :cond_c

    const/4 v11, 0x1

    :goto_7
    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher;->dashOn:Z

    goto :goto_6

    .line 116
    .end local v8    # "d":F
    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 123
    .restart local v8    # "d":F
    :cond_c
    const/4 v11, 0x0

    goto :goto_7
.end method
