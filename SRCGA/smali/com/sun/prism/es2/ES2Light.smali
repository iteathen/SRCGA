.class Lcom/sun/prism/es2/ES2Light;
.super Ljava/lang/Object;
.source "ES2Light.java"


# instance fields
.field b:F

.field g:F

.field r:F

.field w:F

.field x:F

.field y:F

.field z:F


# direct methods
.method constructor <init>(FFFFFFF)V
    .locals 10

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Light;
    move v1, p1

    .local v1, "ix":F
    move v2, p2

    .local v2, "iy":F
    move v3, p3

    .local v3, "iz":F
    move v4, p4

    .local v4, "ir":F
    move v5, p5

    .local v5, "ig":F
    move/from16 v6, p6

    .local v6, "ib":F
    move/from16 v7, p7

    .local v7, "iw":F
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->z:F

    .line 34
    move-object v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->w:F

    .line 37
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->x:F

    .line 38
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->y:F

    .line 39
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->z:F

    .line 40
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->r:F

    .line 41
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->g:F

    .line 42
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->b:F

    .line 43
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/sun/prism/es2/ES2Light;->w:F

    .line 44
    return-void
.end method
