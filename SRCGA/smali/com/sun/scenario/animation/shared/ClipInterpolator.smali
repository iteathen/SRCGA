.class public abstract Lcom/sun/scenario/animation/shared/ClipInterpolator;
.super Ljava/lang/Object;
.source "ClipInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/ClipInterpolator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "keyFrameTicks":[J
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->getRealKeyFrameCount([Ljavafx/animation/KeyFrame;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v2, v0

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;-><init>(Ljavafx/animation/KeyFrame;J)V

    :goto_0
    move-object v0, v2

    .end local v0    # "keyFrames":[Ljavafx/animation/KeyFrame;
    return-object v0

    .restart local v0    # "keyFrames":[Ljavafx/animation/KeyFrame;
    :cond_0
    new-instance v2, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;-><init>(Ljavafx/animation/KeyFrame;Ljavafx/animation/KeyFrame;J)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;-><init>([Ljavafx/animation/KeyFrame;[J)V

    goto :goto_0
.end method

.method static getRealKeyFrameCount([Ljavafx/animation/KeyFrame;)I
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v2, v0

    array-length v2, v2

    move v1, v2

    .line 49
    .local v1, "length":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 50
    :goto_0
    move v0, v2

    .end local v0    # "keyFrames":[Ljavafx/animation/KeyFrame;
    return v0

    .line 49
    .restart local v0    # "keyFrames":[Ljavafx/animation/KeyFrame;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v2

    sget-object v3, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 50
    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method abstract interpolate(J)V
.end method

.method abstract setKeyFrames([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;
.end method

.method abstract validate(Z)V
.end method
