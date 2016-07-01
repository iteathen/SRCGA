.class public Lcom/sun/scenario/effect/impl/state/AccessHelper;
.super Ljava/lang/Object;
.source "AccessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;
    }
.end annotation


# static fields
.field private static theStateAccessor:Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/AccessHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    move-object v0, v1

    .line 53
    .end local v0    # "effect":Lcom/sun/scenario/effect/Effect;
    :goto_0
    return-object v0

    .restart local v0    # "effect":Lcom/sun/scenario/effect/Effect;
    :cond_0
    sget-object v1, Lcom/sun/scenario/effect/impl/state/AccessHelper;->theStateAccessor:Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;->getState(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static setStateAccessor(Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "accessor":Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;
    sget-object v1, Lcom/sun/scenario/effect/impl/state/AccessHelper;->theStateAccessor:Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/InternalError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "EffectAccessor already initialized"

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/scenario/effect/impl/state/AccessHelper;->theStateAccessor:Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;

    .line 47
    return-void
.end method
