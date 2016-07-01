.class final Ljavafx/animation/Interpolator$3;
.super Ljavafx/animation/Interpolator;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$3;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .locals 11

    .prologue
    .line 115
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator$3;
    move-wide v2, p1

    .local v2, "t":D
    move-wide v4, v2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/high16 v4, 0x4009000000000000L    # 3.125

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    :goto_0
    invoke-static {v4, v5}, Ljavafx/animation/Interpolator;->access$000(D)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/animation/Interpolator$3;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/Interpolator$3;
    :cond_0
    move-wide v4, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const-wide/high16 v4, -0x3ff7000000000000L    # -3.125

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4019000000000000L    # 6.25

    move-wide v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4001000000000000L    # 2.125

    sub-double/2addr v4, v6

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    move-wide v6, v2

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fc0000000000000L    # 0.125

    sub-double/2addr v4, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$3;
    const-string v1, "Interpolator.EASE_BOTH"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Interpolator$3;
    return-object v0
.end method
