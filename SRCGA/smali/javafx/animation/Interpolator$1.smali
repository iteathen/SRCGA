.class final Ljavafx/animation/Interpolator$1;
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
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .locals 9

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator$1;
    move-wide v2, p1

    .local v2, "t":D
    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/animation/Interpolator$1;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/Interpolator$1;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$1;
    const-string v1, "Interpolator.DISCRETE"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Interpolator$1;
    return-object v0
.end method
