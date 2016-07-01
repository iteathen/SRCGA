.class public Lcom/sun/javafx/geom/Path2D;
.super Lcom/sun/javafx/geom/Shape;
.source "Path2D.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathConsumer2D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/Path2D$Iterator;,
        Lcom/sun/javafx/geom/Path2D$SVGParser;,
        Lcom/sun/javafx/geom/Path2D$TxIterator;,
        Lcom/sun/javafx/geom/Path2D$CopyIterator;,
        Lcom/sun/javafx/geom/Path2D$CornerPrefix;
    }
.end annotation


# static fields
.field static final EXPAND_MAX:I = 0x1f4

.field static final INIT_SIZE:I = 0x14

.field private static final SEG_CLOSE:B = 0x4t

.field private static final SEG_CUBICTO:B = 0x3t

.field private static final SEG_LINETO:B = 0x1t

.field private static final SEG_MOVETO:B = 0x0t

.field private static final SEG_QUADTO:B = 0x2t

.field public static final WIND_EVEN_ODD:I = 0x0

.field public static final WIND_NON_ZERO:I = 0x1

.field static final curvecoords:[I


# instance fields
.field currX:F

.field currY:F

.field floatCoords:[F

.field moveX:F

.field moveY:F

.field numCoords:I

.field numTypes:I

.field pointTypes:[B

.field prevX:F

.field prevY:F

.field windingRule:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/geom/Path2D;->curvecoords:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x4
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/Path2D;-><init>(II)V

    .line 116
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "rule":I
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;-><init>(II)V

    .line 129
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "rule":I
    move v2, p2

    .local v2, "initialCapacity":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 146
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 147
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    .line 148
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 149
    return-void
.end method

.method public constructor <init>(I[BI[FI)V
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "windingRule":I
    move-object v2, p2

    .local v2, "pointTypes":[B
    move v3, p3

    .local v3, "numTypes":I
    move-object v4, p4

    .local v4, "pointCoords":[F
    move v5, p5

    .local v5, "numCoords":I
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 232
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    .line 233
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    .line 234
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    .line 235
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 236
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 11

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 175
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/geom/Path2D;

    if-eqz v4, :cond_2

    .line 176
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/geom/Path2D;

    move-object v3, v4

    .line 177
    .local v3, "p2d":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 178
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    .line 181
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    array-length v6, v6

    invoke-static {v5, v6}, Lcom/sun/javafx/geom/Path2D;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    .line 183
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    .line 184
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    invoke-static {v5, v6}, Lcom/sun/javafx/geom/Path2D;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 186
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->moveX:F

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->moveX:F

    .line 187
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->moveY:F

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->moveY:F

    .line 188
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->prevX:F

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->prevX:F

    .line 189
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->prevY:F

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->prevY:F

    .line 190
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->currX:F

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->currX:F

    .line 191
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->currY:F

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->currY:F

    .line 209
    .line 216
    .end local v3    # "p2d":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return-void

    .line 193
    .restart local v3    # "p2d":Lcom/sun/javafx/geom/Path2D;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x6

    add-int/lit8 v5, v5, 0x6

    new-array v5, v5, [F

    iput-object v5, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 194
    move-object v4, v2

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 195
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->moveX:F

    aput v6, v4, v5

    .line 196
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->moveY:F

    aput v6, v4, v5

    .line 197
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v6, v4, v5

    .line 198
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v6, v4, v5

    .line 199
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v6, v4, v5

    .line 200
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x5

    add-int/lit8 v5, v5, 0x5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v6, v4, v5

    .line 201
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v9, 0x3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 202
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->moveX:F

    .line 203
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->moveY:F

    .line 204
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->prevX:F

    .line 205
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->prevY:F

    .line 206
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    aget v5, v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->currX:F

    .line 207
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v7, 0x5

    add-int/lit8 v6, v6, 0x5

    aget v5, v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->currY:F

    goto/16 :goto_0

    .line 210
    .end local v3    # "p2d":Lcom/sun/javafx/geom/Path2D;
    :cond_2
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v4

    move-object v3, v4

    .line 211
    .local v3, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 212
    move-object v4, v0

    const/16 v5, 0x14

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    .line 213
    move-object v4, v0

    const/16 v5, 0x28

    new-array v5, v5, [F

    iput-object v5, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 214
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    goto/16 :goto_0
.end method

.method private close(IFF)Z
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "ix":I
    move v2, p2

    .local v2, "fx":F
    move v3, p3

    .local v3, "tolerance":F
    move v4, v1

    int-to-float v4, v4

    move v5, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v5, v3

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static contains(Lcom/sun/javafx/geom/PathIterator;FF)Z
    .locals 8

    .prologue
    .line 2008
    move-object v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v5, v1

    const/4 v6, 0x0

    mul-float/2addr v5, v6

    move v6, v2

    const/4 v7, 0x0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 2012
    move-object v5, v0

    invoke-interface {v5}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    :goto_0
    move v3, v5

    .line 2013
    .local v3, "mask":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FF)I

    move-result v5

    move v4, v5

    .line 2014
    .local v4, "cross":I
    move v5, v4

    move v6, v3

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .line 2021
    .end local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    .end local v3    # "mask":I
    .end local v4    # "cross":I
    :goto_2
    return v0

    .line 2012
    .restart local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 2014
    .restart local v3    # "mask":I
    .restart local v4    # "cross":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 2021
    .end local v3    # "mask":I
    .end local v4    # "cross":I
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2
.end method

.method public static contains(Lcom/sun/javafx/geom/PathIterator;FFFF)Z
    .locals 13

    .prologue
    .line 2106
    move-object v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v7, v1

    move v8, v3

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2115
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2122
    .end local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_0
    return v0

    .line 2117
    .restart local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 2118
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2120
    :cond_3
    move-object v7, v0

    invoke-interface {v7}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    :goto_1
    move v5, v7

    .line 2121
    .local v5, "mask":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v3

    add-float/2addr v10, v11

    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FFFF)I

    move-result v7

    move v6, v7

    .line 2122
    .local v6, "crossings":I
    move v7, v6

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_5

    move v7, v6

    move v8, v5

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_0

    .line 2120
    .end local v5    # "mask":I
    .end local v6    # "crossings":I
    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    .line 2122
    .restart local v5    # "mask":I
    .restart local v6    # "crossings":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public static contains(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 2039
    move-object v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;->contains(Lcom/sun/javafx/geom/PathIterator;FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    return v0
.end method

.method static copyOf([BI)[B
    .locals 9

    .prologue
    .line 2295
    move-object v0, p0

    .local v0, "original":[B
    move v1, p1

    .local v1, "newLength":I
    move v3, v1

    new-array v3, v3, [B

    move-object v2, v3

    .line 2296
    .local v2, "copy":[B
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    move v8, v1

    .line 2297
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2296
    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2298
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "original":[B
    return-object v0
.end method

.method static copyOf([FI)[F
    .locals 9

    .prologue
    .line 2301
    move-object v0, p0

    .local v0, "original":[F
    move v1, p1

    .local v1, "newLength":I
    move v3, v1

    new-array v3, v3, [F

    move-object v2, v3

    .line 2302
    .local v2, "copy":[F
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    move v8, v1

    .line 2303
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2302
    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2304
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "original":[F
    return-object v0
.end method

.method public static intersects(Lcom/sun/javafx/geom/PathIterator;FFFF)Z
    .locals 13

    .prologue
    .line 2198
    move-object v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v7, v1

    move v8, v3

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2207
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2214
    .end local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_0
    return v0

    .line 2209
    .restart local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 2210
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2212
    :cond_3
    move-object v7, v0

    invoke-interface {v7}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v7, -0x1

    :goto_1
    move v5, v7

    .line 2213
    .local v5, "mask":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v3

    add-float/2addr v10, v11

    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FFFF)I

    move-result v7

    move v6, v7

    .line 2214
    .local v6, "crossings":I
    move v7, v6

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_4

    move v7, v6

    move v8, v5

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    :cond_4
    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_0

    .line 2212
    .end local v5    # "mask":I
    .end local v6    # "crossings":I
    :cond_5
    const/4 v7, 0x2

    goto :goto_1

    .line 2214
    .restart local v5    # "mask":I
    .restart local v6    # "crossings":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final append(Lcom/sun/javafx/geom/PathIterator;Z)V
    .locals 12

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "pi":Lcom/sun/javafx/geom/PathIterator;
    move v2, p2

    .local v2, "connect":Z
    const/4 v4, 0x6

    new-array v4, v4, [F

    move-object v3, v4

    .line 1373
    .local v3, "coords":[F
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1374
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1404
    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 1405
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 1376
    :pswitch_0
    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 1377
    :cond_0
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 1378
    goto :goto_1

    .line 1380
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    aget v4, v4, v5

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    move-object v5, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 1385
    goto :goto_1

    .line 1389
    :cond_2
    :pswitch_1
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 1390
    goto :goto_1

    .line 1392
    :pswitch_2
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v3

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v3

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    .line 1394
    goto :goto_1

    .line 1396
    :pswitch_3
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v3

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v3

    const/4 v9, 0x3

    aget v8, v8, v9

    move-object v9, v3

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object v10, v3

    const/4 v11, 0x5

    aget v10, v10, v11

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    .line 1399
    goto/16 :goto_1

    .line 1401
    :pswitch_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    goto/16 :goto_1

    .line 1407
    :cond_3
    return-void

    .line 1374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final append(Lcom/sun/javafx/geom/Shape;Z)V
    .locals 6

    .prologue
    .line 1582
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move v2, p2

    .local v2, "connect":Z
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    .line 1583
    return-void
.end method

.method public final appendOvalQuadrant(FFFFFFFFLcom/sun/javafx/geom/Path2D$CornerPrefix;)V
    .locals 26

    .prologue
    .line 858
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Path2D;
    move/from16 v4, p1

    .local v4, "sx":F
    move/from16 v5, p2

    .local v5, "sy":F
    move/from16 v6, p3

    .local v6, "cx":F
    move/from16 v7, p4

    .local v7, "cy":F
    move/from16 v8, p5

    .local v8, "ex":F
    move/from16 v9, p6

    .local v9, "ey":F
    move/from16 v10, p7

    .local v10, "tfrom":F
    move/from16 v11, p8

    .local v11, "tto":F
    move-object/from16 v12, p9

    .local v12, "prefix":Lcom/sun/javafx/geom/Path2D$CornerPrefix;
    move/from16 v18, v10

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_0

    move/from16 v18, v10

    move/from16 v19, v11

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_0

    move/from16 v18, v11

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v18, v18, v19

    if-lez v18, :cond_1

    .line 859
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const-string v20, "0 <= tfrom <= tto <= 1 required"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 861
    :cond_1
    move/from16 v18, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v6

    move/from16 v21, v4

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fe1ac5111534a21L    # 0.5522847498307933

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v13, v18

    .line 862
    .local v13, "cx0":F
    move/from16 v18, v5

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v7

    move/from16 v21, v5

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fe1ac5111534a21L    # 0.5522847498307933

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 863
    .local v14, "cy0":F
    move/from16 v18, v8

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v6

    move/from16 v21, v8

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fe1ac5111534a21L    # 0.5522847498307933

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 864
    .local v15, "cx1":F
    move/from16 v18, v9

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v7

    move/from16 v21, v9

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fe1ac5111534a21L    # 0.5522847498307933

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 865
    .local v16, "cy1":F
    move/from16 v18, v11

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 866
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v19, v11

    sub-float v18, v18, v19

    move/from16 v17, v18

    .line 867
    .local v17, "t":F
    move/from16 v18, v8

    move/from16 v19, v15

    move/from16 v20, v8

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v8, v18

    .line 868
    move/from16 v18, v9

    move/from16 v19, v16

    move/from16 v20, v9

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v9, v18

    .line 869
    move/from16 v18, v15

    move/from16 v19, v13

    move/from16 v20, v15

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 870
    move/from16 v18, v16

    move/from16 v19, v14

    move/from16 v20, v16

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v16, v18

    .line 871
    move/from16 v18, v13

    move/from16 v19, v4

    move/from16 v20, v13

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v13, v18

    .line 872
    move/from16 v18, v14

    move/from16 v19, v5

    move/from16 v20, v14

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v14, v18

    .line 873
    move/from16 v18, v8

    move/from16 v19, v15

    move/from16 v20, v8

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v8, v18

    .line 874
    move/from16 v18, v9

    move/from16 v19, v16

    move/from16 v20, v9

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v9, v18

    .line 875
    move/from16 v18, v15

    move/from16 v19, v13

    move/from16 v20, v15

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 876
    move/from16 v18, v16

    move/from16 v19, v14

    move/from16 v20, v16

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v16, v18

    .line 877
    move/from16 v18, v8

    move/from16 v19, v15

    move/from16 v20, v8

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v8, v18

    .line 878
    move/from16 v18, v9

    move/from16 v19, v16

    move/from16 v20, v9

    sub-float v19, v19, v20

    move/from16 v20, v17

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v9, v18

    .line 880
    .end local v17    # "t":F
    :cond_2
    move/from16 v18, v10

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    .line 881
    move/from16 v18, v11

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    .line 882
    move/from16 v18, v10

    move/from16 v19, v11

    div-float v18, v18, v19

    move/from16 v10, v18

    .line 884
    :cond_3
    move/from16 v18, v4

    move/from16 v19, v13

    move/from16 v20, v4

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v4, v18

    .line 885
    move/from16 v18, v5

    move/from16 v19, v14

    move/from16 v20, v5

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v5, v18

    .line 886
    move/from16 v18, v13

    move/from16 v19, v15

    move/from16 v20, v13

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v13, v18

    .line 887
    move/from16 v18, v14

    move/from16 v19, v16

    move/from16 v20, v14

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v14, v18

    .line 888
    move/from16 v18, v15

    move/from16 v19, v8

    move/from16 v20, v15

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 889
    move/from16 v18, v16

    move/from16 v19, v9

    move/from16 v20, v16

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v16, v18

    .line 890
    move/from16 v18, v4

    move/from16 v19, v13

    move/from16 v20, v4

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v4, v18

    .line 891
    move/from16 v18, v5

    move/from16 v19, v14

    move/from16 v20, v5

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v5, v18

    .line 892
    move/from16 v18, v13

    move/from16 v19, v15

    move/from16 v20, v13

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v13, v18

    .line 893
    move/from16 v18, v14

    move/from16 v19, v16

    move/from16 v20, v14

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v14, v18

    .line 894
    move/from16 v18, v4

    move/from16 v19, v13

    move/from16 v20, v4

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v4, v18

    .line 895
    move/from16 v18, v5

    move/from16 v19, v14

    move/from16 v20, v5

    sub-float v19, v19, v20

    move/from16 v20, v10

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v5, v18

    .line 897
    :cond_4
    move-object/from16 v18, v12

    sget-object v19, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->MOVE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 899
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 908
    :cond_5
    :goto_0
    move/from16 v18, v10

    move/from16 v19, v11

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_6

    move/from16 v18, v4

    move/from16 v19, v13

    cmpl-float v18, v18, v19

    if-nez v18, :cond_a

    move/from16 v18, v13

    move/from16 v19, v15

    cmpl-float v18, v18, v19

    if-nez v18, :cond_a

    move/from16 v18, v15

    move/from16 v19, v8

    cmpl-float v18, v18, v19

    if-nez v18, :cond_a

    move/from16 v18, v5

    move/from16 v19, v14

    cmpl-float v18, v18, v19

    if-nez v18, :cond_a

    move/from16 v18, v14

    move/from16 v19, v16

    cmpl-float v18, v18, v19

    if-nez v18, :cond_a

    move/from16 v18, v16

    move/from16 v19, v9

    cmpl-float v18, v18, v19

    if-nez v18, :cond_a

    .line 912
    :cond_6
    move-object/from16 v18, v12

    sget-object v19, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->LINE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 913
    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 918
    :cond_7
    :goto_1
    return-void

    .line 900
    :cond_8
    move-object/from16 v18, v12

    sget-object v19, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->LINE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 901
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->currX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_9

    move/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->currY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_5

    .line 905
    :cond_9
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    goto/16 :goto_0

    .line 916
    :cond_a
    move-object/from16 v18, v3

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    goto :goto_1
.end method

.method public final appendSVGPath(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1735
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "svgpath":Ljava/lang/String;
    new-instance v4, Lcom/sun/javafx/geom/Path2D$SVGParser;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1736
    .local v2, "p":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->allowcomma:Z

    .line 1737
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->isDone()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1738
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->allowcomma:Z

    .line 1739
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->getChar()C

    move-result v4

    move v3, v4

    .line 1740
    .local v3, "cmd":C
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 1839
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid command ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in SVG path at pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1742
    :sswitch_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 1743
    :goto_1
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1744
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    goto :goto_1

    .line 1748
    :sswitch_1
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-lez v4, :cond_0

    .line 1749
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->moveToRel(FF)V

    .line 1753
    :goto_2
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1754
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineToRel(FF)V

    goto :goto_2

    .line 1751
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    goto :goto_2

    .line 1759
    :cond_1
    :sswitch_2
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 1760
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1761
    .line 1842
    :cond_2
    :goto_3
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->allowcomma:Z

    .line 1843
    goto/16 :goto_0

    .line 1764
    :cond_3
    :sswitch_3
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineToRel(FF)V

    .line 1765
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1766
    goto :goto_3

    .line 1769
    :cond_4
    :sswitch_4
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 1770
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1771
    goto :goto_3

    .line 1774
    :cond_5
    :sswitch_5
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineToRel(FF)V

    .line 1775
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1776
    goto :goto_3

    .line 1779
    :cond_6
    :sswitch_6
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 1780
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1781
    goto :goto_3

    .line 1784
    :cond_7
    :sswitch_7
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->lineToRel(FF)V

    .line 1785
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1786
    goto :goto_3

    .line 1789
    :cond_8
    :sswitch_8
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    .line 1790
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1791
    goto/16 :goto_3

    .line 1794
    :cond_9
    :sswitch_9
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->quadToRel(FFFF)V

    .line 1795
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1796
    goto/16 :goto_3

    .line 1799
    :cond_a
    :sswitch_a
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->quadToSmooth(FF)V

    .line 1800
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1801
    goto/16 :goto_3

    .line 1804
    :cond_b
    :sswitch_b
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->quadToSmoothRel(FF)V

    .line 1805
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1806
    goto/16 :goto_3

    .line 1809
    :cond_c
    :sswitch_c
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    .line 1810
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1811
    goto/16 :goto_3

    .line 1814
    :cond_d
    :sswitch_d
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/Path2D;->curveToRel(FFFFFF)V

    .line 1815
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1816
    goto/16 :goto_3

    .line 1819
    :cond_e
    :sswitch_e
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->curveToSmooth(FFFF)V

    .line 1820
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1821
    goto/16 :goto_3

    .line 1824
    :cond_f
    :sswitch_f
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->curveToSmoothRel(FFFF)V

    .line 1825
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1826
    goto/16 :goto_3

    .line 1829
    :cond_10
    :sswitch_10
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->a()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->b()Z

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Path2D$SVGParser;->b()Z

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v11

    invoke-virtual/range {v4 .. v11}, Lcom/sun/javafx/geom/Path2D;->arcTo(FFFZZFF)V

    .line 1830
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1831
    goto/16 :goto_3

    .line 1834
    :cond_11
    :sswitch_11
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Path2D$SVGParser;->a()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D$SVGParser;->b()Z

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Path2D$SVGParser;->b()Z

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Path2D$SVGParser;->f()F

    move-result v11

    invoke-virtual/range {v4 .. v11}, Lcom/sun/javafx/geom/Path2D;->arcToRel(FFFZZFF)V

    .line 1835
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D$SVGParser;->nextIsNumber()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1836
    goto/16 :goto_3

    .line 1837
    :sswitch_12
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    goto/16 :goto_3

    .line 1844
    .end local v3    # "cmd":C
    :cond_12
    return-void

    .line 1740
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_10
        0x43 -> :sswitch_c
        0x48 -> :sswitch_4
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x51 -> :sswitch_8
        0x53 -> :sswitch_e
        0x54 -> :sswitch_a
        0x56 -> :sswitch_6
        0x5a -> :sswitch_12
        0x61 -> :sswitch_11
        0x63 -> :sswitch_d
        0x68 -> :sswitch_5
        0x6c -> :sswitch_3
        0x6d -> :sswitch_1
        0x71 -> :sswitch_9
        0x73 -> :sswitch_f
        0x74 -> :sswitch_b
        0x76 -> :sswitch_7
        0x7a -> :sswitch_12
    .end sparse-switch
.end method

.method public arcTo(FFFZZFF)V
    .locals 85

    .prologue
    .line 971
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Path2D;
    move/from16 v4, p1

    .local v4, "radiusx":F
    move/from16 v5, p2

    .local v5, "radiusy":F
    move/from16 v6, p3

    .local v6, "xAxisRotation":F
    move/from16 v7, p4

    .local v7, "largeArcFlag":Z
    move/from16 v8, p5

    .local v8, "sweepFlag":Z
    move/from16 v9, p6

    .local v9, "x":F
    move/from16 v10, p7

    .local v10, "y":F
    move-object/from16 v74, v3

    move-object/from16 v0, v74

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v74, v0

    const/16 v75, 0x1

    move/from16 v0, v74

    move/from16 v1, v75

    if-ge v0, v1, :cond_0

    .line 972
    new-instance v74, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object/from16 v84, v74

    move-object/from16 v74, v84

    move-object/from16 v75, v84

    const-string v76, "missing initial moveto in path definition"

    invoke-direct/range {v75 .. v76}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v74

    .line 991
    :cond_0
    move/from16 v74, v4

    invoke-static/range {v74 .. v74}, Ljava/lang/Math;->abs(F)F

    move-result v74

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v11, v74

    .line 992
    .local v11, "rx":D
    move/from16 v74, v5

    invoke-static/range {v74 .. v74}, Ljava/lang/Math;->abs(F)F

    move-result v74

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v13, v74

    .line 993
    .local v13, "ry":D
    move-wide/from16 v74, v11

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-eqz v74, :cond_1

    move-wide/from16 v74, v13

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-nez v74, :cond_2

    .line 994
    :cond_1
    move-object/from16 v74, v3

    move/from16 v75, v9

    move/from16 v76, v10

    invoke-virtual/range {v74 .. v76}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 995
    .line 1160
    :goto_0
    return-void

    .line 997
    :cond_2
    move-object/from16 v74, v3

    move-object/from16 v0, v74

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->currX:F

    move/from16 v74, v0

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v15, v74

    .line 998
    .local v15, "x1":D
    move-object/from16 v74, v3

    move-object/from16 v0, v74

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->currY:F

    move/from16 v74, v0

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v17, v74

    .line 999
    .local v17, "y1":D
    move/from16 v74, v9

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v19, v74

    .line 1000
    .local v19, "x2":D
    move/from16 v74, v10

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v21, v74

    .line 1001
    .local v21, "y2":D
    move-wide/from16 v74, v15

    move-wide/from16 v76, v19

    cmpl-double v74, v74, v76

    if-nez v74, :cond_3

    move-wide/from16 v74, v17

    move-wide/from16 v76, v21

    cmpl-double v74, v74, v76

    if-nez v74, :cond_3

    .line 1002
    goto :goto_0

    .line 1005
    :cond_3
    move/from16 v74, v6

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-nez v74, :cond_4

    .line 1006
    const-wide/high16 v74, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v23, v74

    .line 1007
    .local v23, "cosphi":D
    const-wide/16 v74, 0x0

    move-wide/from16 v25, v74

    .line 1012
    .local v25, "sinphi":D
    :goto_1
    move-wide/from16 v74, v15

    move-wide/from16 v76, v19

    add-double v74, v74, v76

    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    div-double v74, v74, v76

    move-wide/from16 v27, v74

    .line 1013
    .local v27, "mx":D
    move-wide/from16 v74, v17

    move-wide/from16 v76, v21

    add-double v74, v74, v76

    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    div-double v74, v74, v76

    move-wide/from16 v29, v74

    .line 1014
    .local v29, "my":D
    move-wide/from16 v74, v15

    move-wide/from16 v76, v27

    sub-double v74, v74, v76

    move-wide/from16 v31, v74

    .line 1015
    .local v31, "relx1":D
    move-wide/from16 v74, v17

    move-wide/from16 v76, v29

    sub-double v74, v74, v76

    move-wide/from16 v33, v74

    .line 1016
    .local v33, "rely1":D
    move-wide/from16 v74, v23

    move-wide/from16 v76, v31

    mul-double v74, v74, v76

    move-wide/from16 v76, v25

    move-wide/from16 v78, v33

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v76, v11

    div-double v74, v74, v76

    move-wide/from16 v35, v74

    .line 1017
    .local v35, "x1p":D
    move-wide/from16 v74, v23

    move-wide/from16 v76, v33

    mul-double v74, v74, v76

    move-wide/from16 v76, v25

    move-wide/from16 v78, v31

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    move-wide/from16 v76, v13

    div-double v74, v74, v76

    move-wide/from16 v37, v74

    .line 1031
    .local v37, "y1p":D
    move-wide/from16 v74, v35

    move-wide/from16 v76, v35

    mul-double v74, v74, v76

    move-wide/from16 v76, v37

    move-wide/from16 v78, v37

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v39, v74

    .line 1032
    .local v39, "lenpsq":D
    move-wide/from16 v74, v39

    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    cmpl-double v74, v74, v76

    if-ltz v74, :cond_6

    .line 1046
    move-wide/from16 v74, v37

    move-wide/from16 v76, v11

    mul-double v74, v74, v76

    move-wide/from16 v41, v74

    .line 1047
    .local v41, "xqpr":D
    move-wide/from16 v74, v35

    move-wide/from16 v76, v13

    mul-double v74, v74, v76

    move-wide/from16 v43, v74

    .line 1048
    .local v43, "yqpr":D
    move/from16 v74, v8

    if-eqz v74, :cond_5

    move-wide/from16 v74, v41

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v41, v74

    .line 1049
    :goto_2
    move-wide/from16 v74, v23

    move-wide/from16 v76, v41

    mul-double v74, v74, v76

    move-wide/from16 v76, v25

    move-wide/from16 v78, v43

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    move-wide/from16 v45, v74

    .line 1050
    .local v45, "relxq":D
    move-wide/from16 v74, v23

    move-wide/from16 v76, v43

    mul-double v74, v74, v76

    move-wide/from16 v76, v25

    move-wide/from16 v78, v41

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v47, v74

    .line 1051
    .local v47, "relyq":D
    move-wide/from16 v74, v27

    move-wide/from16 v76, v45

    add-double v74, v74, v76

    move-wide/from16 v49, v74

    .line 1052
    .local v49, "xq":D
    move-wide/from16 v74, v29

    move-wide/from16 v76, v47

    add-double v74, v74, v76

    move-wide/from16 v51, v74

    .line 1053
    .local v51, "yq":D
    move-wide/from16 v74, v15

    move-wide/from16 v76, v45

    add-double v74, v74, v76

    move-wide/from16 v53, v74

    .line 1054
    .local v53, "xc":D
    move-wide/from16 v74, v17

    move-wide/from16 v76, v47

    add-double v74, v74, v76

    move-wide/from16 v55, v74

    .line 1055
    .local v55, "yc":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v15

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v75, v0

    move-wide/from16 v76, v17

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v76, v0

    move-wide/from16 v77, v53

    move-wide/from16 v0, v77

    double-to-float v0, v0

    move/from16 v77, v0

    move-wide/from16 v78, v55

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move-wide/from16 v79, v49

    move-wide/from16 v0, v79

    double-to-float v0, v0

    move/from16 v79, v0

    move-wide/from16 v80, v51

    move-wide/from16 v0, v80

    double-to-float v0, v0

    move/from16 v80, v0

    const/16 v81, 0x0

    const/high16 v82, 0x3f800000    # 1.0f

    sget-object v83, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    invoke-virtual/range {v74 .. v83}, Lcom/sun/javafx/geom/Path2D;->appendOvalQuadrant(FFFFFFFFLcom/sun/javafx/geom/Path2D$CornerPrefix;)V

    .line 1059
    move-wide/from16 v74, v19

    move-wide/from16 v76, v45

    add-double v74, v74, v76

    move-wide/from16 v53, v74

    .line 1060
    move-wide/from16 v74, v21

    move-wide/from16 v76, v47

    add-double v74, v74, v76

    move-wide/from16 v55, v74

    .line 1061
    move-object/from16 v74, v3

    move-wide/from16 v75, v49

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v75, v0

    move-wide/from16 v76, v51

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v76, v0

    move-wide/from16 v77, v53

    move-wide/from16 v0, v77

    double-to-float v0, v0

    move/from16 v77, v0

    move-wide/from16 v78, v55

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move-wide/from16 v79, v19

    move-wide/from16 v0, v79

    double-to-float v0, v0

    move/from16 v79, v0

    move-wide/from16 v80, v21

    move-wide/from16 v0, v80

    double-to-float v0, v0

    move/from16 v80, v0

    const/16 v81, 0x0

    const/high16 v82, 0x3f800000    # 1.0f

    sget-object v83, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    invoke-virtual/range {v74 .. v83}, Lcom/sun/javafx/geom/Path2D;->appendOvalQuadrant(FFFFFFFFLcom/sun/javafx/geom/Path2D$CornerPrefix;)V

    .line 1065
    goto/16 :goto_0

    .line 1009
    .end local v23    # "cosphi":D
    .end local v25    # "sinphi":D
    .end local v27    # "mx":D
    .end local v29    # "my":D
    .end local v31    # "relx1":D
    .end local v33    # "rely1":D
    .end local v35    # "x1p":D
    .end local v37    # "y1p":D
    .end local v39    # "lenpsq":D
    .end local v41    # "xqpr":D
    .end local v43    # "yqpr":D
    .end local v45    # "relxq":D
    .end local v47    # "relyq":D
    .end local v49    # "xq":D
    .end local v51    # "yq":D
    .end local v53    # "xc":D
    .end local v55    # "yc":D
    :cond_4
    move/from16 v74, v6

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->cos(D)D

    move-result-wide v74

    move-wide/from16 v23, v74

    .line 1010
    .restart local v23    # "cosphi":D
    move/from16 v74, v6

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->sin(D)D

    move-result-wide v74

    move-wide/from16 v25, v74

    .restart local v25    # "sinphi":D
    goto/16 :goto_1

    .line 1048
    .restart local v27    # "mx":D
    .restart local v29    # "my":D
    .restart local v31    # "relx1":D
    .restart local v33    # "rely1":D
    .restart local v35    # "x1p":D
    .restart local v37    # "y1p":D
    .restart local v39    # "lenpsq":D
    .restart local v41    # "xqpr":D
    .restart local v43    # "yqpr":D
    :cond_5
    move-wide/from16 v74, v43

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v43, v74

    goto/16 :goto_2

    .line 1084
    .end local v41    # "xqpr":D
    .end local v43    # "yqpr":D
    :cond_6
    const-wide/high16 v74, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v76, v39

    sub-double v74, v74, v76

    move-wide/from16 v76, v39

    div-double v74, v74, v76

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v74

    move-wide/from16 v41, v74

    .line 1088
    .local v41, "scalef":D
    move-wide/from16 v74, v41

    move-wide/from16 v76, v37

    mul-double v74, v74, v76

    move-wide/from16 v43, v74

    .line 1089
    .local v43, "cxp":D
    move-wide/from16 v74, v41

    move-wide/from16 v76, v35

    mul-double v74, v74, v76

    move-wide/from16 v45, v74

    .line 1092
    .local v45, "cyp":D
    move/from16 v74, v7

    move/from16 v75, v8

    move/from16 v0, v74

    move/from16 v1, v75

    if-ne v0, v1, :cond_a

    move-wide/from16 v74, v43

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v43, v74

    .line 1093
    :goto_3
    move-wide/from16 v74, v27

    move-wide/from16 v76, v23

    move-wide/from16 v78, v43

    mul-double v76, v76, v78

    move-wide/from16 v78, v11

    mul-double v76, v76, v78

    move-wide/from16 v78, v25

    move-wide/from16 v80, v45

    mul-double v78, v78, v80

    move-wide/from16 v80, v13

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v27, v74

    .line 1094
    move-wide/from16 v74, v29

    move-wide/from16 v76, v23

    move-wide/from16 v78, v45

    mul-double v76, v76, v78

    move-wide/from16 v78, v13

    mul-double v76, v76, v78

    move-wide/from16 v78, v25

    move-wide/from16 v80, v43

    mul-double v78, v78, v80

    move-wide/from16 v80, v11

    mul-double v78, v78, v80

    add-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v29, v74

    .line 1099
    move-wide/from16 v74, v35

    move-wide/from16 v76, v43

    sub-double v74, v74, v76

    move-wide/from16 v47, v74

    .line 1100
    .local v47, "ux":D
    move-wide/from16 v74, v37

    move-wide/from16 v76, v45

    sub-double v74, v74, v76

    move-wide/from16 v49, v74

    .line 1103
    .local v49, "uy":D
    move-wide/from16 v74, v35

    move-wide/from16 v76, v43

    add-double v74, v74, v76

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v51, v74

    .line 1104
    .local v51, "vx":D
    move-wide/from16 v74, v37

    move-wide/from16 v76, v45

    add-double v74, v74, v76

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v53, v74

    .line 1107
    .local v53, "vy":D
    const/16 v74, 0x0

    move/from16 v55, v74

    .line 1108
    .local v55, "done":Z
    const/high16 v74, 0x3f800000    # 1.0f

    move/from16 v56, v74

    .line 1109
    .local v56, "quadlen":F
    const/16 v74, 0x0

    move/from16 v57, v74

    .line 1112
    .local v57, "wasclose":Z
    :cond_7
    move-wide/from16 v74, v49

    move-wide/from16 v58, v74

    .line 1113
    .local v58, "xqp":D
    move-wide/from16 v74, v47

    move-wide/from16 v60, v74

    .line 1114
    .local v60, "yqp":D
    move/from16 v74, v8

    if-eqz v74, :cond_b

    move-wide/from16 v74, v58

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v58, v74

    .line 1116
    :goto_4
    move-wide/from16 v74, v58

    move-wide/from16 v76, v51

    mul-double v74, v74, v76

    move-wide/from16 v76, v60

    move-wide/from16 v78, v53

    mul-double v76, v76, v78

    add-double v74, v74, v76

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-lez v74, :cond_c

    .line 1119
    move-wide/from16 v74, v47

    move-wide/from16 v76, v51

    mul-double v74, v74, v76

    move-wide/from16 v76, v49

    move-wide/from16 v78, v53

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v62, v74

    .line 1120
    .local v62, "dot":D
    move-wide/from16 v74, v62

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-ltz v74, :cond_8

    .line 1125
    move-wide/from16 v74, v62

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->acos(D)D

    move-result-wide v74

    const-wide v76, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double v74, v74, v76

    move-wide/from16 v0, v74

    double-to-float v0, v0

    move/from16 v74, v0

    move/from16 v56, v74

    .line 1126
    const/16 v74, 0x1

    move/from16 v55, v74

    .line 1130
    :cond_8
    const/16 v74, 0x1

    move/from16 v57, v74

    .line 1145
    .end local v62    # "dot":D
    :cond_9
    move-wide/from16 v74, v23

    move-wide/from16 v76, v58

    mul-double v74, v74, v76

    move-wide/from16 v76, v11

    mul-double v74, v74, v76

    move-wide/from16 v76, v25

    move-wide/from16 v78, v60

    mul-double v76, v76, v78

    move-wide/from16 v78, v13

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    move-wide/from16 v62, v74

    .line 1146
    .local v62, "relxq":D
    move-wide/from16 v74, v23

    move-wide/from16 v76, v60

    mul-double v74, v74, v76

    move-wide/from16 v76, v13

    mul-double v74, v74, v76

    move-wide/from16 v76, v25

    move-wide/from16 v78, v58

    mul-double v76, v76, v78

    move-wide/from16 v78, v11

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v64, v74

    .line 1147
    .local v64, "relyq":D
    move-wide/from16 v74, v27

    move-wide/from16 v76, v62

    add-double v74, v74, v76

    move-wide/from16 v66, v74

    .line 1148
    .local v66, "xq":D
    move-wide/from16 v74, v29

    move-wide/from16 v76, v64

    add-double v74, v74, v76

    move-wide/from16 v68, v74

    .line 1149
    .local v68, "yq":D
    move-wide/from16 v74, v15

    move-wide/from16 v76, v62

    add-double v74, v74, v76

    move-wide/from16 v70, v74

    .line 1150
    .local v70, "xc":D
    move-wide/from16 v74, v17

    move-wide/from16 v76, v64

    add-double v74, v74, v76

    move-wide/from16 v72, v74

    .line 1151
    .local v72, "yc":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v15

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v75, v0

    move-wide/from16 v76, v17

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v76, v0

    move-wide/from16 v77, v70

    move-wide/from16 v0, v77

    double-to-float v0, v0

    move/from16 v77, v0

    move-wide/from16 v78, v72

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move-wide/from16 v79, v66

    move-wide/from16 v0, v79

    double-to-float v0, v0

    move/from16 v79, v0

    move-wide/from16 v80, v68

    move-wide/from16 v0, v80

    double-to-float v0, v0

    move/from16 v80, v0

    const/16 v81, 0x0

    move/from16 v82, v56

    sget-object v83, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    invoke-virtual/range {v74 .. v83}, Lcom/sun/javafx/geom/Path2D;->appendOvalQuadrant(FFFFFFFFLcom/sun/javafx/geom/Path2D$CornerPrefix;)V

    .line 1155
    move-wide/from16 v74, v66

    move-wide/from16 v15, v74

    .line 1156
    move-wide/from16 v74, v68

    move-wide/from16 v17, v74

    .line 1157
    move-wide/from16 v74, v58

    move-wide/from16 v47, v74

    .line 1158
    move-wide/from16 v74, v60

    move-wide/from16 v49, v74

    .line 1159
    move/from16 v74, v55

    if-eqz v74, :cond_7

    .line 1160
    .end local v62    # "relxq":D
    .end local v64    # "relyq":D
    .end local v66    # "xq":D
    .end local v68    # "yq":D
    .end local v70    # "xc":D
    .end local v72    # "yc":D
    :goto_5
    goto/16 :goto_0

    .line 1092
    .end local v47    # "ux":D
    .end local v49    # "uy":D
    .end local v51    # "vx":D
    .end local v53    # "vy":D
    .end local v55    # "done":Z
    .end local v56    # "quadlen":F
    .end local v57    # "wasclose":Z
    .end local v58    # "xqp":D
    .end local v60    # "yqp":D
    :cond_a
    move-wide/from16 v74, v45

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v45, v74

    goto/16 :goto_3

    .line 1114
    .restart local v47    # "ux":D
    .restart local v49    # "uy":D
    .restart local v51    # "vx":D
    .restart local v53    # "vy":D
    .restart local v55    # "done":Z
    .restart local v56    # "quadlen":F
    .restart local v57    # "wasclose":Z
    .restart local v58    # "xqp":D
    .restart local v60    # "yqp":D
    :cond_b
    move-wide/from16 v74, v60

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v60, v74

    goto/16 :goto_4

    .line 1131
    :cond_c
    move/from16 v74, v57

    if-eqz v74, :cond_9

    .line 1143
    goto :goto_5
.end method

.method public arcToRel(FFFZZFF)V
    .locals 17

    .prologue
    .line 1188
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move/from16 v1, p1

    .local v1, "radiusx":F
    move/from16 v2, p2

    .local v2, "radiusy":F
    move/from16 v3, p3

    .local v3, "xAxisRotation":F
    move/from16 v4, p4

    .local v4, "largeArcFlag":Z
    move/from16 v5, p5

    .local v5, "sweepFlag":Z
    move/from16 v6, p6

    .local v6, "relx":F
    move/from16 v7, p7

    .local v7, "rely":F
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v15, v6

    add-float/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/geom/Path2D;->currY:F

    move/from16 v16, v7

    add-float v15, v15, v16

    invoke-virtual/range {v8 .. v15}, Lcom/sun/javafx/geom/Path2D;->arcTo(FFFZZFF)V

    .line 1191
    return-void
.end method

.method public checkAndGetIntRect(Lcom/sun/javafx/geom/Rectangle;F)Z
    .locals 22

    .prologue
    .line 271
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Path2D;
    move-object/from16 v3, p1

    .local v3, "retrect":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v4, p2

    .local v4, "tolerance":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 273
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget-byte v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget-byte v17, v17, v18

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 274
    const/16 v17, 0x0

    move/from16 v2, v17

    .line 335
    .end local v2    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return v2

    .line 276
    .restart local v2    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 279
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget-byte v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v17, 0x0

    move/from16 v2, v17

    goto :goto_0

    .line 280
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget-byte v17, v17, v18

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v17, 0x0

    move/from16 v2, v17

    goto :goto_0

    .line 281
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 282
    const/16 v17, 0x0

    move/from16 v2, v17

    goto :goto_0

    .line 284
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    move/from16 v2, v17

    goto :goto_0

    .line 285
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 286
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-byte v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 287
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-byte v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 289
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v5, v17

    .line 290
    .local v5, "x0":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v6, v17

    .line 291
    .local v6, "y0":I
    move-object/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_8

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 292
    :cond_8
    move-object/from16 v17, v2

    move/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 294
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v7, v17

    .line 295
    .local v7, "x1":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v8, v17

    .line 296
    .local v8, "y1":I
    move-object/from16 v17, v2

    move/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 297
    :cond_a
    move-object/from16 v17, v2

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 299
    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v9, v17

    .line 300
    .local v9, "x2":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v10, v17

    .line 301
    .local v10, "y2":I
    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_c

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 302
    :cond_c
    move-object/from16 v17, v2

    move/from16 v18, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_d

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 304
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x6

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v11, v17

    .line 305
    .local v11, "x3":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x7

    aget v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v12, v17

    .line 306
    .local v12, "y3":I
    move-object/from16 v17, v2

    move/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_e

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 307
    :cond_e
    move-object/from16 v17, v2

    move/from16 v18, v12

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_f

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 309
    :cond_f
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget-byte v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 310
    move-object/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 311
    :cond_10
    move-object/from16 v17, v2

    move/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x9

    aget v19, v19, v20

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/geom/Path2D;->close(IFF)Z

    move-result v17

    if-nez v17, :cond_11

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 314
    :cond_11
    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move/from16 v17, v9

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move/from16 v17, v6

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move/from16 v17, v8

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    :cond_12
    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move/from16 v17, v10

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move/from16 v17, v5

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 322
    :cond_13
    move/from16 v17, v9

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    move/from16 v17, v9

    move/from16 v13, v17

    .local v13, "x":I
    move/from16 v17, v5

    move/from16 v18, v9

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 324
    .local v15, "w":I
    :goto_1
    move/from16 v17, v10

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    move/from16 v17, v10

    move/from16 v14, v17

    .local v14, "y":I
    move/from16 v17, v6

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 327
    .local v16, "h":I
    :goto_2
    move/from16 v17, v15

    if-gez v17, :cond_16

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 323
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v15    # "w":I
    .end local v16    # "h":I
    :cond_14
    move/from16 v17, v5

    move/from16 v13, v17

    .restart local v13    # "x":I
    move/from16 v17, v9

    move/from16 v18, v5

    sub-int v17, v17, v18

    move/from16 v15, v17

    .restart local v15    # "w":I
    goto :goto_1

    .line 325
    :cond_15
    move/from16 v17, v6

    move/from16 v14, v17

    .restart local v14    # "y":I
    move/from16 v17, v10

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v16, v17

    .restart local v16    # "h":I
    goto :goto_2

    .line 328
    :cond_16
    move/from16 v17, v16

    if-gez v17, :cond_17

    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0

    .line 330
    :cond_17
    move-object/from16 v17, v3

    if-eqz v17, :cond_18

    .line 331
    move-object/from16 v17, v3

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v16

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    .line 333
    :cond_18
    const/16 v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 335
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v15    # "w":I
    .end local v16    # "h":I
    :cond_19
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public final closePath()V
    .locals 8

    .prologue
    .line 1549
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1550
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 1551
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    .line 1552
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->moveX:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/geom/Path2D;->currX:F

    iput v2, v1, Lcom/sun/javafx/geom/Path2D;->prevX:F

    .line 1553
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->moveY:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/geom/Path2D;->currY:F

    iput v2, v1, Lcom/sun/javafx/geom/Path2D;->prevY:F

    .line 1555
    :cond_1
    return-void
.end method

.method public final contains(FF)Z
    .locals 7

    .prologue
    .line 2046
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v4, v1

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    move v5, v2

    const/4 v6, 0x0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 2050
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 2051
    const/4 v4, 0x0

    move v0, v4

    .line 2061
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return v0

    .line 2053
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, -0x1

    :goto_1
    move v3, v4

    .line 2054
    .local v3, "mask":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->pointCrossings(FF)I

    move-result v4

    move v5, v3

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    .line 2053
    .end local v3    # "mask":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 2054
    .restart local v3    # "mask":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 2061
    .end local v3    # "mask":I
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public final contains(FFFF)Z
    .locals 13

    .prologue
    .line 2144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v7, v1

    move v8, v3

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2153
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2160
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return v0

    .line 2155
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 2156
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2158
    :cond_3
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    :goto_1
    move v5, v7

    .line 2159
    .local v5, "mask":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v3

    add-float/2addr v10, v11

    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Path2D;->rectCrossings(FFFF)I

    move-result v7

    move v6, v7

    .line 2160
    .local v6, "crossings":I
    move v7, v6

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_5

    move v7, v6

    move v8, v5

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_0

    .line 2158
    .end local v5    # "mask":I
    .end local v6    # "crossings":I
    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    .line 2160
    .restart local v5    # "mask":I
    .restart local v6    # "crossings":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public final contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 2070
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;->contains(FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/Path2D;
    .locals 5

    .prologue
    .line 1939
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    new-instance v1, Lcom/sun/javafx/geom/Path2D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->copy()Lcom/sun/javafx/geom/Path2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public final createTransformedShape(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;
    .locals 7

    .prologue
    .line 1934
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public final curveTo(FFFFFF)V
    .locals 14

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move/from16 v5, p5

    .local v5, "x3":F
    move/from16 v6, p6

    .local v6, "y3":F
    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 569
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v9, 0x3

    aput-byte v9, v7, v8

    .line 570
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move v9, v1

    aput v9, v7, v8

    .line 571
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move v9, v2

    aput v9, v7, v8

    .line 572
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move v10, v3

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v9, v7, v8

    .line 573
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move v10, v4

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v9, v7, v8

    .line 574
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move v10, v5

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v9, v7, v8

    .line 575
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move v10, v6

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v9, v7, v8

    .line 576
    return-void
.end method

.method public final curveToRel(FFFFFF)V
    .locals 14

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "relx1":F
    move/from16 v2, p2

    .local v2, "rely1":F
    move/from16 v3, p3

    .local v3, "relx2":F
    move/from16 v4, p4

    .local v4, "rely2":F
    move/from16 v5, p5

    .local v5, "relx3":F
    move/from16 v6, p6

    .local v6, "rely3":F
    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 605
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v9, 0x3

    aput-byte v9, v7, v8

    .line 606
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v10, v1

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 607
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v10, v2

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 608
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v11, v3

    add-float/2addr v10, v11

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v9, v7, v8

    .line 609
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v11, v4

    add-float/2addr v10, v11

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v9, v7, v8

    .line 610
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v11, v5

    add-float/2addr v10, v11

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v9, v7, v8

    .line 611
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v0

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v11, v6

    add-float/2addr v10, v11

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v9, v7, v8

    .line 612
    return-void
.end method

.method public final curveToSmooth(FFFF)V
    .locals 12

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x2":F
    move v2, p2

    .local v2, "y2":F
    move v3, p3

    .local v3, "x3":F
    move/from16 v4, p4

    .local v4, "y3":F
    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 641
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    .line 642
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->currX:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->prevX:F

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 643
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->currY:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->prevY:F

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 644
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v7, v5, v6

    .line 645
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v2

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v7, v5, v6

    .line 646
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v3

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v7, v5, v6

    .line 647
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v4

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v7, v5, v6

    .line 648
    return-void
.end method

.method public final curveToSmoothRel(FFFF)V
    .locals 12

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "relx2":F
    move v2, p2

    .local v2, "rely2":F
    move v3, p3

    .local v3, "relx3":F
    move/from16 v4, p4

    .local v4, "rely3":F
    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 679
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    .line 680
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->currX:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->prevX:F

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 681
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->currY:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->prevY:F

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 682
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v9, v1

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v7, v5, v6

    .line 683
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v7, v5, v6

    .line 684
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v9, v3

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v7, v5, v6

    .line 685
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v9, v4

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v7, v5, v6

    .line 686
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1953
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 1954
    const/4 v4, 0x1

    move v0, v4

    .line 1975
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return v0

    .line 1956
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/geom/Path2D;

    if-eqz v4, :cond_5

    .line 1957
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/geom/Path2D;

    move-object v2, v4

    .line 1958
    .local v2, "p":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-ne v4, v5, :cond_5

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    if-ne v4, v5, :cond_5

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    if-ne v4, v5, :cond_5

    .line 1962
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-ge v4, v5, :cond_2

    .line 1963
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move v5, v3

    aget-byte v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move v6, v3

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_1

    .line 1964
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1962
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1967
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    if-ge v4, v5, :cond_4

    .line 1968
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move v5, v3

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move v6, v3

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 1969
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1967
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1972
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1975
    .end local v2    # "p":Lcom/sun/javafx/geom/Path2D;
    .end local v3    # "i":I
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public final getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 15

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move v5, v8

    .line 1436
    .local v5, "i":I
    move v8, v5

    if-lez v8, :cond_4

    .line 1437
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    add-int/lit8 v5, v5, -0x1

    move v9, v5

    aget v8, v8, v9

    move v14, v8

    move v8, v14

    move v9, v14

    move v4, v9

    .local v4, "y2":F
    move v2, v8

    .line 1438
    .local v2, "y1":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    add-int/lit8 v5, v5, -0x1

    move v9, v5

    aget v8, v8, v9

    move v14, v8

    move v8, v14

    move v9, v14

    move v3, v9

    .local v3, "x2":F
    move v1, v8

    .line 1439
    .local v1, "x1":F
    :goto_0
    move v8, v5

    if-lez v8, :cond_5

    .line 1440
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    add-int/lit8 v5, v5, -0x1

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 1441
    .local v6, "y":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    add-int/lit8 v5, v5, -0x1

    move v9, v5

    aget v8, v8, v9

    move v7, v8

    .line 1442
    .local v7, "x":F
    move v8, v7

    move v9, v1

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    move v8, v7

    move v1, v8

    .line 1443
    :cond_0
    move v8, v6

    move v9, v2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    move v8, v6

    move v2, v8

    .line 1444
    :cond_1
    move v8, v7

    move v9, v3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    move v8, v7

    move v3, v8

    .line 1445
    :cond_2
    move v8, v6

    move v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move v8, v6

    move v4, v8

    .line 1446
    :cond_3
    goto :goto_0

    .line 1448
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    .end local v3    # "x2":F
    .end local v4    # "y2":F
    .end local v6    # "y":F
    .end local v7    # "x":F
    :cond_4
    const/4 v8, 0x0

    move v14, v8

    move v8, v14

    move v9, v14

    move v4, v9

    .restart local v4    # "y2":F
    move v14, v8

    move v8, v14

    move v9, v14

    move v3, v9

    .restart local v3    # "x2":F
    move v14, v8

    move v8, v14

    move v9, v14

    move v2, v9

    .restart local v2    # "y1":F
    move v1, v8

    .line 1450
    .restart local v1    # "x1":F
    :cond_5
    new-instance v8, Lcom/sun/javafx/geom/RectBounds;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public final getCommandsNoClone()[B
    .locals 2

    .prologue
    .line 1459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public final getCurrentPoint()Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 1886
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1887
    const/4 v1, 0x0

    move-object v0, v1

    .line 1889
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_0
    new-instance v1, Lcom/sun/javafx/geom/Point2D;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->currY:F

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getCurrentX()F
    .locals 5

    .prologue
    .line 1893
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1894
    new-instance v1, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "no current point in empty path"

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1896
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0
.end method

.method public final getCurrentY()F
    .locals 5

    .prologue
    .line 1900
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1901
    new-instance v1, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "no current point in empty path"

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1903
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0
.end method

.method public final getFloatCoordsNoClone()[F
    .locals 2

    .prologue
    .line 1462
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public final getNumCommands()I
    .locals 2

    .prologue
    .line 1456
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 1475
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1476
    new-instance v2, Lcom/sun/javafx/geom/Path2D$CopyIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/Path2D$CopyIterator;-><init>(Lcom/sun/javafx/geom/Path2D;)V

    move-object v0, v2

    .line 1478
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_0
    new-instance v2, Lcom/sun/javafx/geom/Path2D$TxIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D$TxIterator;-><init>(Lcom/sun/javafx/geom/Path2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 2267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/FlatteningPathIterator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method getPoint(I)Lcom/sun/javafx/geom/Point2D;
    .locals 9

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "coordindex":I
    new-instance v2, Lcom/sun/javafx/geom/Point2D;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move v5, v1

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return-object v0
.end method

.method public final getWindingRule()I
    .locals 2

    .prologue
    .line 1855
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1980
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    const/4 v3, 0x7

    move v1, v3

    .line 1981
    .local v1, "hash":I
    const/16 v3, 0xb

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    add-int/2addr v3, v4

    move v1, v3

    .line 1982
    const/16 v3, 0xb

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    add-int/2addr v3, v4

    move v1, v3

    .line 1983
    const/16 v3, 0xb

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    add-int/2addr v3, v4

    move v1, v3

    .line 1984
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-ge v3, v4, :cond_0

    .line 1985
    const/16 v3, 0xb

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move v5, v2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    move v1, v3

    .line 1984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1987
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    if-ge v3, v4, :cond_1

    .line 1988
    const/16 v3, 0xb

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move v5, v2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 1987
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1990
    :cond_1
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0
.end method

.method public final intersects(FFFF)Z
    .locals 13

    .prologue
    .line 2235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v7, v1

    move v8, v3

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2244
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2251
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    return v0

    .line 2246
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 2247
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2249
    :cond_3
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v7, -0x1

    :goto_1
    move v5, v7

    .line 2250
    .local v5, "mask":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v3

    add-float/2addr v10, v11

    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Path2D;->rectCrossings(FFFF)I

    move-result v7

    move v6, v7

    .line 2251
    .local v6, "crossings":I
    move v7, v6

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_4

    move v7, v6

    move v8, v5

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    :cond_4
    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_0

    .line 2249
    .end local v5    # "mask":I
    .end local v6    # "crossings":I
    :cond_5
    const/4 v7, 0x2

    goto :goto_1

    .line 2251
    .restart local v5    # "mask":I
    .restart local v6    # "crossings":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public final lineTo(FF)V
    .locals 11

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 416
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    .line 417
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move v7, v1

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v5, v3, v4

    .line 418
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move v7, v2

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v5, v3, v4

    .line 419
    return-void
.end method

.method public final lineToRel(FF)V
    .locals 11

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "relx":F
    move v2, p2

    .local v2, "rely":F
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 432
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    .line 433
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v8, v1

    add-float/2addr v7, v8

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v5, v3, v4

    .line 434
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v8, v2

    add-float/2addr v7, v8

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v5, v3, v4

    .line 435
    return-void
.end method

.method public final moveTo(FF)V
    .locals 12

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_0

    .line 377
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevX:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveX:F

    aput v5, v3, v4

    .line 378
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move v8, v2

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevY:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveY:F

    aput v5, v3, v4

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 381
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 382
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevX:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveX:F

    aput v5, v3, v4

    .line 383
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move v8, v2

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevY:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveY:F

    aput v5, v3, v4

    goto :goto_0
.end method

.method public final moveToRel(FF)V
    .locals 12

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "relx":F
    move v2, p2

    .local v2, "rely":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_0

    .line 397
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v9, v1

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevX:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveX:F

    aput v5, v3, v4

    .line 398
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevY:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveY:F

    aput v5, v3, v4

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 401
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 402
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v9, v1

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevX:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveX:F

    aput v5, v3, v4

    .line 403
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->prevY:F

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->moveY:F

    aput v5, v3, v4

    goto/16 :goto_0
.end method

.method needRoom(ZI)V
    .locals 10

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "needMove":Z
    move v2, p2

    .local v2, "newCoords":I
    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-nez v5, :cond_0

    .line 340
    new-instance v5, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "missing initial moveto in path definition"

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    array-length v5, v5

    move v3, v5

    .line 344
    .local v3, "size":I
    move v5, v3

    if-nez v5, :cond_5

    .line 345
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    .line 354
    :cond_1
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    array-length v5, v5

    move v3, v5

    .line 355
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move v6, v2

    add-int/2addr v5, v6

    move v6, v3

    if-le v5, v6, :cond_4

    .line 356
    move v5, v3

    move v4, v5

    .line 357
    .local v4, "grow":I
    move v5, v4

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_2

    .line 358
    const/16 v5, 0x3e8

    move v4, v5

    .line 360
    :cond_2
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 361
    move v5, v2

    move v4, v5

    .line 364
    :cond_3
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/geom/Path2D;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 366
    .end local v4    # "grow":I
    :cond_4
    return-void

    .line 346
    :cond_5
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move v6, v3

    if-lt v5, v6, :cond_1

    .line 347
    move v5, v3

    move v4, v5

    .line 348
    .restart local v4    # "grow":I
    move v5, v4

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_6

    .line 349
    const/16 v5, 0x1f4

    move v4, v5

    .line 352
    :cond_6
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/geom/Path2D;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    goto :goto_0
.end method

.method public final ovalQuadrantTo(FFFFFF)V
    .locals 18

    .prologue
    .line 754
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move/from16 v1, p1

    .local v1, "cx":F
    move/from16 v2, p2

    .local v2, "cy":F
    move/from16 v3, p3

    .local v3, "ex":F
    move/from16 v4, p4

    .local v4, "ey":F
    move/from16 v5, p5

    .local v5, "tfrom":F
    move/from16 v6, p6

    .local v6, "tto":F
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 755
    new-instance v7, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const-string v9, "missing initial moveto in path definition"

    invoke-direct {v8, v9}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 758
    :cond_0
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    sget-object v16, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    invoke-virtual/range {v7 .. v16}, Lcom/sun/javafx/geom/Path2D;->appendOvalQuadrant(FFFFFFFFLcom/sun/javafx/geom/Path2D$CornerPrefix;)V

    .line 760
    return-void
.end method

.method public pathDone()V
    .locals 0

    .prologue
    .line 1558
    return-void
.end method

.method pointCrossings(FF)I
    .locals 26

    .prologue
    .line 1195
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move/from16 v1, p1

    .local v1, "px":F
    move/from16 v2, p2

    .local v2, "py":F
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v9, v13

    .line 1196
    .local v9, "coords":[F
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move/from16 v25, v13

    move/from16 v13, v25

    move/from16 v14, v25

    move v3, v14

    .local v3, "movx":F
    move v5, v13

    .line 1197
    .local v5, "curx":F
    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    move/from16 v25, v13

    move/from16 v13, v25

    move/from16 v14, v25

    move v4, v14

    .local v4, "movy":F
    move v6, v13

    .line 1198
    .local v6, "cury":F
    const/4 v13, 0x0

    move v10, v13

    .line 1199
    .local v10, "crossings":I
    const/4 v13, 0x2

    move v11, v13

    .line 1200
    .local v11, "ci":I
    const/4 v13, 0x1

    move v12, v13

    .local v12, "i":I
    :goto_0
    move v13, v12

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-ge v13, v14, :cond_2

    .line 1201
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move v14, v12

    aget-byte v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 1200
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1203
    :pswitch_0
    move v13, v6

    move v14, v4

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_0

    .line 1204
    move v13, v10

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v3

    move/from16 v19, v4

    .line 1205
    invoke-static/range {v14 .. v19}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 1209
    :cond_0
    move-object v13, v9

    move v14, v11

    add-int/lit8 v11, v11, 0x1

    aget v13, v13, v14

    move/from16 v25, v13

    move/from16 v13, v25

    move/from16 v14, v25

    move v5, v14

    move v3, v13

    .line 1210
    move-object v13, v9

    move v14, v11

    add-int/lit8 v11, v11, 0x1

    aget v13, v13, v14

    move/from16 v25, v13

    move/from16 v13, v25

    move/from16 v14, v25

    move v6, v14

    move v4, v13

    .line 1211
    goto :goto_1

    .line 1213
    :pswitch_1
    move v13, v10

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    aget v18, v18, v19

    move/from16 v25, v18

    move/from16 v18, v25

    move/from16 v19, v25

    move/from16 v7, v19

    .local v7, "endx":F
    move-object/from16 v19, v9

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    aget v19, v19, v20

    move/from16 v25, v19

    move/from16 v19, v25

    move/from16 v20, v25

    move/from16 v8, v20

    .line 1214
    .local v8, "endy":F
    invoke-static/range {v14 .. v19}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 1218
    move v13, v7

    move v5, v13

    .line 1219
    move v13, v8

    move v6, v13

    .line 1220
    goto :goto_1

    .line 1222
    .end local v7    # "endx":F
    .end local v8    # "endy":F
    :pswitch_2
    move v13, v10

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v9

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v9

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    aget v20, v20, v21

    move/from16 v25, v20

    move/from16 v20, v25

    move/from16 v21, v25

    move/from16 v7, v21

    .restart local v7    # "endx":F
    move-object/from16 v21, v9

    move/from16 v22, v11

    add-int/lit8 v11, v11, 0x1

    aget v21, v21, v22

    move/from16 v25, v21

    move/from16 v21, v25

    move/from16 v22, v25

    move/from16 v8, v22

    .restart local v8    # "endy":F
    const/16 v22, 0x0

    .line 1223
    invoke-static/range {v14 .. v22}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForQuad(FFFFFFFFI)I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 1230
    move v13, v7

    move v5, v13

    .line 1231
    move v13, v8

    move v6, v13

    .line 1232
    goto/16 :goto_1

    .line 1234
    .end local v7    # "endx":F
    .end local v8    # "endy":F
    :pswitch_3
    move v13, v10

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v9

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v9

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    aget v20, v20, v21

    move-object/from16 v21, v9

    move/from16 v22, v11

    add-int/lit8 v11, v11, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v9

    move/from16 v23, v11

    add-int/lit8 v11, v11, 0x1

    aget v22, v22, v23

    move/from16 v25, v22

    move/from16 v22, v25

    move/from16 v23, v25

    move/from16 v7, v23

    .restart local v7    # "endx":F
    move-object/from16 v23, v9

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    aget v23, v23, v24

    move/from16 v25, v23

    move/from16 v23, v25

    move/from16 v24, v25

    move/from16 v8, v24

    .restart local v8    # "endy":F
    const/16 v24, 0x0

    .line 1235
    invoke-static/range {v14 .. v24}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForCubic(FFFFFFFFFFI)I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 1244
    move v13, v7

    move v5, v13

    .line 1245
    move v13, v8

    move v6, v13

    .line 1246
    goto/16 :goto_1

    .line 1248
    .end local v7    # "endx":F
    .end local v8    # "endy":F
    :pswitch_4
    move v13, v6

    move v14, v4

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    .line 1249
    move v13, v10

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v3

    move/from16 v19, v4

    .line 1250
    invoke-static/range {v14 .. v19}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 1254
    :cond_1
    move v13, v3

    move v5, v13

    .line 1255
    move v13, v4

    move v6, v13

    goto/16 :goto_1

    .line 1259
    :cond_2
    move v13, v6

    move v14, v4

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_3

    .line 1260
    move v13, v10

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v3

    move/from16 v19, v4

    .line 1261
    invoke-static/range {v14 .. v19}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 1265
    :cond_3
    move v13, v10

    move v0, v13

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D;
    return v0

    .line 1201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final quadTo(FFFF)V
    .locals 12

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 453
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    .line 454
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v7, v5, v6

    .line 455
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v2

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v7, v5, v6

    .line 456
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v3

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v7, v5, v6

    .line 457
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move v8, v4

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v7, v5, v6

    .line 458
    return-void
.end method

.method public final quadToRel(FFFF)V
    .locals 12

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "relx1":F
    move v2, p2

    .local v2, "rely1":F
    move v3, p3

    .local v3, "relx2":F
    move/from16 v4, p4

    .local v4, "rely2":F
    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 483
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    .line 484
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v9, v1

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v7, v5, v6

    .line 485
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v7, v5, v6

    .line 486
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v9, v3

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v7, v5, v6

    .line 487
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v9, v4

    add-float/2addr v8, v9

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v7, v5, v6

    .line 488
    return-void
.end method

.method public final quadToSmooth(FF)V
    .locals 10

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "x2":F
    move v2, p2

    .local v2, "y2":F
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 512
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    .line 513
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->prevX:F

    sub-float/2addr v6, v7

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v5, v3, v4

    .line 514
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->prevY:F

    sub-float/2addr v6, v7

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v5, v3, v4

    .line 515
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move v6, v1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v5, v3, v4

    .line 516
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move v6, v2

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v5, v3, v4

    .line 517
    return-void
.end method

.method public final quadToSmoothRel(FF)V
    .locals 10

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "relx2":F
    move v2, p2

    .local v2, "rely2":F
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 542
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    .line 543
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->prevX:F

    sub-float/2addr v6, v7

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v5, v3, v4

    .line 544
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->prevY:F

    sub-float/2addr v6, v7

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v5, v3, v4

    .line 545
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    move v7, v1

    add-float/2addr v6, v7

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v5, v3, v4

    .line 546
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    move v7, v2

    add-float/2addr v6, v7

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v5, v3, v4

    .line 547
    return-void
.end method

.method rectCrossings(FFFF)I
    .locals 32

    .prologue
    .line 1271
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Path2D;
    move/from16 v3, p1

    .local v3, "rxmin":F
    move/from16 v4, p2

    .local v4, "rymin":F
    move/from16 v5, p3

    .local v5, "rxmax":F
    move/from16 v6, p4

    .local v6, "rymax":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    .line 1273
    .local v7, "coords":[F
    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v31, v17

    move/from16 v17, v31

    move/from16 v18, v31

    move/from16 v10, v18

    .local v10, "movx":F
    move/from16 v8, v17

    .line 1274
    .local v8, "curx":F
    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v31, v17

    move/from16 v17, v31

    move/from16 v18, v31

    move/from16 v11, v18

    .local v11, "movy":F
    move/from16 v9, v17

    .line 1275
    .local v9, "cury":F
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 1276
    .local v14, "crossings":I
    const/16 v17, 0x2

    move/from16 v15, v17

    .line 1277
    .local v15, "ci":I
    const/16 v17, 0x1

    move/from16 v16, v17

    .line 1278
    .local v16, "i":I
    :goto_0
    move/from16 v17, v14

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1281
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object/from16 v17, v0

    move/from16 v18, v16

    aget-byte v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1279
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1283
    :pswitch_0
    move/from16 v17, v8

    move/from16 v18, v10

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v17, v9

    move/from16 v18, v11

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1

    .line 1284
    :cond_0
    move/from16 v17, v14

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    .line 1285
    invoke-static/range {v17 .. v25}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v17

    move/from16 v14, v17

    .line 1293
    :cond_1
    move-object/from16 v17, v7

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    aget v17, v17, v18

    move/from16 v31, v17

    move/from16 v17, v31

    move/from16 v18, v31

    move/from16 v8, v18

    move/from16 v10, v17

    .line 1294
    move-object/from16 v17, v7

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    aget v17, v17, v18

    move/from16 v31, v17

    move/from16 v17, v31

    move/from16 v18, v31

    move/from16 v9, v18

    move/from16 v11, v17

    .line 1295
    goto :goto_1

    .line 1297
    :pswitch_1
    move/from16 v17, v14

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v7

    move/from16 v25, v15

    add-int/lit8 v15, v15, 0x1

    aget v24, v24, v25

    move/from16 v31, v24

    move/from16 v24, v31

    move/from16 v25, v31

    move/from16 v12, v25

    .local v12, "endx":F
    move-object/from16 v25, v7

    move/from16 v26, v15

    add-int/lit8 v15, v15, 0x1

    aget v25, v25, v26

    move/from16 v31, v25

    move/from16 v25, v31

    move/from16 v26, v31

    move/from16 v13, v26

    .line 1298
    .local v13, "endy":F
    invoke-static/range {v17 .. v25}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v17

    move/from16 v14, v17

    .line 1304
    move/from16 v17, v12

    move/from16 v8, v17

    .line 1305
    move/from16 v17, v13

    move/from16 v9, v17

    .line 1306
    goto/16 :goto_1

    .line 1308
    .end local v12    # "endx":F
    .end local v13    # "endy":F
    :pswitch_2
    move/from16 v17, v14

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v7

    move/from16 v25, v15

    add-int/lit8 v15, v15, 0x1

    aget v24, v24, v25

    move-object/from16 v25, v7

    move/from16 v26, v15

    add-int/lit8 v15, v15, 0x1

    aget v25, v25, v26

    move-object/from16 v26, v7

    move/from16 v27, v15

    add-int/lit8 v15, v15, 0x1

    aget v26, v26, v27

    move/from16 v31, v26

    move/from16 v26, v31

    move/from16 v27, v31

    move/from16 v12, v27

    .restart local v12    # "endx":F
    move-object/from16 v27, v7

    move/from16 v28, v15

    add-int/lit8 v15, v15, 0x1

    aget v27, v27, v28

    move/from16 v31, v27

    move/from16 v27, v31

    move/from16 v28, v31

    move/from16 v13, v28

    .restart local v13    # "endy":F
    const/16 v28, 0x0

    .line 1309
    invoke-static/range {v17 .. v28}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForQuad(IFFFFFFFFFFI)I

    move-result v17

    move/from16 v14, v17

    .line 1318
    move/from16 v17, v12

    move/from16 v8, v17

    .line 1319
    move/from16 v17, v13

    move/from16 v9, v17

    .line 1320
    goto/16 :goto_1

    .line 1322
    .end local v12    # "endx":F
    .end local v13    # "endy":F
    :pswitch_3
    move/from16 v17, v14

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v7

    move/from16 v25, v15

    add-int/lit8 v15, v15, 0x1

    aget v24, v24, v25

    move-object/from16 v25, v7

    move/from16 v26, v15

    add-int/lit8 v15, v15, 0x1

    aget v25, v25, v26

    move-object/from16 v26, v7

    move/from16 v27, v15

    add-int/lit8 v15, v15, 0x1

    aget v26, v26, v27

    move-object/from16 v27, v7

    move/from16 v28, v15

    add-int/lit8 v15, v15, 0x1

    aget v27, v27, v28

    move-object/from16 v28, v7

    move/from16 v29, v15

    add-int/lit8 v15, v15, 0x1

    aget v28, v28, v29

    move/from16 v31, v28

    move/from16 v28, v31

    move/from16 v29, v31

    move/from16 v12, v29

    .restart local v12    # "endx":F
    move-object/from16 v29, v7

    move/from16 v30, v15

    add-int/lit8 v15, v15, 0x1

    aget v29, v29, v30

    move/from16 v31, v29

    move/from16 v29, v31

    move/from16 v30, v31

    move/from16 v13, v30

    .restart local v13    # "endy":F
    const/16 v30, 0x0

    .line 1323
    invoke-static/range {v17 .. v30}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForCubic(IFFFFFFFFFFFFI)I

    move-result v17

    move/from16 v14, v17

    .line 1334
    move/from16 v17, v12

    move/from16 v8, v17

    .line 1335
    move/from16 v17, v13

    move/from16 v9, v17

    .line 1336
    goto/16 :goto_1

    .line 1338
    .end local v12    # "endx":F
    .end local v13    # "endy":F
    :pswitch_4
    move/from16 v17, v8

    move/from16 v18, v10

    cmpl-float v17, v17, v18

    if-nez v17, :cond_2

    move/from16 v17, v9

    move/from16 v18, v11

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 1339
    :cond_2
    move/from16 v17, v14

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    .line 1340
    invoke-static/range {v17 .. v25}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v17

    move/from16 v14, v17

    .line 1346
    :cond_3
    move/from16 v17, v10

    move/from16 v8, v17

    .line 1347
    move/from16 v17, v11

    move/from16 v9, v17

    goto/16 :goto_1

    .line 1353
    :cond_4
    move/from16 v17, v14

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v8

    move/from16 v18, v10

    cmpl-float v17, v17, v18

    if-nez v17, :cond_5

    move/from16 v17, v9

    move/from16 v18, v11

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_6

    .line 1356
    :cond_5
    move/from16 v17, v14

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    .line 1357
    invoke-static/range {v17 .. v25}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v17

    move/from16 v14, v17

    .line 1365
    :cond_6
    move/from16 v17, v14

    move/from16 v2, v17

    .end local v2    # "this":Lcom/sun/javafx/geom/Path2D;
    return v2

    .line 1281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final reset()V
    .locals 11

    .prologue
    .line 1912
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v9, v2

    move v10, v3

    move v2, v10

    move-object v3, v9

    move v4, v10

    iput v4, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    iput v2, v1, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    .line 1913
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lcom/sun/javafx/geom/Path2D;->currY:F

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/Path2D;->currX:F

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    iput v6, v5, Lcom/sun/javafx/geom/Path2D;->prevY:F

    move-object v9, v3

    move v10, v4

    move v3, v10

    move-object v4, v9

    move v5, v10

    iput v5, v4, Lcom/sun/javafx/geom/Path2D;->prevX:F

    move-object v9, v2

    move v10, v3

    move v2, v10

    move-object v3, v9

    move v4, v10

    iput v4, v3, Lcom/sun/javafx/geom/Path2D;->moveY:F

    iput v2, v1, Lcom/sun/javafx/geom/Path2D;->moveX:F

    .line 1914
    return-void
.end method

.method public setTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 7

    .prologue
    .line 2308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "otherPath":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    .line 2309
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    .line 2310
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 2311
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    .line 2313
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2314
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 2315
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    .line 2317
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2318
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    .line 2319
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->moveX:F

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->moveX:F

    .line 2320
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->moveY:F

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->moveY:F

    .line 2321
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->prevX:F

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->prevX:F

    .line 2322
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->prevY:F

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->prevY:F

    .line 2323
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->currX:F

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->currX:F

    .line 2324
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->currY:F

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->currY:F

    .line 2325
    return-void
.end method

.method public final setWindingRule(I)V
    .locals 6

    .prologue
    .line 1870
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move v1, p1

    .local v1, "rule":I
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1871
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "winding rule must be WIND_EVEN_ODD or WIND_NON_ZERO"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1875
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->windingRule:I

    .line 1876
    return-void
.end method

.method public final transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 9

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    if-nez v2, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1414
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;->needRoom(ZI)V

    .line 1415
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->moveX:F

    aput v4, v2, v3

    .line 1416
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->moveY:F

    aput v4, v2, v3

    .line 1417
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->prevX:F

    aput v4, v2, v3

    .line 1418
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->prevY:F

    aput v4, v2, v3

    .line 1419
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v4, 0x4

    add-int/lit8 v3, v3, 0x4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->currX:F

    aput v4, v2, v3

    .line 1420
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v4, 0x5

    add-int/lit8 v3, v3, 0x5

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->currY:F

    aput v4, v2, v3

    .line 1421
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual/range {v2 .. v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 1422
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x0

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->moveX:F

    .line 1423
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->moveY:F

    .line 1424
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->prevX:F

    .line 1425
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->prevY:F

    .line 1426
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->currX:F

    .line 1427
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D;->numCoords:I

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D;->currY:F

    .line 1428
    goto/16 :goto_0
.end method
