.class final Lcom/sun/openpisces/Curve$1;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/openpisces/Curve;->breakPtsAtTs([FI[FI)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field curCurveOff:Ljava/lang/Integer;

.field final i0:Ljava/lang/Integer;

.field final itype:Ljava/lang/Integer;

.field nextCurveIdx:I

.field prevT:F

.field final synthetic val$Ts:[F

.field final synthetic val$numTs:I

.field final synthetic val$pts:[F

.field final synthetic val$type:I


# direct methods
.method constructor <init>(II[F[F)V
    .locals 7

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve$1;
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/openpisces/Curve$1;->val$type:I

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/openpisces/Curve$1;->val$numTs:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/openpisces/Curve$1;->val$Ts:[F

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/openpisces/Curve$1;->val$pts:[F

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 257
    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/openpisces/Curve$1;->i0:Ljava/lang/Integer;

    .line 258
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Curve$1;->val$type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/openpisces/Curve$1;->itype:Ljava/lang/Integer;

    .line 259
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/openpisces/Curve$1;->nextCurveIdx:I

    .line 260
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Curve$1;->i0:Ljava/lang/Integer;

    iput-object v6, v5, Lcom/sun/openpisces/Curve$1;->curCurveOff:Ljava/lang/Integer;

    .line 261
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/openpisces/Curve$1;->prevT:F

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve$1;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Curve$1;->nextCurveIdx:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Curve$1;->val$numTs:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Curve$1;
    return v0

    .restart local v0    # "this":Lcom/sun/openpisces/Curve$1;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Integer;
    .locals 13

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve$1;
    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve$1;->nextCurveIdx:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve$1;->val$numTs:I

    if-ge v4, v5, :cond_0

    .line 270
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Curve$1;->val$Ts:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve$1;->nextCurveIdx:I

    aget v4, v4, v5

    move v2, v4

    .line 271
    .local v2, "curT":F
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve$1;->prevT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Curve$1;->prevT:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    move v3, v4

    .line 272
    .local v3, "splitT":F
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Curve$1;->val$pts:[F

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Curve$1;->curCurveOff:Ljava/lang/Integer;

    .line 273
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Curve$1;->val$pts:[F

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/openpisces/Curve$1;->val$pts:[F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve$1;->val$type:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve$1;->val$type:I

    .line 272
    invoke-static/range {v4 .. v11}, Lcom/sun/openpisces/Helpers;->subdivideAt(F[FI[FI[FII)V

    .line 276
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/openpisces/Curve$1;->prevT:F

    .line 277
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Curve$1;->i0:Ljava/lang/Integer;

    move-object v1, v4

    .line 278
    .local v1, "ret":Ljava/lang/Integer;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Curve$1;->itype:Ljava/lang/Integer;

    iput-object v5, v4, Lcom/sun/openpisces/Curve$1;->curCurveOff:Ljava/lang/Integer;

    .line 279
    .line 282
    .end local v2    # "curT":F
    .end local v3    # "splitT":F
    :goto_0
    move-object v4, v0

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    iget v5, v5, Lcom/sun/openpisces/Curve$1;->nextCurveIdx:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/openpisces/Curve$1;->nextCurveIdx:I

    .line 283
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/openpisces/Curve$1;
    return-object v0

    .line 280
    .end local v1    # "ret":Ljava/lang/Integer;
    .restart local v0    # "this":Lcom/sun/openpisces/Curve$1;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Curve$1;->curCurveOff:Ljava/lang/Integer;

    move-object v1, v4

    .restart local v1    # "ret":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/openpisces/Curve$1;->next()Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Curve$1;
    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method
