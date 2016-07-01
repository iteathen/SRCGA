.class public abstract Lcom/sun/scenario/effect/light/Light;
.super Ljava/lang/Object;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/light/Light$Type;
    }
.end annotation


# instance fields
.field private color:Lcom/sun/scenario/effect/Color4f;

.field private final type:Lcom/sun/scenario/effect/light/Light$Type;


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/light/Light$Type;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/Light;
    move-object v1, p1

    .local v1, "type":Lcom/sun/scenario/effect/light/Light$Type;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/scenario/effect/Color4f;->WHITE:Lcom/sun/scenario/effect/Color4f;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/light/Light;-><init>(Lcom/sun/scenario/effect/light/Light$Type;Lcom/sun/scenario/effect/Color4f;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/effect/light/Light$Type;Lcom/sun/scenario/effect/Color4f;)V
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/Light;
    move-object v1, p1

    .local v1, "type":Lcom/sun/scenario/effect/light/Light$Type;
    move-object v2, p2

    .local v2, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v3, v1

    if-nez v3, :cond_0

    .line 69
    new-instance v3, Ljava/lang/InternalError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Light type must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/light/Light;->type:Lcom/sun/scenario/effect/light/Light$Type;

    .line 72
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/Light;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/Light;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/light/Light;->color:Lcom/sun/scenario/effect/Color4f;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/Light;
    return-object v0
.end method

.method public abstract getNormalizedLightPosition()[F
.end method

.method public getType()Lcom/sun/scenario/effect/light/Light$Type;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/Light;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/light/Light;->type:Lcom/sun/scenario/effect/light/Light$Type;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/Light;
    return-object v0
.end method

.method public setColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/Light;
    move-object v1, p1

    .local v1, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Color must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/light/Light;->color:Lcom/sun/scenario/effect/Color4f;

    .line 111
    return-void
.end method
