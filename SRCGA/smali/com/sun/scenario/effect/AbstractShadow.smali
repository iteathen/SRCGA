.class public abstract Lcom/sun/scenario/effect/AbstractShadow;
.super Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
.source "AbstractShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/AbstractShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 45
    return-void
.end method


# virtual methods
.method public abstract getColor()Lcom/sun/scenario/effect/Color4f;
.end method

.method public abstract getGaussianHeight()F
.end method

.method public abstract getGaussianRadius()F
.end method

.method public abstract getGaussianWidth()F
.end method

.method public abstract getInput()Lcom/sun/scenario/effect/Effect;
.end method

.method public abstract getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
.end method

.method public abstract getSpread()F
.end method

.method public abstract implFor(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)Lcom/sun/scenario/effect/AbstractShadow;
.end method

.method public abstract setColor(Lcom/sun/scenario/effect/Color4f;)V
.end method

.method public abstract setGaussianHeight(F)V
.end method

.method public abstract setGaussianRadius(F)V
.end method

.method public abstract setGaussianWidth(F)V
.end method

.method public abstract setInput(Lcom/sun/scenario/effect/Effect;)V
.end method

.method public abstract setSpread(F)V
.end method
