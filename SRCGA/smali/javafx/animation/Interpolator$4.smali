.class final Ljavafx/animation/Interpolator$4;
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
.field private static final S1:D = 2.7777777777777777

.field private static final S3:D = 1.1111111111111112

.field private static final S4:D = 0.1111111111111111


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$4;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .locals 9

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator$4;
    move-wide v2, p1

    .local v2, "t":D
    move-wide v4, v2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide v4, 0x400638e38e38e38eL    # 2.7777777777777777

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    :goto_0
    invoke-static {v4, v5}, Ljavafx/animation/Interpolator;->access$000(D)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/animation/Interpolator$4;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/Interpolator$4;
    :cond_0
    const-wide v4, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    move-wide v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    sub-double/2addr v4, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$4;
    const-string v1, "Interpolator.EASE_IN"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Interpolator$4;
    return-object v0
.end method
