.class public final Lcom/sun/scenario/effect/Color4f;
.super Ljava/lang/Object;
.source "Color4f.java"


# static fields
.field public static final BLACK:Lcom/sun/scenario/effect/Color4f;

.field public static final WHITE:Lcom/sun/scenario/effect/Color4f;


# instance fields
.field private final a:F

.field private final b:F

.field private final g:F

.field private final r:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 34
    new-instance v0, Lcom/sun/scenario/effect/Color4f;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/scenario/effect/Color4f;-><init>(FFFF)V

    sput-object v0, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    .line 35
    new-instance v0, Lcom/sun/scenario/effect/Color4f;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/scenario/effect/Color4f;-><init>(FFFF)V

    sput-object v0, Lcom/sun/scenario/effect/Color4f;->WHITE:Lcom/sun/scenario/effect/Color4f;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Color4f;
    move v1, p1

    .local v1, "r":F
    move v2, p2

    .local v2, "g":F
    move v3, p3

    .local v3, "b":F
    move v4, p4

    .local v4, "a":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/scenario/effect/Color4f;->r:F

    .line 44
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/scenario/effect/Color4f;->g:F

    .line 45
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/scenario/effect/Color4f;->b:F

    .line 46
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/scenario/effect/Color4f;->a:F

    .line 47
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Color4f;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Color4f;->a:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Color4f;
    return v0
.end method

.method public getBlue()F
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Color4f;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Color4f;->b:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Color4f;
    return v0
.end method

.method public getGreen()F
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Color4f;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Color4f;->g:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Color4f;
    return v0
.end method

.method public getPremultipliedRGBComponents()[F
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Color4f;
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object v1, v2

    .line 73
    .local v1, "comps":[F
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/Color4f;->r:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/scenario/effect/Color4f;->a:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 74
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/Color4f;->g:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/scenario/effect/Color4f;->a:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 75
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/Color4f;->b:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/scenario/effect/Color4f;->a:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 76
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/Color4f;->a:F

    aput v4, v2, v3

    .line 77
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Color4f;
    return-object v0
.end method

.method public getRed()F
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Color4f;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Color4f;->r:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Color4f;
    return v0
.end method
