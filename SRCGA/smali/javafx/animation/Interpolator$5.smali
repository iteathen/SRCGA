.class final Ljavafx/animation/Interpolator$5;
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


# static fields
.field private static final S1:D = -2.7777777777777777

.field private static final S2:D = 5.555555555555555

.field private static final S3:D = -1.7777777777777777

.field private static final S4:D = 1.1111111111111112


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$5;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .locals 11

    .prologue
    .line 171
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator$5;
    move-wide v2, p1

    .local v2, "t":D
    move-wide v4, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const-wide v4, -0x3ff9c71c71c71c72L    # -2.7777777777777777

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x401638e38e38e38eL    # 5.555555555555555

    move-wide v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, -0x40038e38e38e38e4L    # -1.7777777777777777

    add-double/2addr v4, v6

    :goto_0
    invoke-static {v4, v5}, Ljavafx/animation/Interpolator;->access$000(D)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/animation/Interpolator$5;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/Interpolator$5;
    :cond_0
    const-wide v4, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    move-wide v6, v2

    mul-double/2addr v4, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$5;
    const-string v1, "Interpolator.EASE_OUT"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Interpolator$5;
    return-object v0
.end method
