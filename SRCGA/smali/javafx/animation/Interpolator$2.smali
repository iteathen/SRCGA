.class final Ljavafx/animation/Interpolator$2;
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
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$2;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .locals 7

    .prologue
    .line 78
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator$2;
    move-wide v2, p1

    .local v2, "t":D
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/animation/Interpolator$2;
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator$2;
    const-string v1, "Interpolator.LINEAR"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Interpolator$2;
    return-object v0
.end method
